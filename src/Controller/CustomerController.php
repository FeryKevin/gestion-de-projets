<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

final class CustomerController extends AbstractController
{
    #[Route(path: "/Customer", name: "customer")]
    public function Customer(Request $request): Response
    {
        return $this->render('Customer/View.html.twig', [
        ]);
    }
    
    #[Route(path: "/Customer/Add", name: "customerAdd")]
    public function CustomerAdd(Request $request): Response
    {
        return $this->render('Customer/Insert.html.twig', [
        ]);
    }

    // #[Route(path: "/Customer/Update{id}", name: "customerUpdate")]
    #[Route(path: "/Customer/Update", name: "customerUpdate")]
    public function CustomerUpdate(Request $request): Response
    {
        return $this->render('Customer/Update.html.twig', [
        ]);
    }
}