$(document).ready(function () {
    if ((typeof isDigital !== "undefined") && isDigital == 1) {
        var country_id = $('select[name=country_id] option:eq(1)').val();
//        console.log(country_id);
        showDenominationsByCountryId(country_id);
    }
    $('body').on('click', '.qty-decrease', function () {
        var $input = $(this).parent().find('input');
        var count = parseInt($input.val()) - 1;
        count = count < 0 ? 0 : count;
        $input.val(count);
        $input.change();
        showHideAddToCartDigital();
        return false;
    });
    $('body').on('click', '.qty-increase', function () {
        var $input = $(this).parent().find('input');
        $input.val(parseInt($input.val()) + 1);
        $input.change();
        showHideAddToCartDigital();
        return false;
    });
});
function draw_denomination_table_web(selectObject) {
    var country_id = selectObject.value;
//    console.log(country_id);
    showDenominationsByCountryId(country_id);
    $('#countryId').val(country_id);
    $('#selectCountryFirst').hide();
//    $('#addToCartDigital').removeClass('d-none');
}
function showDenominationsByCountryId(country_id) {
    var html = '';
    $('#countryId').val(country_id);
    var denominationsIn = denominations[country_id];
    if (denominationsIn && denominationsIn.length > 0) {
        for (i = 0; i < denominationsIn.length; i++) {
            let item = denominationsIn[i];
//            console.log(item);
            html += '<tr>'
                    + '<td>' + item.denomination + '</td>'
                    + '<td>' + item.options_values_price
//    +'<br><small style="color:#A7578F; text-decoration:line-through;"> $ 11.000</small>'
                    + '</td>'
                    + '<td>'
                    + '<div class="qty-control">'
                    + '<i class="qty-decrease">-</i>'
                    + '<input class="quantityDigitalImput" type="number" name="quantity[]" placeholder="0" value="0" >'
                    + '<i class="qty-increase">+</i><i class="max-qty" data-max-qty="100"></i>'
                    + '</div>'
                    + '<input type="hidden" name="productsAttributesId[]" value="' + item.products_attributes_id + '">'
                    + '</td>'
                    + '</tr>';
        }
    }
    $('.denomination_tbody').html(html);
    showHideAddToCartDigital();
}
function showHideAddToCartDigital() {
    var sum = 0;
    $('.quantityDigitalImput').each(function () {
        sum += parseInt($(this).val());
    });
//    console.log(sum);
    if (sum > 0) {
        $('#addToCartDigital').removeClass('d-none');
    } else {
        $('#addToCartDigital').addClass('d-none');
    }
}
function addToCartDigital() {
    var formData = jQuery("#addToCartDigitalform").serialize();
    jQuery.ajax({
        url: "/addToCart",
        headers: {'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')},
        type: "POST",
        data: formData,
        success: function (res) {
            console.log(res);
            if (res['status'] == 'exceed') {
                notificationWishlist("@lang('website.Ops! Product is available in stock But Not Active For Sale. Please contact to the admin')");
            } else {
                jQuery('.head-cart-content').html(res);
                jQuery(parent).addClass('active');

                jQuery.ajax({

                    url: '{{ URL::to("/addToCartFixed")}}',
                    headers: {'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')},

                    type: "POST",
                    data: '&products_id=' + '',
                    success: function (res) {
                        jQuery('.head-cart-content-fixed').html(res);
                    },
                });
                notificationWishlist("@lang('website.Product Added Successfully Thanks.Continue Shopping')");
                //alert("Congrates!", "Product Added Successfully Thanks.Continue Shopping", "success",{button: false});

            }

        }
    });
}