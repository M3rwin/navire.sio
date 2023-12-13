<?php

namespace App\Entity;

use App\Repository\AisShipTypeRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Table(name:'aisshiptype')]
#[ORM\Entity(repositoryClass: AisShipTypeRepository::class)]
class AisShipType
{
    #[Assert\Unique(fields:['aisShipType'])]
    
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(name: 'aisshiptype')]
    #[Assert\Range(
            min: 1,
            max: 9,
            notInRangeMessage: 'Le type AIS dois être compris entre {{ min }} et {{ max }}'
    )]
    private ?int $aisShipType = null;

    #[ORM\Column(name: 'libelle', length: 60)]
    private ?string $libelle = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAisShipType(): ?int
    {
        return $this->aisShipType;
    }

    public function setAisShipType(int $aisShipType): static
    {
        $this->aisShipType = $aisShipType;

        return $this;
    }

    public function getLibelle(): ?string
    {
        return $this->libelle;
    }

    public function setLibelle(string $libelle): static
    {
        $this->libelle = $libelle;

        return $this;
    }
}
