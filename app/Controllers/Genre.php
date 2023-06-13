<?php

namespace App\Controllers;

use App\Controllers\BaseController;

use App\Models\GenreModel;

class Genre extends BaseController
{
    protected $Genre;
    //step 3 membuat fungsi construct untuk inisiasi class model
    public function __construct()
    {
        //step 4 memanggil 
        $this->Genre = new GenreModel();
    }

    //all
    public function all()
    {
       // dd($this->Film->getAllData());
        $data['genre'] = $this->Genre->getAllData();
       return view("film/genre",$data);
    }
}
