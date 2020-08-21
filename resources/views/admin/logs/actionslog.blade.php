@extends('admin.layout')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> {{ trans('labels.Actions Log') }} <small>{{ trans('labels.Actions Log') }}...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
            <li class="active">{{ trans('labels.Actions Log') }}</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Info boxes -->
        <!-- /.row -->
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">{{ trans('labels.Actions Log') }} </h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>{{ trans('labels.User') }}</th>
                                            <th>{{ trans('labels.IP') }}</th>
                                            <th>{{ trans('labels.Controller') }}</th>
                                            <th>{{ trans('labels.Action') }}</th>
                                            <th>{{ trans('labels.item_id') }}</th>
                                            <th>{{ trans('labels.URL') }}</th>
                                            <!--<th>{{ trans('labels.Method') }}</th>-->
                                            <!--<th>{{ trans('labels.View Log') }}</th>-->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if(count($result['logs']) > 0)
                                        @foreach ($result['logs'] as  $key=>$log)
                                        <tr>
                                            <td>
                                                @if($log->user)
                                                {{ $log->user->first_name }} {{ $log->user->last_name }}
                                                @endif
                                            </td>
                                            <td>
                                                {{ $log->ip }}
                                            </td>
                                            <td>
                                                {{ $log->controller }}
                                            </td>
                                            <td>
                                                {{ $log->action }}
                                            </td>
                                            <td>
                                                {{ $log->item_id }}
                                            </td>
                                            <td>
                                                <a href="{{ $log->url }}" target="_blank">
                                                    {{ 'view URL'}}
                                                </a>
                                            </td>
<!--                                            <td>
                                                {{ $log->method }}
                                            </td>-->
<!--                                            <td>
                                                <a data-toggle="tooltip" data-placement="bottom" title="{{ trans('labels.View') }}" href="stockin?products_id={{ $log->products_id }}" class="badge bg-light-blue"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                            </td>-->
                                        </tr>
                                        @endforeach
                                        @else
                                        <tr>
                                            <td colspan="4">
                                                {{ trans('labels.NoRecordFound') }}
                                            </td>
                                        </tr>
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-xs-12" style="background: #eee;">
                            @php
                            if($result['logs']->total()>0){
                            $fromrecord = ($result['logs']->currentpage()-1)*$result['logs']->perpage()+1;
                            }else{
                            $fromrecord = 0;
                            }
                            if($result['logs']->total() < $result['logs']->currentpage()*$result['logs']->perpage()){
                            $torecord = $result['logs']->total();
                            }else{
                            $torecord = $result['logs']->currentpage()*$result['logs']->perpage();
                            }

                            @endphp
                            <div class="col-xs-12 col-md-6" style="padding:30px 15px; border-radius:5px;">
                                <div>Showing {{$fromrecord}} to {{$torecord}}
                                    of  {{$result['logs']->total()}} entries
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 text-right">
                                {{$result['logs']->links()}}
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- Main row -->
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
@endsection