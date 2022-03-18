@extends('layouts.admin')

@section('content')

    <h2 class="text-center bg-info">Create new user</h2>
    <hr>

    <!-- Form Error -->
    @include('includes.form_error')


    {!! Form::open(['method'=>'post', 'route'=>'users.store', 'files'=>true]) !!}
    <div class="col-md-6">
        <hr>
        <div class="form-group">
            {!! Form::label('name', 'Name: ') !!}
            {!! Form::text('name', null, ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('email', 'Email: ') !!}
            {!! Form::email('email', null, ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('role_id', 'Select Role: ') !!}
            {!! Form::select('role_id', [''=>'Choose Option..' ] + $roles , null, ['class'=>'form-control']) !!}
        </div>
        <hr>
    </div>
    <div class="col-md-6">
        <hr>
        <div class="form-group">
            {!! Form::label('is_active', 'Select Status: ') !!}
            {!! Form::select('is_active', [''=>'Choose Option..', 1=>'Active', 0=>'In-Active'], null, ['class'=>'form-control']) !!}
        </div>
        <div>
            {!! Form::label('photo)_id', 'Image: ') !!}
            {!! Form::file('photo_id', ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('password', 'Password: ') !!}
            {!! Form::password('password', ['class'=>'form-control']) !!}
        </div>
        <hr><hr>
        <div class="form-group">
            {!! Form::submit('Create User', ['class'=>'btn btn-primary']) !!}
        </div>
    </div>
    {!! Form::close() !!}


@stop
