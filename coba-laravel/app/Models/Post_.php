<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            'title' => 'Judul Blog Post 1',
            'slug' => 'judul-blog-post-1',
            'author' => 'Admin M3',
            'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam fugiat ut quo iusto praesentium natus earum soluta, doloribus commodi voluptatem, cum, corporis eveniet reprehenderit doloremque. Tenetur deserunt, vel, fugiat est mollitia eaque vitae quam iusto enim accusamus quaerat eligendi ab itaque aliquam ea eos perferendis cum doloribus quas. Minus esse ducimus nemo, voluptas omnis accusamus dicta totam, eum nisi tempora mollitia rerum sit. Eveniet asperiores voluptatem nostrum? Numquam reprehenderit, saepe itaque, eum sed repellat commodi, deserunt autem natus eaque alias!',
        ],
    
        [
            'title' => 'Judul Blog Post 2',
            'slug' => 'judul-blog-post-2',
            'author' => 'Ketua Organisasi',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione inventore consectetur ex voluptates tempora modi sequi, nobis animi officiis labore iure fuga rerum magnam praesentium! Praesentium magnam quas veniam aperiam odio quod vitae sunt officiis ipsa fugiat. Labore error quos maiores vel enim assumenda dicta cumque sequi nobis voluptatibus repudiandae sunt, mollitia minima voluptate necessitatibus distinctio! Magnam maiores consequatur vero iste ipsum quibusdam laborum nostrum repellendus, omnis aspernatur libero velit modi incidunt facere inventore dolor hic autem quas cum temporibus quasi, saepe alias. Quod possimus quis, dolorem consequuntur pariatur, eaque maiores ducimus nulla expedita fugiat atque adipisci aperiam reprehenderit alias.',
        ]
    ];

    public static function All()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
