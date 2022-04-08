@extends('layouts.admin')


@section('content')

    <h2 class="text-center bg-info">All Photos</h2>
    <hr>

    @if(Session::has('deleted_photo'))
        <p class="text-center bg-success">{{ session('deleted_photo') }}</p>
    @endif

    @if(count($photos) > 0)
        <table class="table table-responsive table-hover table-bordered table-striped">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Image</th>
                    <th>Created At</th>
                    <th>Owner type</th>
                    <th>Owner Id</th>
                </tr>
            </thead>
            <tbody>
            @foreach($photos as $photo)
                <tr>
                    <td>{{ $photo->id }}</td>
                    <td><img src="{{ $photo->image }}" alt="" width="180px" height="120px"></td>
                    <td>{{ $photo->created_at->diffForHumans() }}</td>
{{--                    <td>--}}
{{--                        {!! Form::open(['method'=>'DELETE', 'route'=> ['media.destroy', $photo->id]]) !!}--}}
{{--                            {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}--}}
{{--                        {!! Form::close() !!}--}}
{{--                    </td>--}}
                </tr>
            @endforeach
            </tbody>
        </table>

    @else
        <h3 class="text-center">No Photo Available</h3>

    @endif

@stop
