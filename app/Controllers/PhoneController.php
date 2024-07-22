<?php

namespace App\Controllers;


use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\RESTful\ResourceController;


class PhoneController extends ResourceController
{

    protected $modelName = 'App\Models\PhoneModel';
    protected $format = 'json';


    /**
     * Return an array of resource objects, themselves in array format.
     *
     * @return ResponseInterface
     */
    public function index()
    {
        $data = [
            'message' => 'success',

            'data_phone' => $this->model->findAll()
        ];

        return $this->respond($data, 200);
    }

    /**
     * Return the properties of a resource object.
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */
    public function show($id = null)
    {
        //
    }

    /**
     * Return a new resource object, with default properties.
     *
     * @return ResponseInterface
     */
    public function new()
    {
        //
    }

    /**
     * Create a new resource object, from "posted" parameters.
     *
     * @return ResponseInterface
     */
    public function create()
    {
        $this->model->insert([

            'nama' => esc($this->request->getvar('nama')),
            'merek' => esc($this->request->getvar('merek')),
            'tinggi' => esc($this->request->getvar('tinggi')),
            'lebar' => esc($this->request->getvar('lebar')),
            'screen-type' => esc($this->request->getvar('screen-type')),
            'battery' => esc($this->request->getvar('battery')),

        ]);

        $response = [
            'message' => 'data berhasil memasuk database'
        ];

        return $this->respondCreated($response);
    }

    /**
     * Return the editable properties of a resource object.
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */
    public function edit($id = null)
    {
        //
    }

    /**
     * Add or update a model resource, from "posted" properties.
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */
    public function update($id = null)
    {
        $this->model->update($id, [

            'nama' => esc($this->request->getvar('nama')),
            'merek' => esc($this->request->getvar('merek')),
            'tinggi' => esc($this->request->getvar('tinggi')),
            'lebar' => esc($this->request->getvar('lebar')),
            'screen-type' => esc($this->request->getvar('screen-type')),
            'battery' => esc($this->request->getvar('battery')),

        ]);

        $response = [
            'message' => 'data berhasil berubah'
        ];

        return $this->respondCreated($response, 200);
    }

    /**
     *
     *
     * @param int|string|null $id
     *
     * @return ResponseInterface
     */
    public function delete($id = null)
    {
        $this->model->delete($id);

        $response = [
            'message' => 'data berhasil dibuang'
        ];

        return $this->respondCreated($response, 200);
    }

    public function patch($id)
    {

        $battery = esc($this->request->getVar('battery'));


        $this->model->update($id, [
            'battery' => $battery,
        ]);


        $response = [
            'message' => 'Battery berhasil di update'
        ];


        return $this->respondCreated($response, 200);
    }
    public function head($id)
    {

        $resource = $this->model->find($id);

        if (!$resource) {

            return $this->failNotFound('Resource not found');
        }


        $this->response->setHeader('Content-Type', 'application/json');
        $this->response->setHeader('Content-Length', strlen(json_encode($resource)));
        $this->response->setHeader('Last-Modified', gmdate('D, d M Y H:i:s', strtotime($resource['updated_at'])) . ' GMT');



        $response = [
            'message' => 'Battery berhasil di update'
        ];


        return $this->respondCreated($response, 201);
    }
}
