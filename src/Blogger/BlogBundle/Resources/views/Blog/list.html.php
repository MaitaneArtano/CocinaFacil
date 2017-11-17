{# src/Blogger/BlogBundle/Resources/views/Blog/list.html.twig #}
{% extends "::layout.html.twig" %}
{% block title %}Recetas{% endblock %}

{% block body %}
	<h1>Recetas</h1>
	<ul>
		{% for post in posts %}
		<li>
			<a href="{{ path('blogger_blog_show', {'id': post.id}) }}">
				{{ post.nombre }}
			</a>
		</li>
		{% endfor %}
	</ul>
{% endblock %}