<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\NavireRepository;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;
use App\Form\NavireType;

#[Route('/navire', name :'navire_')]
class NavireController extends AbstractController
{
    #[Route('/voirtous', name: 'voirtous')]
    public function voirTous(NavireRepository $repoNavire): Response
    {
        $navires = $repoNavire->findAll();
        return $this->render('navire/voirtous.html.twig', [
            'navires' => $navires,
        ]);
    }
    
    #[Route('/edit/{id}', name: 'edit')]
    public function editer(int $id, Request $request, NavireRepository $repoNavire, EntityManagerInterface $em) : Response {
        $navire = $repoNavire->find($id);
        
        $form = $this->createForm(NavireType::class, $navire);
        $form->handleRequest($request);
        
        if ($form->isSubmitted() && $form->isValid()){
            $navire = $form->getData();
            $em->persist($navire);
            $em->flush();
            return $this->redirectToRoute('home');
        }
        return $this->render('navire/edit.html.twig', [
            'form'=>$form->createView(),
            'navire'=>$navire
        ]);
    }
    
}
