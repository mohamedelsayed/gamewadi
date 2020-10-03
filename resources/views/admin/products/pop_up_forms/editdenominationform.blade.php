<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title" id="editManufacturerLabel">{{ trans('labels.EditDenomination') }}</h4>
</div>
{!! Form::open(array('url' =>'admin/updateDenomination', 'name'=>'editDenominationFrom', 'id'=>'editDenominationFrom', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
{!! Form::hidden('products_attributes_id',  $result['data']['products_attributes_id'], array('class'=>'form-control', 'id'=>'products_attributes_id')) !!}
{!! Form::hidden('products_id',  $result['data']['products_id'], array('class'=>'form-control', 'id'=>'products_id')) !!}
{!! Form::hidden('price_prefix',  '+', array('class'=>'form-control', 'id'=>'price_prefix')) !!}
<div class="modal-body">
    <div class="form-group">
        <label for="name" class="col-sm-2 col-md-4 control-label">                                                        {{ trans('labels.Country') }}        </label>
        <div class="col-sm-10 col-md-8">
            <select class="form-control field-validate" name="country_id">
                <option value="" class="field-validate">{{ trans('labels.ChooseCountry') }}</option>
                @foreach($result['countries'] as $country)
                <option
                    @if($result['products_attributes'][0]->country_id == $country->countries_id)
                    selected
                    @endif
                    value="{{ $country->countries_id }}">{{ $country->countries_name }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="name" class="col-sm-2 col-md-4 control-label">{{ trans('labels.Denomination') }}</label>
        <div class="col-sm-10 col-md-8">
            {!! Form::text('denomination',  $result['products_attributes'][0]->denomination, array('class'=>'form-control', 'id'=>'denomination')) !!}
        </div>
    </div>
    <div class="form-group">
        <label for="name" class="col-sm-2 col-md-4 control-label">{{ trans('labels.Price') }}</label>
        <div class="col-sm-10 col-md-8">
            {!! Form::text('options_values_price',  $result['products_attributes'][0]->options_values_price, array('class'=>'form-control', 'id'=>'options_values_price')) !!}
            <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.NumericValueError') }}</span>
        </div>
    </div>
    <div class="alert alert-danger editError" style="display: none; margin-bottom: 0;" role="alert"><i class="icon fa fa-ban"></i>{{ trans('labels.OpitonExistText') }} </div>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Close') }}</button>
    <button type="button" class="btn btn-primary" id="updateDenomination">{{ trans('labels.UpdateOption') }}</button>
</div>
{!! Form::close() !!}