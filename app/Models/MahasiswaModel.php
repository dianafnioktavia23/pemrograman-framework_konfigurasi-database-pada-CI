<?php

namespace App\Models;

use CodeIgniter\Model;

class MahasiswaModel extends Model
{
    public function getMahasiswa(){

        $data=[
            [
                "nama" => "Dian",
                "npm" => "21753088" ,
                "prodi"=>"Manajemen Informatika"
            ],
            [
                "nama" => "SIfani",
                "npm" => "21753087" ,
                "prodi"=>"Manajemen Informatika" 
            ],
            [
                "nama" => "rahma",
                "npm" => "2175379" ,
                "prodi"=>"Manajemen Informatika"
            ],
            [
                "nama" => "Wulan",
                "npm" => "2174589" ,
                "prodi"=>"agribisnis"
            ],
            [
                "nama" => "aldenny",
                "npm" => "2171466" ,
                "prodi"=>"PMIP"
            ],
            [
                "nama" => "Anggi",
                "npm" => "21753561" ,
                "prodi"=>"Manajemen Informatika"
            ]
        ];

        return $data;
    }
}


