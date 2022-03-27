@extends('layouts.admin')

@section('content')

    <h2 class="text-center bg-info">Edit post</h2>
    <hr>

    <div class="col-sm-4">
        <img src="{{ $post->photo->image }}" alt="" class="img-responsive img-rounded">
    </div>
    <div class="col-sm-8">
        {!! Form::model($post, ['method'=>'PATCH', 'route'=>['posts.update', $post->id], 'files'=>true]) !!}
        <div class="form-group">
            {!! Form::label('title', 'Title: ') !!}
            {!! Form::text('title', null, ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('category_id', "Select Category:") !!}
            {!! Form::select('category_id', $categories, null, ['class'=>'form-control']) !!}
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
            {!! Form::submit('Update Post', ['class'=>'btn btn-primary']) !!}
        </div>
        {!! Form::close() !!}
    </div>

    <!-- Form error -->
    @include('includes.form_error')

@stop
