<?php

namespace App\Action;

use App\Model\Critere;
use App\Model\Dataview;
use Psr\Log\LoggerInterface;
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;
use App\Model\Secteur;
use App\Helper\JsonRenderer;

class SecteurAction
{


    private $logger;
    private $jsonRender;

    public function __construct(JsonRenderer $jsonRender, LoggerInterface $logger)
    {
        $this->logger = $logger;
        $this->JsonRender = new JsonRenderer();

    }

    public function dispatch(Request $request, Response $response, $args)
    {
        $this->logger->info("Secteur page action dispatched");
        $data = Secteur::all();
        $response = $response->withJson($data->toArray());
        $response = $response->withStatus(200);
        return $response;

    }

    public function show(Request $request, Response $response, $args)
    {
        $this->logger->info("Secteur par i page action dispatched");
        $id = $args['id'];
        $data = Secteur::find($id);
        $response = $response->withJson($data->toArray());
        $response = $response->withStatus(200);
        return $response;
    }

    public function secteurPerYear(Request $request, Response $response, $args)
    {
        $this->logger->info("Secteur par i page action dispatched");
        $id = $args['id'];
        $data = Secteur::find($id);
        $response = $response->withJson($data->toArray());
        $response = $response->withStatus(200);
        return $response;
    }



    public function critere(Request $request, Response $response, $args)
    {
        $this->logger->info("Critere per secteur_id  page action dispatched");
        $id = $args['id'];
        $data = Dataview::where('secteur_id', $id)->with('critere')->get();

        $response = $response->withJson($data->toArray());
        $response = $response->withStatus(200);
        return $response;
    }

    public function values(Request $request, Response $response, $args)
    {
        $this->logger->info("Value per secteur_id and critere_id page action dispatched");
        $id = $args['id'];
        $critere_id = $args['critere_id'];
        $data = Dataview::where('secteur_id', '=', $id)->where('critere_id', $critere_id)->with('value')->get();

        $response = $response->withJson($data->toArray());
        $response = $response->withStatus(200);
        return $response;
    }

    public function valuesPerYear(Request $request, Response $response, $args)
    {
        $this->logger->info("Value per secteur_id and critere_id page action dispatched");
        $id = $args['id'];
        $critere_id = $args['critere_id'];
        $year = $args['year'];
        $data = Dataview::where('year', $year)->where('secteur_id', '=', $id)->where('critere_id', $critere_id)->with('value')->get();
        $response = $response->withJson($data->toArray());
        $response = $response->withStatus(200);
        return $response;
    }



}
