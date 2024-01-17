<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;
use App\Form\PortType;
use App\Entity\Port;

#[Route('/port', name: 'port_')]
class PortController extends AbstractController
{
    #[Route('/creer', name: 'creer')]
    public function creer(Request $request, EntityManagerInterface $manager): Response
    {
        $port = new Port();
        $form = $this->createForm(PortType::class, $port);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            $manager->persist($port);
            $manager->flush();
            return $this->redirectToRoute('home');
        }
        return $this->render('port/edit.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
