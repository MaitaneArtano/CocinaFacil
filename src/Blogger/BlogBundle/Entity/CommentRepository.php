<?php

namespace Blogger\BlogBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * CommentRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class CommentRepository extends EntityRepository
{
	public function getCommentsForPost($postId, $approved = true)
	{
		$qp = $this->createQueryBuilder('c')->select('c')->where('c.post = :post_id')->addOrderBy('c.created')->setParameter('post_id', $postId);

		if (false === is_null($approved))
			$qp->andWhere('c.approved = :approved')->setParameter('approved', $approved);

		return $qp->getQuery()->getResult();
	}
}
