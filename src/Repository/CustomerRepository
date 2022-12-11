<?php

namespace App\Repository;

use App\Entity\Customer;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
class CustomerRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Customer::class);
    }

    public function getBySlug(string $nom): ?Customer
    {
        return $this->createQueryBuilder('a')
            ->where('a.nom = :nom')
            ->setParameter('nom', $nom)
            ->getQuery()
            ->getOneOrNullResult();
    }

    public function save(Customer $customer): void
    {
        $this->_em->persist($customer);
        $this->_em->flush();
    }
}
