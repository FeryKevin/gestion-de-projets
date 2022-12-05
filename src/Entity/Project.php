<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping\Table;
use Doctrine\ORM\Mapping as ORM;

use App\Entity\Host;
use App\Entity\Customer;

#[ORM\Entity]
#[ORM\Table(name:'project')]
class Project
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private int $id;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(length: 255)]
    private ?string $code = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $lastpass_folder = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $link_mock_ups = null;
    
    #[ORM\Column(type: 'boolean')]
    private ?bool $managed_server = false;

    #[ORM\Column(type: 'text', length: 1000, nullable: true)]
    private ?string $notes = null;

    #[ORM\ManyToOne(targetEntity: Host::class)]
    #[ORM\JoinColumn(name: 'host_id', referencedColumnName: 'id', nullable: false)]
    private $host;

    #[ORM\ManyToOne(targetEntity: Customer::class)]
    #[ORM\JoinColumn(name: 'customer_id', referencedColumnName: 'id', nullable: false)]
    private $customer;

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

    public function getCode(): ?string
    {
        return $this->code;
    }

    public function setCode(string $code): self
    {
        $this->code = $code;

        return $this;
    }

    public function getLastpast_folder(): ?string
    {
        return $this->lastpass_folder;
    }

    public function setLastpast_folder(?string $lastpass_folder): self
    {
        $this->lastpass_folder = $lastpass_folder;

        return $this;
    }
    
    public function getLink_mock_ups(): ?string
    {
        return $this->link_mock_ups;
    }

    public function setLink_mock_ups(?string $link_mock_ups): self
    {
        $this->link_mock_ups = $link_mock_ups;

        return $this;
    }

    public function getManaged_server(): ?int
    {
        return $this->managed_server;
    }

    public function setManaged_server(int $managed_server): self
    {
        $this->managed_server = $managed_server;

        return $this;
    }

    public function getNotes(): ?string
    {
        return $this->notes;
    }

    public function setNotes(?string $notes): self
    {
        $this->notes = $notes;

        return $this;
    }

    public function getHost(): ?Host 
	{
		return $this->host;
	}

	public function setHost(Host $host_id): self
	{
		$this->host = $host_id;

        return $this;
	}

	public function getCustomer(): ?Customer 
	{
		return $this->customer;
	}

	public function setCustomer(Customer $customer_id): self
	{
		$this->customer = $customer_id;

        return $this;
	}
}