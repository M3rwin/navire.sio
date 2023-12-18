<?php

namespace App\Entity;

use App\Repository\NavireRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: NavireRepository::class)]
#[ORM\Index(name:"ind_IMO", columns: ['imo'])]
#[ORM\Index(name:"ind_MMSI", columns: ['mmsi'])]
class Navire
{
    #[Assert\Unique(fields:['imo', 'mmsi', 'indicatif'])]
    
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 7)]
    #[Assert\Regex('[1-9][0-9]{6}', message: 'le numéro IMO doit être unique et composé de 7 chiffres sans commencer par 0.')]
    private ?string $imo = null;

    #[ORM\Column(length: 255)]
    #[Assert\Regex('.{3,}', message: 'Le nom doit être composé d\'au moins 3 carctères.')]
    private ?string $nom = null;

    #[ORM\Column(length: 9)]
    #[Assert\Regex('^[1-9]\d{8}$', message: "Le numéro MMSI doit être composé de 9 chiffres le premier ne pouvant pas être 0.")]
    private ?string $mmsi = null;

    #[ORM\Column(length: 10)]
    #[Assert\Regex("^.{10}$", message: "L'indicatif doit être composé de 10 caractères.")]
    private ?string $indicatif = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $eta = null;

    #[ORM\Column]
    private ?int $longueur = null;

    #[ORM\Column]
    private ?int $largeur = null;

    #[ORM\Column]
    private ?float $tirantdeau = null;

    #[ORM\ManyToOne(inversedBy: 'navires')]
    #[ORM\JoinColumn(nullable: false, name: 'idaisshiptype', referencedColumnName: 'id')]
    private ?AisShipType $aisShipType = null;

    #[ORM\ManyToOne]
    #[ORM\JoinColumn(nullable: false, name: 'idpays', referencedColumnName: 'id')]
    private ?Pays $pavillon = null;

    #[ORM\ManyToOne(inversedBy: 'navires', cascade:['persist'])]
    #[ORM\JoinColumn(name:'idport', referencedColumnName:'id', nullable:true)]
    private ?Port $destination = null;

    #[ORM\OneToMany(mappedBy: 'navire', targetEntity: Escale::class, orphanRemoval: true)]
    private Collection $escales;

    public function __construct()
    {
        $this->escales = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getImo(): ?string
    {
        return $this->imo;
    }

    public function setImo(string $imo): static
    {
        $this->imo = $imo;

        return $this;
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

    public function getMmsi(): ?string
    {
        return $this->mmsi;
    }

    public function setMmsi(string $mmsi): static
    {
        $this->mmsi = $mmsi;

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

    public function getEta(): ?\DateTimeInterface
    {
        return $this->eta;
    }

    public function setEta(?\DateTimeInterface $eta): static
    {
        $this->eta = $eta;

        return $this;
    }

    public function getLongueur(): ?int
    {
        return $this->longueur;
    }

    public function setLongueur(int $longueur): static
    {
        $this->longueur = $longueur;

        return $this;
    }

    public function getLargeur(): ?int
    {
        return $this->largeur;
    }

    public function setLargeur(int $largeur): static
    {
        $this->largeur = $largeur;

        return $this;
    }

    public function getTirantdeau(): ?float
    {
        return $this->tirantdeau;
    }

    public function setTirantdeau(float $tirantdeau): static
    {
        $this->tirantdeau = $tirantdeau;

        return $this;
    }

    public function getAisShipType(): ?AisShipType
    {
        return $this->aisShipType;
    }

    public function setAisShipType(?AisShipType $aisShipType): static
    {
        $this->aisShipType = $aisShipType;

        return $this;
    }

    public function getPavillon(): ?Pays
    {
        return $this->pavillon;
    }

    public function setPavillon(?Pays $pavillon): static
    {
        $this->pavillon = $pavillon;

        return $this;
    }

    public function getDestination(): ?Port
    {
        return $this->destination;
    }

    public function setDestination(?Port $destination): static
    {
        $this->destination = $destination;

        return $this;
    }

    /**
     * @return Collection<int, Escale>
     */
    public function getEscales(): Collection
    {
        return $this->escales;
    }

    public function addEscale(Escale $escale): static
    {
        if (!$this->escales->contains($escale)) {
            $this->escales->add($escale);
            $escale->setNavire($this);
        }

        return $this;
    }

    public function removeEscale(Escale $escale): static
    {
        if ($this->escales->removeElement($escale)) {
            // set the owning side to null (unless already changed)
            if ($escale->getNavire() === $this) {
                $escale->setNavire(null);
            }
        }

        return $this;
    }

}
