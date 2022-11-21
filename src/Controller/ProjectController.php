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
        return $this->render('project/view_project.html.twig', [
        ]);
    }
    
}