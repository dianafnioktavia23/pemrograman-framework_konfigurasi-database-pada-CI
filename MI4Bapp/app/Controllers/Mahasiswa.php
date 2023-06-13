<?php

namespace App\Controllers;

use App\Controllers\BaseController;

//step 1
use App\Models\MahasiswaModel;

class Mahasiswa extends BaseController
{
    //step 2
    protected $Mahasiswa;
    //step 3 membuat fungsi construct untuk inisiasi class model
    public function __construct()
    {
        //step 4 memanggil 
        $this -> Mahasiswa = new MahasiswaModel();
    }

    public function index()
    {
        //step 4
        $data['data_mahasiswa'] = $this -> Mahasiswa -> getMahasiswa();
        return view("Mahasiswa/index", $data);
    }
}
