<?php
// src/Blogger/BlogBundle/Controller/BlogController.php
namespace Blogger\BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class BlogController extends Controller
{

	public function listAction()
	{
		$posts = $this->get('doctrine')->getManager()->createQueryBuilder()->select('p')->from('BloggerBlogBundle:Post',  'p')->addOrderBy('p.categoria', 'DESC')->getQuery()->getResult();

		return $this->render('BloggerBlogBundle:Blog:list.html.twig', array('posts' => $posts));
	}

	public function showAction($id)
	{
		$post = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Post')->find($id);
		
		if (!$post) {
			throw $this->createNotFoundException('No se ha encontrado el post.');
		}

		$comments = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Comment')->getCommentsForPost($post->getId());

		return $this->render('BloggerBlogBundle:Blog:show.html.twig', array('post' => $post, 'comments' => $comments));
	}

	public function contactAction()
	{
		return $this->render('BloggerBlogBundle:Blog:contact.html.twig');
	}

	public function categoriaAction()
	{
		return $this->render('BloggerBlogBundle:Blog:categoria.html.twig');
	}

	public function entranteAction()
	{
		$posts = $this->get('doctrine')->getManager()->createQueryBuilder()->select('p')->from('BloggerBlogBundle:Post',  'p')->where('p.categoria = :entrante')->addOrderBy('p.categoria', 'ASC')->setParameter('entrante', 'Entrante')->getQuery()->getResult();

		return $this->render('BloggerBlogBundle:Blog:entrante.html.twig', array('posts' => $posts));
	}

	public function principalAction()
	{
		$posts = $this->get('doctrine')->getManager()->createQueryBuilder()->select('p')->from('BloggerBlogBundle:Post',  'p')->where('p.categoria = :principal')->addOrderBy('p.categoria', 'ASC')->setParameter('principal', 'Principal')->getQuery()->getResult();

		return $this->render('BloggerBlogBundle:Blog:principal.html.twig', array('posts' => $posts));
	}

	public function postreAction()
	{
		$posts = $this->get('doctrine')->getManager()->createQueryBuilder()->select('p')->from('BloggerBlogBundle:Post',  'p')->where('p.categoria = :postre')->addOrderBy('p.categoria', 'ASC')->setParameter('postre', 'Postre')->getQuery()->getResult();

		return $this->render('BloggerBlogBundle:Blog:postre.html.twig', array('posts' => $posts));
	}
}
?>
