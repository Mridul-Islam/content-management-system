<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    const ACTIVECOMMENT = 1;
    const INACTIVECOMMENT = 0;

    protected $fillable = [
        'post_id',
        'is_active',
        'author',
        'email',
        'body'
    ];

    public function post(){
        return $this->belongsTo('App\Models\Post');
    }

    public function replies(){
        return $this->hasMany('App\Models\CommentReply');
    }


}// End of class
