<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

final class ProjectController extends AbstractController
{
    #[Route(path: "/project", name: "project")]
    public function project(Request $request): Response
    {
        return $this->render('project/view.html.twig', [
        ]);
    }
    
    #[Route(path: "/project/add", name: "projectAdd")]
    public function projectAdd(Request $request): Response
    {
        return $this->render('project/insert.html.twig', [
        ]);
    }

    // #[Route(path: "/project/update{id}", name: "projectUpdate")]
    #[Route(path: "/project/update", name: "projectUpdate")]
    public function projectUpdate(Request $request): Response
    {
        return $this->render('project/update.html.twig', [
        ]);
    }
}