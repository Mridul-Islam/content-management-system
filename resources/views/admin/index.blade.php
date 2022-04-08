@extends('layouts.admin')

@section('content')

    @if(!Auth::user()->role_id)
        <h1>Role Not set yet</h1>

    @else
        <h1>{{ Auth::user()->role->name }}</h1>
    @endif


@stop
