class WebPage < ActiveRecord::Base
  URI_REGEX = /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
  validates_presence_of :uri, :message => 'is required'
  validates :uri, :format => {:with => URI_REGEX}

  def uri=(uri_string)
    set_uri_attribute(:uri, uri_string)
  end

  def icon=(icon_uri_string)
    set_uri_attribute(:icon, icon_uri_string)
    invalid_uri = (URI_REGEX =~ icon) == nil
    write_attribute :icon, nil if invalid_uri
  end



protected

  def set_uri_attribute(attr_sym, uri_string)
    unless uri_string.blank?
      unless uri_string.split(':')[0] == 'http' || uri_string.split(':')[0] == 'https'
          uri_string = "http://" + uri_string
      end
    end
    write_attribute attr_sym, uri_string
  end

end
