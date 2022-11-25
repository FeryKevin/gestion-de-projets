<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

final class ProjectController extends AbstractController
{
    #[Route(path: "/Project", name: "project")]
    public function project(Request $request): Response
    {
        return $this->render('Project/View.html.twig', [
        ]);
    }
    
    #[Route(path: "/Project/Add", name: "projectAdd")]
    public function ProjectAdd(Request $request): Response
    {
        return $this->render('Project/Insert.html.twig', [
        ]);
    }

    // #[Route(path: "/Project/Update{id}", name: "projectUpdate")]
    #[Route(path: "/Project/Update", name: "projectUpdate")]
    public function ProjectUpdate(Request $request): Response
    {
        return $this->render('Project/Update.html.twig', [
        ]);
    }
}