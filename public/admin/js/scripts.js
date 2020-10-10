$(document).ready(function () {
    $(document).on('click', '#addDenomination', function (e) {
        $("#loader").show();
        var formData = $('#adddenominationfrom').serialize();
        $.ajax({
            url: '/admin/products/attach/denomination/add',
            type: "POST",
            data: formData,
            success: function (res) {
                $("#loader").hide();
                $('.addError').html('');
                if (res.status === 'success') {
                    $('.addError').hide();
                    $('#adddenominationmodal').modal('hide');
                    drawDenominations(res.products_attributes);
                } else {
                    $('.addError').show();
                    $('.addError').html(res.msg);
                }
            }
        });
    });
    $(document).on('click', '.editDenomination', function () {
        var products_id = $(this).attr('products_id');
        var products_attributes_id = $(this).attr('products_attributes_id');
        $.ajax({
            url: "/admin/products/attach/denomination/edit",
            type: "POST",
            data: '&products_id=' + products_id + '&products_attributes_id=' + products_attributes_id,
            success: function (data) {
                $('.editDenominationContent').html(data);
                $('#editdenominationmodal').modal('show');
            },
            dataType: 'html'
        });
    });
    $(document).on('click', '#updateDenomination', function (e) {
        $("#loader").show();
        var formData = $('#editDenominationFrom').serialize();
        $.ajax({
            url: "/admin/products/attach/denomination/update",
            type: "POST",
            data: formData,
            success: function (res) {
                $("#loader").hide();
                $('.editError').html('');
                if (res.status === 'success') {
                    $('.addError').hide();
                    $('#editdenominationmodal').modal('hide');
                    drawDenominations(res.products_attributes);
                } else {
                    $('.editError').show();
                    $('.editError').html(res.msg);
                }
            }
        });
    });
    $(document).on('click', '.deleteDenomination', function () {
        var products_id = $(this).attr('products_id');
        var products_attributes_id = $(this).attr('products_attributes_id');
        $.ajax({
            url: "/admin/products/attach/denomination/showdeletemodal",
            type: "POST",
            data: '&products_id=' + products_id + '&products_attributes_id=' + products_attributes_id,
            success: function (data) {
                $('.deleteDenominationEmbed').html(data);
                $('#deletedenominationmodal').modal('show');
            },
            dataType: 'html'
        });
    });
    $(document).on('click', '#deleteDenomination', function () {
        $("#loader").show();
        var formData = $('#deletedenominationform').serialize();
        $.ajax({
            url: "/admin/products/attach/denomination/delete",
            type: "POST",
            data: formData,
            success: function (res) {
                $("#loader").hide();
                if (res.length !== '') {
                    $('#deletedenominationmodal').modal('hide');
                    drawDenominations(res);
                } else {
                    $('#deletedenominationmodal').modal('hide');
                }
            }
        });
    });
});
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
    showProductPrice();
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
    showProductPrice();
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
    showProductPrice();
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
    hideProductPrice();
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
function showProductPrice() {
    $('#products_price').addClass('number-validate');
    $('#products_price_div').show();
}
function hideProductPrice() {
    $('#products_price').removeClass('number-validate');
    $('#products_price_div').hide();
}
function drawDenominations(products_attributes) {
    var i;
    var showData = [];
    if (products_attributes.length > 0) {
        for (i = 0; i < products_attributes.length; ++i) {
            var j = i + 1;
            let item = products_attributes[i];
            showData[i] = "<tr><td>" + j + "</td><td>" + item.countries_name + "</td>";
            showData[i] += "<td>" + item.denomination + "</td>";
            showData[i] += "<td>";
            //showData[i]+=          item.price_prefix+" ";
            showData[i] += item.options_values_price + "</td>";
            showData[i] += "<td><a class='badge bg-light-blue editDenomination' products_attributes_id = '" + item.products_attributes_id + "' products_id = '" + item.products_id + "'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></a> ";
            showData[i] += "<a class='badge bg-red deleteDenomination' products_attributes_id = '" + item.products_attributes_id + "' products_id = '" + item.products_id + "' ><i class='fa fa-trash' aria-hidden='true'></i></a></td></tr>";
        }
    } else {
        showData = "<tr><td colspan='5'><strong>No Record Found!</strong></td></tr>";
    }
    $(".contentDenomination").html(showData);
}