<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

final class HostController extends AbstractController
{
    #[Route(path: "/host", name: "host")]
    public function host(Request $request): Response
    {
        return $this->render('host/view.html.twig', [
        ]);
    }
    
    #[Route(path: "/host/add", name: "hostAdd")]
    public function hostAdd(Request $request): Response
    {
        return $this->render('host/insert.html.twig', [
        ]);
    }

    // #[Route(path: "/host/update{id}", name: "hostUpdate")]
    #[Route(path: "/host/update", name: "hostUpdate")]
    public function hostUpdate(Request $request): Response
    {
        return $this->render('host/update.html.twig', [
        ]);
    }
}