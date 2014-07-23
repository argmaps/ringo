RB.$.fn.windowTopToElBottom = function() {
    return this.offset().top + this.outerHeight(true);
};

RB.$.fn.windowLeftToElRight = function() {
    return this.offset().left + this.outerWidth(true);
};
