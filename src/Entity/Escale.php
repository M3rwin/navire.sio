<?php

namespace App\Entity;

use App\Repository\EscaleRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: EscaleRepository::class)]
class Escale
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE, name:'dateHeureArrivee')]
    private ?\DateTimeInterface $dateHeureArrive = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE, nullable: true, name:'dateHeureDepart')]
    private ?\DateTimeInterface $dateHeureDepart = null;

    #[ORM\ManyToOne(inversedBy: 'escales')]
    #[ORM\JoinColumn(nullable: false, name:'idnavire', referencedColumnName:'id')]
    private ?Navire $navire = null;

    #[ORM\ManyToOne(inversedBy: 'escales')]
    #[ORM\JoinColumn(nullable: false, name:'idport', referencedColumnName:'id')]
    private ?Port $port = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDateHeureArrive(): ?\DateTimeInterface
    {
        return $this->dateHeureArrive;
    }

    public function setDateHeureArrive(\DateTimeInterface $dateHeureArrive): static
    {
        $this->dateHeureArrive = $dateHeureArrive;

        return $this;
    }

    public function getDateHeureDepart(): ?\DateTimeInterface
    {
        return $this->dateHeureDepart;
    }

    public function setDateHeureDepart(?\DateTimeInterface $dateHeureDepart): static
    {
        $this->dateHeureDepart = $dateHeureDepart;

        return $this;
    }

    public function getNavire(): ?Navire
    {
        return $this->navire;
    }

    public function setNavire(?Navire $navire): static
    {
        $this->navire = $navire;

        return $this;
    }

    public function getPort(): ?Port
    {
        return $this->port;
    }

    public function setPort(?Port $port): static
    {
        $this->port = $port;

        return $this;
    }
}
