<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentReply extends Model
{
    use HasFactory;

    const ACTIVEREPLY = 1;
    const INACTIVEREPLY = 0;

    protected $fillable = [
        'comment_id',
        'is_active',
        'author',
        'email',
        'body'
    ];

    public function comment(){
        return $this->belongsTo('App\Models\Comment');
    }



}// End of class
