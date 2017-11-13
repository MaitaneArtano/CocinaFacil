<?php
// src/Blogger/BlogBundle/Entity/Post.php
namespace Blogger\BlogBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
/**
* @ORM\Entity
* @ORM\Table(name="post")
*/

class Post
{
	/**
	* @ORM\Id
	* @ORM\Column(type="integer")
	* @ORM\GeneratedValue(strategy="AUTO")
	*/
	protected $id;

	/**
	* @ORM\Column(type="text")
	*/
	protected $categoria;

	/**
	* @ORM\Column(type="text")
	*/
	protected $nombre;
	
	/**
	* @ORM\Column(type="text")
	*/
	protected $descripcion;
}
?>