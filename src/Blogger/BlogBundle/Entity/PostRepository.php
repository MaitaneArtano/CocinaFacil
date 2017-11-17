<?php

namespace Blogger\BlogBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * PostRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class PostRepository extends EntityRepository
{
	public function getLatestPosts($limit = null)
	{
		$qp = $this->createQueryBuilder('p')->select('p')->addOrderBy('p.categoria', 'DESC');

		if (false === is_null($limit))
			$qp->setMaxResults($limit);

		return $qp->getQuery()->getResult();
	}
}