<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping\Table;
use Doctrine\ORM\Mapping as ORM;

use App\Entity\Project;

#[ORM\Entity]
#[ORM\Table(name:'environment')]
class Environment
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private int $id;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $name = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $link = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $ip_address = null;

    #[ORM\Column(type: 'integer', length: 6, nullable: true)]
    private ?int $ssh_port = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $ssh_username = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $phpmyadmin_link = null;

    #[ORM\Column(type: 'boolean')]
    private ?int $ip_restriction = null;

    #[ORM\ManyToOne(targetEntity: Project::class)]
    #[ORM\JoinColumn(name: 'project_id', referencedColumnName: 'id')]
    private Project|null $project = null;

    public function getId(): ?int
    {
        return $this->id;
    }


    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }


    public function getLink(): ?string
    {
        return $this->link;
    }

    public function setLink(?string $link): self
    {
        $this->link = $link;

        return $this;
    }


    public function getIpAdress(): ?string
    {
        return $this->ip_address;
    }

    public function setIpAdress(?string $ip_address): self
    {
        $this->ip_address = $ip_address;

        return $this;
    }


    public function getSshPort(): ?int
    {
        return $this->ssh_port;
    }

    public function setSshPort(?int $ssh_port): self
    {
        $this->ssh_port = $ssh_port;

        return $this;
    }


    public function getSshUsername(): ?string
    {
        return $this->ssh_username;
    }

    public function setSshUsername(?string $ssh_username): self
    {
        $this->ssh_username = $ssh_username;

        return $this;
    }


    public function getPhpmyadminLink(): ?string
    {
        return $this->phpmyadmin_link;
    }

    public function setPhpmyadminLink(?string $phpmyadmin_link): self
    {
        $this->phpmyadmin_link = $phpmyadmin_link;

        return $this;
    }


    public function getIpRestriction(): ?int
    {
        return $this->ip_restriction;
    }

    public function setIpRestriction(int $ip_restriction): self
    {
        $this->ip_restriction = $ip_restriction;

        return $this;
    }


    public function getProject(): ?Project 
	{
		return $this->project;
	}

	public function setProject(?Project $project_id): self
	{
		$this->project = $project_id;

        return $this;
    }
}   