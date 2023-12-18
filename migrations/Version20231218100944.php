<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231218100944 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE port ADD idpays INT NOT NULL');
        $this->addSql('ALTER TABLE port ADD CONSTRAINT FK_43915DCCE750CD0E FOREIGN KEY (idpays) REFERENCES pays (id)');
        $this->addSql('CREATE INDEX IDX_43915DCCE750CD0E ON port (idpays)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE port DROP FOREIGN KEY FK_43915DCCE750CD0E');
        $this->addSql('DROP INDEX IDX_43915DCCE750CD0E ON port');
        $this->addSql('ALTER TABLE port DROP idpays');
    }
}
