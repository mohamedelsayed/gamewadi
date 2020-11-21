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
        return false;
    });
    $('body').on('click', '.qty-increase', function () {
        var $input = $(this).parent().find('input');
        $input.val(parseInt($input.val()) + 1);
        $input.change();
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
    var denominationsIn = denominations[country_id];
    if (denominationsIn && denominationsIn.length > 0) {
        for (i = 0; i < denominationsIn.length; i++) {
            let item = denominationsIn[i];
            html += '<tr>'
                    + '<td>' + item.denomination + '</td>'
                    + '<td>' + item.options_values_price
//    +'<br><small style="color:#A7578F; text-decoration:line-through;"> $ 11.000</small>'
                    + '</td>'
                    + '<td><div class="qty-control">'
                    + '<i class="qty-decrease">-</i>'
                    + '<input type="text" onkeypress="validate(event)" name="quantity[]" placeholder="0" value="0" data-qty="" data-price="10.000">'
                    + '<i class="qty-increase">+</i><i class="max-qty" data-max-qty="100"></i>'
                    + '</div><input type="hidden" name="price[]" value="10.000">'
                    + '<input type="hidden" name="counter[]" value="100">'
                    + '<input type="hidden" name="denoId[]" value="71">'
                    + '<input type="hidden" name="type[]" value="s">'
                    + '<input type="hidden" name="kry[]" value="54c8606694bd05ce8db4e73ce06954d0">'
                    + '</td>'
                    + '</tr>';
        }
    }
    $('.denomination_tbody').html(html);
}