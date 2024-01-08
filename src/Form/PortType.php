<?php

namespace App\Form;

use App\Entity\Port;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use App\Entity\AisShipType;
use App\Entity\Pays;

class PortType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom', TextType::class)
            ->add('indicatif', TextType::class)
            ->add('types', EntityType::class, [
                'class'=> AisShipType::class,
                'choice_label'=>'libelle',
                'expanded'=>true,
                'multiple'=>true
            ])
            ->add('pays', EntityType::class, [
                'class'=>Pays::class,
                'choice_label'=>'nom',
                'expanded'=>false,
                'multiple'=>false
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Port::class,
        ]);
    }
}
