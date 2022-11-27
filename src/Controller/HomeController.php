<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

final class HomeController extends AbstractController
{
    #[Route(path: "/", name: "home")]
    public function home(Request $request): Response
    {
        return $this->render('Home/Home.html.twig', [
        ]);
    }
    
}