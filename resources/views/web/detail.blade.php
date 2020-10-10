@extends('web.layout')
@section('content')
@php //$r =   'web.details.detail' . $final_theme['detail']; @endphp
@php $r =   'web.details.detail1'; @endphp
@include($r)
@include('web.common.scripts.addToCompare')
@endsection
