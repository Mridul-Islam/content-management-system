@extends('layouts.admin')

@section('content')

    <h2 class="text-center bg-info">Create new posts</h2>
    <hr>

    {!! Form::open(['method'=>'post', 'route'=>'posts.store', 'files'=>true]) !!}
        <div class="form-group">
            {!! Form::label('title', 'Title: ') !!}
            {!! Form::text('title', null, ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('category_id', "Select Category:") !!}
            {!! Form::select('category_id', [''=>'Choose Option... '] + $categories, null, ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('photo_id', "Upload Image:") !!}
            {!! Form::file('photo_id', ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('body', "Body:") !!}
            {!! Form::textarea('body', null, ['class'=>'form-control', 'rows'=>5]) !!}
        </div>
        <div class="form-group">
            {!! Form::submit('Create Post', ['class'=>'btn btn-primary']) !!}
        </div>
    {!! Form::close() !!}

    <!-- Form error -->
    @include('includes.form_error')

@stop
