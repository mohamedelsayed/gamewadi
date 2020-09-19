//prodcust_type
function prodcust_type() {
    var prodcust_type = parseInt($('.prodcust-type').val());
    if (prodcust_type === 0) {
        simpleProductFields();
    } else if (prodcust_type === 1) {
        variableProductFields();
    } else if (prodcust_type === 2) {
        externalLinkProductFields();
    } else if (prodcust_type === 3) {
        digitalProductFields();
    }
}
function simpleProductFields() {
    $('.external_link').hide();
    $('.products_url').removeClass('field-validate');
    $('.special-link').show();
    $('#simple-btn').show();
    $('#variable-btn').hide();
    $('#external-btn').hide();
    $('#tax-class').show();
    $('.flash-sale-link').show();
    showProductWeight();
}
function variableProductFields() {
    $('.external_link').hide();
    $('.products_url').removeClass('field-validate');
    $('.special-link').show();
    $('#simple-btn').hide();
    $('#variable-btn').show();
    $('#external-btn').hide();
    $('#tax-class').show();
    $('.flash-sale-link').show();
    showProductWeight();
}
function externalLinkProductFields() {
    $('.external_link').show();
    $('.products_url').addClass('field-validate');
    $('.external_link_special').val('no');
    $('.special-link').hide();
    $('#isSpecial').val('no');
    $('.flash-sale-link').hide();
    $('#isFlash').val('no');
    $('#variable-btn').hide();
    $('#simple-btn').hide();
    $('#external-btn').show();
    $('#tax-class').hide();
    showSpecial();
    showFlash();
    showAvailtime();
    showProductWeight();
}
function digitalProductFields() {
    $('.external_link').hide();
    $('.products_url').removeClass('field-validate');
    $('.special-link').show();
    $('#simple-btn').show();
    $('#variable-btn').hide();
    $('#external-btn').hide();
    $('#tax-class').show();
    $('.flash-sale-link').show();
    hideProductWeight();

}
//showSpecial
function showSpecial() {
    if ($('#isSpecial').val() == 'yes') {
        $(".special-container").show();
        $(".special-container input#expiry-date").addClass("field-validate");
        $(".special-container input#special-price").addClass("number-validate");
    } else {
        $(".special-container").hide();
        $(".special-container input#expiry-date").removeClass("field-validate");
        $(".special-container input#special-price").removeClass("number-validate");
    }
}
//showFlash
function showFlash() {
    if ($('#isFlash').val() == 'yes') {
        $(".flash-container").show();
        $(".flash-container #flash_sale_products_price").addClass("field-validate");
        $(".flash-container #flash_start_date").addClass("field-validate");
        //$(".flash-container #flash_start_time").addClass("field-validate");
        $(".flash-container #flash_expires_date").addClass("field-validate");
        //$(".flash-container #flash_end_time").addClass("field-validate");
    } else {
        $(".flash-container").hide();
        $(".flash-container #flash_sale_products_price").removeClass("field-validate");
        $(".flash-container #flash_start_date").removeClass("field-validate");
        //$(".flash-container #flash_start_time").removeClass("field-validate");
        $(".flash-container #flash_expires_date").removeClass("field-validate");
        //$(".flash-container #flash_end_time").removeClass("field-validate");
    }
}
function showAvailtime() {
    if ($('#showAvailTime').val() == 'yes') {
        $(".available-container").show();
        $(".available-container .availtime").addClass("field-validate");
    } else {
        $(".available-container").hide();
        $(".available-container .availtime").removeClass("field-validate");
    }
}
function showProductWeight() {
    $('#products_weight').addClass('number-validate');
    $('#products_weight_div').show();
}
function hideProductWeight() {
    $('#products_weight').removeClass('number-validate');
    $('#products_weight_div').hide();
}