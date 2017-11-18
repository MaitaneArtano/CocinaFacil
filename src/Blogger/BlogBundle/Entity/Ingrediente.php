<?php
// src/Blogger/BlogBundle/Entity/Ingrediente.php
namespace Blogger\BlogBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
/**
 * Blogger\BlogBundle\Entity\Ingrediente
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Blogger\BlogBundle\Entity\IngredienteRepository")
 * @ORM\HasLifecycleCallbacks()
 */
class Ingrediente
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
	protected $nombre;

	/**
	* @ORM\Column(type="text")
	*/
	protected $descripcion;

    /**
    * @ORM\ManyToMany(targetEntity="Post", mappedBy="ingredientes")
    */
    private $posts;

    public function __construct()
    {
        $this->posts = new ArrayCollection();
    }	

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Ingrediente
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return Ingrediente
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string 
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Add posts
     *
     * @param \Blogger\BlogBundle\Entity\Post $posts
     * @return Ingrediente
     */
    public function addPost(\Blogger\BlogBundle\Entity\Post $posts)
    {
        $this->posts[] = $posts;

        return $this;
    }

    /**
     * Remove posts
     *
     * @param \Blogger\BlogBundle\Entity\Post $posts
     */
    public function removePost(\Blogger\BlogBundle\Entity\Post $posts)
    {
        $this->posts->removeElement($posts);
    }

    public function __toString()
    {
        return $this->getNombre();
    }

    /**
     * Get posts
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getPosts()
    {
        return $this->posts;
    }
}
