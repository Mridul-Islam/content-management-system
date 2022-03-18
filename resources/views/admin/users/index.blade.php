@extends('layouts.admin')

@section('content')
    <h2 class="text-center bg-info">All Users</h2>
    <hr>

    @if(Session::has('created_user'))
        <p class="text-center bg-success">{{ session('created_user') }}</p>
    @endif
    @if(Session::has('updated_user'))
        <p class="text-center bg-success">{{ session('updated_user') }}</p>
    @endif
    @if(Session::has('deleted_user'))
        <p class="text-center bg-success">{{ session('deleted_user') }}</p>
    @endif

    <hr>

    <table class="table table-striped table-bordered table-hover table-responsive">
        <thead>
            <tr>
                <th>Id</th>
                <th>Image</th>
                <th>Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Status</th>
                <th>Created_at</th>
                <th>Updated_at</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        @foreach($users as $user)
            <tr>
                <td> {{ $user->id  }} </td>
                <td><img src="{{ $user->photo_id ? $user->photo->image : '/images/user-logo.png' }}" width="120px" height="80px" /></td>
                <td> {{ $user->name  }} </td>
                <td> {{ $user->email }} </td>
                <td> {{ $user->role->name }} </td>

                <!-- Show user status using is-active condition -->
                <td> {{ $user->is_active == 1? 'active' : 'in-active' }} </td>

                <td> {{ $user->created_at->diffForHumans() }} </td>
                <td> {{ $user->updated_at->diffForHumans() }} </td>
                <td><a href="{{route('users.edit', $user->id)}}" class="btn btn-primary">Edit</a></td>
                <td>
                    {!! Form::open(['method'=>'DELETE', 'route'=>['users.destroy', $user->id]]) !!}
                        <div class="form-group">
                            {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                        </div>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>

@stop
