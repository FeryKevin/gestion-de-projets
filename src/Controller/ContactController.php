<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

final class ContactController extends AbstractController
{   
    #[Route(path: "/Contact/Add", name: "contactAdd")]
    public function contactAdd(Request $request): Response
    {
        return $this->render('Contact/Insert.html.twig', [
        ]);
    }

    // #[Route(path: "/Contact/Update{id}", name: "contactUpdate")]
    #[Route(path: "/Contact/Update", name: "contactUpdate")]
    public function contactUpdate(Request $request): Response
    {
        return $this->render('Contact/Update.html.twig', [
        ]);
    }
}