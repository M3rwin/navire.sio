<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class NavireController extends AbstractController
{
    #[Route('/navire', name: 'app_navire')]
    public function index(): Response
    {
        return $this->render('navire/index.html.twig', [
            'controller_name' => 'NavireController',
        ]);
    }
}
