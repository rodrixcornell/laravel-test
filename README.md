# laravel-test
Testes de configurações com laravel

<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[British Software Development](https://www.britishsoftware.co)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- [UserInsights](https://userinsights.com)
- [Fragrantica](https://www.fragrantica.com)
- [SOFTonSOFA](https://softonsofa.com/)
- [User10](https://user10.com)
- [Soumettre.fr](https://soumettre.fr/)
- [CodeBrisk](https://codebrisk.com)
- [1Forge](https://1forge.com)
- [TECPRESSO](https://tecpresso.co.jp/)
- [Runtime Converter](http://runtimeconverter.com/)
- [WebL'Agence](https://weblagence.com/)
- [Invoice Ninja](https://www.invoiceninja.com)
- [iMi digital](https://www.imi-digital.de/)
- [Earthlink](https://www.earthlink.ro/)
- [Steadfast Collective](https://steadfastcollective.com/)
- [We Are The Robots Inc.](https://watr.mx/)
- [Understand.io](https://www.understand.io/)
- [Abdel Elrafa](https://abdelelrafa.com)
- [Hyper Host](https://hyper.host)
- [Appoly](https://www.appoly.co.uk)
- [OP.GG](https://op.gg)
- [云软科技](http://www.yunruan.ltd/)

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

## Container Docker
- NginX, php-fpm & Oracle: docker-compose-nginx-oracle.yaml
- NginX, php-fpm & PostgreSQL: docker-compose-nginx-pgsql.yaml
- NginX & php-fpm: docker-compose-nginx.yaml
- php-cli "built-in web server" & Oracle: docker-compose-oracle.yaml
- php-cli "built-in web server" & PostgreSQL: docker-compose-pgsql.yaml
- php-cli "built-in web server": docker-compose.yaml

```bash
docker-compose --file docker-compose.yaml up --force-recreate --build --renew-anon-volumes --remove-orphans

# oracle
docker exec -it php-cli bash
./artisan migrate:fresh --verbose --force --seed

# force delete container
docker container rm -f pgsql adminer pgadmin4 php-cli
docker container rm -f pgsql adminer php-cli redmine
docker container rm -f mysql adminer php-cli redmine
docker container rm -f pgsql adminer nginx php-fpm
docker container rm -f oracle php-cli
docker container rm -f oracle nginx php-fpm
# pgsql & mysql
docker volume rm -f homestead_dbdata homestead_dbdata_admin homestead_files
# oracle
docker volume rm -f homestead_dbdata homestead_dbs homestead_files
```

## Laravel Melhores Práticas.
[Best Practices](https://www.laravelbestpractices.com).

## Migrate & Seed
- [How to seed your database using PHP laravel](https://www.codementor.io/@chinemeremnwoga/how-to-seed-your-database-using-php-laravel-10mhltm0ts).
- [Como fazer a propagação de banco de dados no Laravel](https://artisansweb.net/database-seeding-laravel).
- [Forçando o faker a falar nossa língua](https://medium.com/@vs0uz4/for%C3%A7ando-o-faker-a-falar-nossa-l%C3%ADngua-72d9ee73244c).
- [Faker é uma biblioteca PHP que gera dados falsos para você](https://github.com/fzaninotto/Faker).

## Localization
- Tradução do Laravel para português brasileiro (pt-BR) [lucascudo/laravel-pt-BR-localization](https://github.com/lucascudo/laravel-pt-BR-localization).
- A Laravel package for multilingual models [Astrotomic/laravel-translatable](https://docs.astrotomic.info/laravel-translatable).

## Laravel OCI8
- Installing Laravel OCI8: [yajra/laravel-oci8](https://yajrabox.com/docs/laravel-oci8/master/installation).
- [Utilizando Laravel e OCI8 em 4+1 passos](https://medium.com/@jhonatanvinicius/utilizando-laravel-e-oci8-em-4-passos-48278c4bb8cf).

## API RESTful
- [Construindo uma API RESTful com Laravel - Parte 1](https://rafaell-lycan.com/2015/construindo-restful-api-laravel-parte-1).
- [Construindo uma API RESTful com Laravel - Parte 2](https://rafaell-lycan.com/2015/construindo-restful-api-laravel-parte-2).
- [Construindo uma API RESTful com Laravel - Parte 3](https://rafaell-lycan.com/2016/construindo-restful-api-laravel-parte-3).

## Laravel and JWT
- [Laravel and JWT](https://blog.pusher.com/laravel-jwt).
- [JWT authentication for Lumen 5.4](https://dev.to/ziishaned/jwt-authentication-for-lumen-5-4-3d2m).
- [Build a JWT Authenticated API with Lumen(v5.8)](https://dev.to/ndiecodes/build-a-jwt-authenticated-api-with-lumen-2afm).
- [JWT Auth Guard for Lumen 5.4](https://github.com/gboyegadada/lumen-jwt).
- [Guide for setting up with Lumen? #1102](https://github.com/tymondesigns/jwt-auth/issues/1102).

## Técnicas de Controle de Acesso de Usuários
- [Artigo](https://blog.welrbraga.eti.br/?p=642).
- [Simple RBAC/ACL for Laravel 5.5 caching and permission groups](https://github.com/YaroslavMolchan/rbac).
- [Role based access control for Laravel 5](https://packagist.org/packages/visualappeal/laravel-rbac).
- [Two Best Laravel Packages to Manage Roles/Permissions](https://laravel-news.com/two-best-roles-permissions-packages).
- [Light-weight role-based permissions system for Laravel 6 built in Auth system](https://github.com/kodeine/laravel-acl).
- [Laravel RBAC (Role Based Access Control) Model Relationship](https://stackoverflow.com/questions/24301274/laravel-rbac-role-based-access-control-model-relationship).
- [Laravel authorization and roles permission management](https://medium.com/swlh/laravel-authorization-and-roles-permission-management-6d8f2043ea20).
- [laravel-permission](https://docs.spatie.be/laravel-permission/v3/introduction).

## Categoria de visualização hierárquica
- [Hierarchical Treeview Category Example in Laravel](https://www.codechief.org/article/hierarchical-treeview-category-example-in-laravel).
- [Laravel Treeview | Structure and Display Hierarchical Data Example](https://www.codechief.org/article/laravel-treeview-structure-and-display-hierarchical-data-example).
- [Structure and Display Hierarchical / Multi-level data in Laravel](https://www.5balloons.info/hierarchical-data-laravel-relationship-display).
- [Laravel - Category Treeview Hierarchical Structure Example with Demo](https://www.itsolutionstuff.com/post/laravel-5-category-treeview-hierarchical-structure-example-with-demoexample.html).

## Nesteds
- [Effective tree structures in Laravel 4-5](https://github.com/lazychaser/laravel-nestedset).
- [Criar menu dynamic usando conjuntos nesteds](https://php.docow.com/criar-menu-dynamic-usando-conjuntos-nesteds.html).
- [Implementing Nested Order Set in MySQL/PHP](https://stackoverflow.com/questions/43201104/implementing-nested-order-set-in-mysql-php).
- [Managing Hierarchical Data in MySQL](http://mikehillyer.com/articles/managing-hierarchical-data-in-mysql).
