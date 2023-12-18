<?php

namespace App\Entity;

use App\Repository\PaysRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PaysRepository::class)]
#[ORM\Table(name: 'pays')]
#[Assert\Unique(fields: ['indicatif'])]
#[ORM\Index(name:"ind_indicatif", columns: ['indicatif'])]
class Pays
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 70)]
    private ?string $nom = null;

    #[ORM\Column(length: 3, name: 'indicatif')]
    #[Assert\Regex('/[A-Z]{3}/', message: "L'indicatif Pays a strictement 3 caractères")]
    private ?string $indicatif = null;

    #[ORM\OneToMany(mappedBy: 'pays', targetEntity: Port::class, orphanRemoval: true)]
    private Collection $ports;

    public function __construct()
    {
        $this->ports = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }

    public function getIndicatif(): ?string
    {
        return $this->indicatif;
    }

    public function setIndicatif(string $indicatif): static
    {
        $this->indicatif = $indicatif;

        return $this;
    }

    /**
     * @return Collection<int, Port>
     */
    public function getPorts(): Collection
    {
        return $this->ports;
    }

    public function addPort(Port $port): static
    {
        if (!$this->ports->contains($port)) {
            $this->ports->add($port);
            $port->setPays($this);
        }

        return $this;
    }

    public function removePort(Port $port): static
    {
        if ($this->ports->removeElement($port)) {
            // set the owning side to null (unless already changed)
            if ($port->getPays() === $this) {
                $port->setPays(null);
            }
        }

        return $this;
    }
}
