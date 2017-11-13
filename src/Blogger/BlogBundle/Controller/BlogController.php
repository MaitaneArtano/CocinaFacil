<?php
// src/Blogger/BlogBundle/Controller/BlogController.php
namespace Blogger\BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class BlogController extends Controller
{

	public function listAction()
	{
		$posts = $this->get('doctrine')->getManager()->createQuery('SELECT p FROM BloggerBlogBundle:Post p')->execute();

		return $this->render('BloggerBlogBundle:Blog:list.html.php', array('posts' => $posts));
	}

	public function showAction($id)
	{
		$post = $this->get('doctrine')->getManager()->getRepository('BloggerBlogBundle:Post')->find($id);
		if (!$post)
		{
			// cause the 404 page not found to be displayed
			throw $this->createNotFoundException();
		}
		
		return $this->render('BloggerBlogBundle:Blog:show.html.php', array('post' => $post));
	}
}
?>