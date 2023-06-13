<?php

namespace App\Controllers;

use App\Controllers\BaseController;

//step 1
use App\Models\FilmModel;

class Film extends BaseController
{
    //step 2
    protected $Film;
    //step 3 membuat fungsi construct untuk inisiasi class model
    public function __construct()
    {
        //step 4 memanggil 
        $this -> Film = new FilmModel();
    }

    public function index()
    {
        //step 4 inisisasi kelas film
        $data['data_film'] = $this -> Film -> getFilm();
        return view("film/index", $data);
    }
    //all
    public function all()
    {
       // dd($this->Film->getAllData());
        $data['semuafilm'] = $this->Film->getAllData();
       return view("film/semuafilm",$data);
    }

    //getdatabyid
    public function film_by_id()
    {
        dd($this->Film->getDataByID(1));
        
    }
    //getdataby
    public function film_by_genre()
    {
        dd($this->Film->getDataBy("Horor"));
    }
    //orderby
    public function film_order()
    {
        dd($this->Film->getOrderBy());
    }
    //limit
    public function film_Limit_five()
    {
        dd($this->Film->getLimit());
    }

}
