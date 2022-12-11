<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Customer;
use App\Form\CustomerType;
use App\Repository\CustomerRepository;

final class CustomerController extends AbstractController
{
    #[Route(path: "/Customer", name: "customer")]
    public function customer(Request $request): Response
    {
        return $this->render('Customer/View.html.twig', [
        ]);
    }

    #[Route(path: "/Customer/Add", name: "customerAdd")]
    public function customerAdd(Request $request, CustomerRepository $customerRepository): Response
    {
        $customer = new Customer();
        $form = $this->createForm(CustomerType::class, $customer);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $customerRepository->save($customer);

            return $this->redirectToRoute('nom', [
                'codes' => $customer->getName(),
            ]);
        }

        return $this->render('Customer/Insert.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    // #[Route(path: "/Customer/Update{id}", name: "customerUpdate")]
    #[Route(path: "/Customer/Update", name: "customerUpdate")]
    public function customerUpdate(Request $request): Response
    {
        return $this->render('Customer/Update.html.twig', [
        ]);
    }
}