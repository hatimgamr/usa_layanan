<?php



namespace App\Controllers;

use CodeIgniter\Controller;
use Config\Database;

class HomeController extends Controller
{
    public function index()
    {
        $db = Database::connect(); // Connect to the database

        if ($db->connectError) {
            die("Connection failed: " . $db->connectError);
        } else {
            echo "Connected successfully to the database!";
        }
    }
}
