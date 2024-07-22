<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddBlog extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'nama' => [
                'type'       => 'VARCHAR',
                'constraint' => '100',
            ],
            'merek' => [
                'type'       => 'VARCHAR',
                'constraint' => '100',
            ],
            'tinggi' => [
                'type' => 'double',
                'null' => true,
            ],
            'lebar' => [
                'type' => 'double',
                'null' => true,
            ],
            'screen-type' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'battery' => [
                'type' => 'int',
                'null' => true,
            ],
            'created_at' => [
                'type' => 'DATETIME',
                'null' => true,
            ],
            'updated_at' => [
                'type' => 'DATETIME',
                'null' => true,
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('phone');
    }

    public function down()
    {
        $this->forge->dropTable('phone');
    }
}
