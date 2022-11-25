<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

final class EnvironmentController extends AbstractController
{   
    #[Route(path: "/Environment/Add", name: "environmentAdd")]
    public function EnvironmentAdd(Request $request): Response
    {
        return $this->render('Environment/Insert.html.twig', [
        ]);
    }

    // #[Route(path: "/Environment/Update{id}", name: "environmentUpdate")]
    #[Route(path: "/Environment/Update", name: "environmentUpdate")]
    public function EnvironmentUpdate(Request $request): Response
    {
        return $this->render('Environment/Update.html.twig', [
        ]);
    }
}