@extends('layouts.admin')

@section('content')

    <h2 class="text-center bg-info">Edit user</h2>
    <hr>


    {!! Form::model($user, ['method'=>'PATCH', 'route'=>['users.update', $user->id], 'files'=>true]) !!}
        <div class="col-md-3">
            <img src="{{ $user->photo_id? $user->photo->image: '/images/user-logo.png' }}" class="img-responsive img-rounded" />
            <br><br><br>
            <!-- Form Error -->
            @include('includes.form_error')

        </div>
        <div class="col-md-9">
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
                {!! Form::select('role_id', $roles , null, ['class'=>'form-control']) !!}
            </div>
            <div class="form-group">
                {!! Form::label('is_active', 'Select Status: ') !!}
                {!! Form::select('is_active',  [1=>'Active', 0=>'In-Active'], null, ['class'=>'form-control']) !!}
            </div>
            <div>
                {!! Form::label('photo)_id', 'Image: ') !!}
                {!! Form::file('photo_id', ['class'=>'form-control']) !!}
            </div>
            <div class="form-group">
                {!! Form::label('password', 'Password: ') !!}
                {!! Form::password('password', ['class'=>'form-control']) !!}
            </div>
            <div class="form-group">
                {!! Form::submit('Update User', ['class'=>'btn btn-primary']) !!}
            </div>
        </div>
    {!! Form::close() !!}


@stop
