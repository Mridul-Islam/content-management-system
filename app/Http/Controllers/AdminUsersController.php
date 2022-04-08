<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserCreateRequest;
use App\Http\Requests\UserEditRequest;
use App\Models\Photo;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class AdminUsersController extends Controller
{

    public function index()
    {
        $users = User::all()->sortDesc();
        return view('admin.users.index', compact('users'));
    }


    public function create()
    {
        $roles = Role::pluck('name', 'id')->all();
        return view('admin.users.create', compact('roles'));
    }


    public function store(UserCreateRequest $request)
    {
        $input = $request->all();
        if($file = $request->file('photo_id')){
            $name = time() . $file->getClientOriginalName();
            // save photo to database
            $photo = Photo::create(['image'=>$name]);
            // save photo to server file
            $file->move('images', $name);
            $input['photo_id'] = $photo->id;
        }
        $input['password'] = bcrypt($request->password);
        User::create($input);
        Session::flash('created_user', 'The user has been created successfully.');
        return redirect('/admin/users');


//        $user = new User;
//        $user->name = $request->name;
//        $user->email = $request->email;
//        $user->role_id = $request->role_id;
//        $user->is_active = $request->is_active;
//        $user->password = $request->password;
//        $user->photo_id  = $request->photo_id;
//        $user->save();

        //return $request->all();
    }


    public function show($id)
    {
        return "show" . $id;
    }


    public function edit($id)
    {
        $user = User::findOrFail($id);
        $roles = Role::pluck('name', 'id')->all();

        return view('/admin/users/edit', compact('user', 'roles'));
    }


    public function update(UserEditRequest $request, $id)
    {
        $user = User::findOrFail($id);
        $input = $request->all();
        if($file = $request->file('photo_id')){
            //delete existing photo
            if($user->photo_id){
                unlink(public_path() . $user->photo->image);
                $user->photo()->delete();
            }
            // new photo info
            $name = time() . $file->getClientOriginalName();
            $file->move("images", $name);
            $photo = Photo::create(['image'=>$name]);
            $input['photo_id'] = $photo->id;
        }
        // password configuration
        if($request->password == '' || empty($request->password)){
            $input['password'] = $user->password;
        }
        else{
            $input['password'] = bcrypt(trim($request->password));
        }
        $user->update($input);
        Session::flash('updated_user', 'The user has been updated successfully.');
        return redirect('/admin/users');
    }


    public function destroy($id)
    {
        $user = User::findOrFail($id);
        if($user->photo_id){
            unlink(public_path() . $user->photo->image);
            $user->photo()->delete();
        }
        $user->delete();
        Session::flash('deleted_user', 'The user has been deleted successfully.');
        return redirect('/admin/users');
    }
}
