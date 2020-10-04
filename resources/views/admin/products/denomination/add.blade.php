@extends('admin.layout')
@section('content')
@php
$products_attributes = $result['products_attributes'];
@endphp
<div class="content-wrapper">
    <section class="content-header">
        <h1> {{ trans('labels.AddDenomination') }} <small>{{ trans('labels.AddDenomination') }}...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
            <li><a href="{{ URL::to('admin/products/display') }}">{{ trans('labels.ListingAllProducts') }}</a></li>
            <li class="active">{{ trans('labels.AddDenomination') }}</li>
        </ol>
    </section>
    <section class="content-header" style="margin-bottom: 5px;">
        <a class="btn btn-info" style="width: 20%;" href="{{url('admin/products/edit')}}/{{ $result['products_id'] }}">{{ trans('labels.Back to product') }}</a>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">{{ trans('labels.ListingDenominations') }} </h3>
                        <div class="box-tools pull-right">
                            <button onclick="$('.addDefaultError').hide();" type="button" class="btn btn-block btn-primary" data-toggle="modal" data-target="#adddenominationmodal">
                                {{ trans('labels.AddDenomination') }}
                            </button>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12"></div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>{{ trans('labels.ID') }}</th>
                                            <th>{{ trans('labels.Country') }}</th>
                                            <th>{{ trans('labels.Denomination') }}</th>
                                            <th>{{ trans('labels.Price') }}</th>
                                            <th>{{ trans('labels.Action') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody class="contentDenomination"></tbody>
                                </table>
                                <div class="modal fade" id="adddenominationmodal" tabindex="-1" role="dialog" aria-labelledby="addAttributeModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="addAttributeModalLabel">{{ trans('labels.AddDenomination') }}</h4>
                                            </div>
                                            {!! Form::open(array('url' =>'admin/products/attach/denomination/add', 'name'=>'adddenominationfrom', 'id'=>'adddenominationfrom', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')) !!}
                                            {!! Form::hidden('products_id',  $result['data']['products_id'], array('class'=>'form-control', 'id'=>'products_id')) !!}
                                            {!! Form::hidden('subcategory_id',  $result['subcategory_id'], array('class'=>'form-control', 'id'=>'subcategory_id')) !!}
                                            {!! Form::hidden('price_prefix',  '+', array('class'=>'form-control', 'id'=>'price_prefix')) !!}
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="country_id" class="col-sm-2 col-md-4 control-label">{{ trans('labels.Country') }}</label>
                                                    <div class="col-sm-10 col-md-8">
                                                        <select class="form-control field-validate" name="country_id">
                                                            <option value="" class="field-validate">{{ trans('labels.ChooseCountry') }}</option>
                                                            @foreach($result['countries'] as $country)
                                                            <option value="{{ $country->countries_id }}">{{ $country->countries_name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="name" class="col-sm-2 col-md-4 control-label">{{ trans('labels.Denomination') }}</label>
                                                    <div class="col-sm-10 col-md-8">
                                                        {!! Form::text('denomination',  '', array('class'=>'form-control', 'id'=>'denomination')) !!}
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="name" class="col-xs-12 col-sm-2 col-md-4 control-label">{{ trans('labels.Price') }}</label>
                                                    <div class="col-sm-10 col-md-8">
                                                        {!! Form::text('options_values_price',  '0', array('class'=>'form-control', 'id'=>'options_values_price')) !!}
                                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.NumericValueError') }}</span>
                                                    </div>
                                                </div>
                                                <div class="alert alert-danger addError" style="display: none; margin-bottom: 0;" role="alert"><i class="icon fa fa-ban"></i><span></span> </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Close') }}</button>
                                                <button type="button" class="btn btn-primary" id="addDenomination">{{ trans('labels.AddDenomination') }}</button>
                                            </div>
                                            {!! Form::close() !!}
                                        </div>
                                    </div>
                                </div>
                                <div class="modal fade" id="editdenominationmodal" tabindex="-1" role="dialog" aria-labelledby="editdenominationmodalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content editDenominationContent"></div>
                                    </div>
                                </div>
                                <div class="modal fade" id="deletedenominationmodal" tabindex="-1" role="dialog" aria-labelledby="deletedenominationmodalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content deleteDenominationEmbed"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="{!! asset('admin/plugins/jQuery/jQuery-2.2.0.min.js') !!}"></script>
<script type="text/javascript">
                                $(function () {
                                drawDenominations(@json($products_attributes));
                                });
</script>
@endsection