The API Platform framework
==========================

[![Join the chat at https://gitter.im/api-platform/api-platform](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/api-platform/api-platform?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

*The new breed of web frameworks*

[![API Platform](https://api-platform.com/images/api-platform-logo.27a08537.png)](https://api-platform.com)

The official project documentation is available **[on the API Platform website][31]**.

API Platform is a next-generation PHP web framework designed to create
API-first projects easily but without compromise in the field of extensibility and
flexibility:

* Use our awesome code generator to **bootstrap a fully-functional data model from
  [Schema.org][8] vocabularies** with ORM mapping and validation (you can also do
  it manually)
* **Expose in minutes an hypermedia REST API** that works out of the box by reusing
  entity metadata (ORM mapping, validation and serialization) ; that embraces [JSON-LD][1],
  [Hydra][2] and provides a ton of features (CRUD, validation and error handling,
  relation embedding, filters, ordering...)
* Enjoy the **beautiful automatically generated API documentation** (Swagger-like)
* Add easily **[JSON Web Token][25] or [OAuth][26] authentication**
* Create specs and tests with a **developer friendly API context system** on top
  of [Behat][10]
* Develop your website UI, webapp, mobile app or anything else you want using
  **your preferred client-side technologies**! Tested and approved with **AngularJS**
  (integration included), **Ionic**, **React** and **native mobile** apps

API Platform embraces open web standards (JSON-LD, Hydra, JWT, OAuth,
HTTP, HTML5...) and the [Linked Data][27] movement. Your API will automatically
expose structured data in Schema.org/JSON-LD. It means that your API Platform application
is usable **out of the box** with technologies of the semantic
web.

It also means that **your SEO will be improved** because **[Google recommends these
formats][28]**.
And yes, Google crawls full-Javascript applications [as well as old-fashioned ones][29].

Last but not least, API Platform is built on top of the [Symfony][5]
full-stack framework and follows its best practices. It means than you can:

* use **thousands of Symfony bundles** with API Platform
* integrate API Platform in **any existing Symfony application**
* reuse **all your Symfony skills** and benefit of the incredible
  amount of Symfony documentation available
* enjoy the popular [Doctrine ORM][6] (used by default, but fully optional: you can
  use the data provider you want, including but not limited to MongoDB ODM and ElasticSearch)

Install
-------

Use [Composer][3] to create your new project:

    composer create-project api-platform/api-platform my-api

Run the API
-----------

A demo application (a bookstore) is pre-installed.
Using local server
-------------------
* Run `app/console server:start` and open `http://localhost:8000` in any
  HTTP client to access the API


Using Docker
------------
* To activate the volumes you have to run `cp docker-compose.override.yml.dist docker-compose.override.yml`
* Run `docker-compose run api composer install && docker-compose up`

Start to hack
-------------
* Open `http://localhost:8000/doc` to read the HTML documentation an play
  with the sandbox
* Give a try to the [HydraConsole][4] client to leverage JSON-LD and Hydra
  features
* Build your first custom client using Javascript, CORS headers are already
  configured
What's inside?
--------------

API Platform provides rock solid foundations to build your project:

* [**The Schema Generator**][7] to generate PHP entities from [Schema.org][8] types with
Doctrine ORM mappings, Symfony validation and extended PHPDoc
* [**The API bundle**][9] to expose in minutes your entities as a JSON-LD and
 Hydra enabled hypermedia REST API
* [**NelmioApiDocBundle**][24] integrated with the API bundle to
automatically generate a beautiful human-readable documentation and a
sandbox to test the API
* [Behat][10] and [Behatch][11] configured to easily test the API
* The full power of the [**Symfony**][5] framework and its ecosystem
* **[Doctrine][6] ORM/DBAL**
* An AppBundle you can use to start coding
* Annotations enabled for everything
* Swiftmailer and Twig to create beautiful emails

It comes pre-configured with the following bundles:

  * [**Symfony**][5] - API Platform is built on top of the full-stack
    Symfony framework
  * [**API Platform's API bundle**][9] - Creates powerful Hypermedia APIs supporting JSON-LD
    and Hydra
  * [**NelmioCorsBundle**][12] - Support for CORS headers
  * [**NelmioApiDocBundle**][24] - Generates a human-readable documentation
  * [**FosHttpCacheBundle**][13] - Add powerful caching capacities, supports Varnish,
    Nginx a built-in PHP reverse proxy
  * [**SensioFrameworkExtraBundle**][14] - Adds several enhancements, including
    template and routing annotation capability
  * [**DoctrineBundle**][15] - Adds support for the Doctrine ORM
  * [**TwigBundle**][16] - Adds support for the Twig templating engine (useful
    in emails)
  * [**SecurityBundle**][17] - Authentication and roles by integrating Symfony's
    security component
  * [**SwiftmailerBundle**][18] - Adds support for Swiftmailer, a library for sending
    emails
  * [**MonologBundle**][19] - Adds support for Monolog, a logging library
  * **WebProfilerBundle** (in dev/test env) - Adds profiling functionality and
    the web debug toolbar
  * **SensioDistributionBundle** (in dev/test env) - Adds functionality for configuring
    and working with Symfony distributions
  * [**SensioGeneratorBundle**][20] (in dev/test env) - Adds code generation capabilities

All libraries and bundles included in API Platform are released under
the MIT or BSD license.

Authentication support
----------------------

Json Web Token is a lightweight and popular way to handle authentication in a
stateless way. Install [**LexikJWTAuthenticationBundle**][21] to adds JWT support
to API Platform.

Oauth support can also be easily added using [**FOSOAuthServerBundle**][22].

Enjoy!

Credits
-------

Created by [Kévin Dunglas][23]. Sponsored by [Les-Tilleuls.coop][30]
Commercial support available upon request.

[1]:  http://json-ld.org
[2]:  http://hydra-cg.com
[3]:  https://getcomposer.org
[4]:  http://www.hydra-cg.com/
[5]:  https://symfony.com
[6]:  http://www.doctrine-project.org
[7]:  https://api-platform.com/doc/1.0/schema-generator/
[8]:  http://schema.org
[9]:  https://api-platform.com/doc/1.0/api-bundle/
[10]: https://behat.readthedocs.org
[11]: https://github.com/Behatch/contexts
[12]: https://github.com/nelmio/NelmioCorsBundle
[13]: https://foshttpcachebundle.readthedocs.org
[14]: https://symfony.com/doc/current/bundles/SensioFrameworkExtraBundle/index.html
[15]: https://symfony.com/doc/current/book/doctrine.html
[16]: https://symfony.com/doc/current/book/templating.html
[17]: https://symfony.com/doc/current/book/security.html
[18]: https://symfony.com/doc/current/cookbook/email.html
[19]: https://symfony.com/doc/current/cookbook/logging/monolog.html
[20]: https://symfony.com/doc/current/bundles/SensioGeneratorBundle/index.html
[21]: https://github.com/lexik/LexikJWTAuthenticationBundle
[22]: https://github.com/FriendsOfSymfony/FOSOAuthServerBundle
[23]: https://dunglas.fr
[24]: https://github.com/nelmio/NelmioApiDocBundle
[25]: http://jwt.io/
[26]: http://oauth.net/
[27]: https://en.wikipedia.org/wiki/Linked_data
[28]: https://developers.google.com/structured-data/
[29]: http://searchengineland.com/tested-googlebot-crawls-javascript-heres-learned-220157
[30]: https://les-tilleuls.coop
[31]: https://api-platform.com
