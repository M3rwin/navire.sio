<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231218084843 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE navire ADD idaisshiptype INT NOT NULL, ADD longueur INT NOT NULL, ADD largeur INT NOT NULL, ADD tirantdeau DOUBLE PRECISION NOT NULL');
        $this->addSql('ALTER TABLE navire ADD CONSTRAINT FK_EED103839F5FA88 FOREIGN KEY (idaisshiptype) REFERENCES aisshiptype (id)');
        $this->addSql('CREATE INDEX IDX_EED103839F5FA88 ON navire (idaisshiptype)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE navire DROP FOREIGN KEY FK_EED103839F5FA88');
        $this->addSql('DROP INDEX IDX_EED103839F5FA88 ON navire');
        $this->addSql('ALTER TABLE navire DROP idaisshiptype, DROP longueur, DROP largeur, DROP tirantdeau');
    }
}
