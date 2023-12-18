<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231218101932 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE navire ADD idport INT DEFAULT NULL');
        $this->addSql('ALTER TABLE navire ADD CONSTRAINT FK_EED1038905EAC6C FOREIGN KEY (idport) REFERENCES port (id)');
        $this->addSql('CREATE INDEX IDX_EED1038905EAC6C ON navire (idport)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE navire DROP FOREIGN KEY FK_EED1038905EAC6C');
        $this->addSql('DROP INDEX IDX_EED1038905EAC6C ON navire');
        $this->addSql('ALTER TABLE navire DROP idport');
    }
}
