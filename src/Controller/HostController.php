<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

final class HostController extends AbstractController
{
    #[Route(path: "/Host", name: "host")]
    public function Host(Request $request): Response
    {
        return $this->render('Host/View.html.twig', [
        ]);
    }
    
    #[Route(path: "/Host/Add", name: "hostAdd")]
    public function HostAdd(Request $request): Response
    {
        return $this->render('Host/Insert.html.twig', [
        ]);
    }

    // #[Route(path: "/Host/Update{id}", name: "hostUpdate")]
    #[Route(path: "/Host/Update", name: "hostUpdate")]
    public function HostUpdate(Request $request): Response
    {
        return $this->render('Host/Update.html.twig', [
        ]);
    }
}