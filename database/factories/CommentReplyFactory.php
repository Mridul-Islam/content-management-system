<?php

namespace Database\Factories;

use App\Models\Comment;
use App\Models\CommentReply;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class CommentReplyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'comment_id' => Comment::all()->random()->id,
            'is_active' => $this->faker->randomElement([CommentReply::ACTIVEREPLY, CommentReply::INACTIVEREPLY]),
            'author' => User::all()->random()->name,
            'email' => User::all()->random()->email,
            'body' => $this->faker->paragraph(1)
        ];
    }
}
