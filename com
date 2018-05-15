{
    "_readme": [
        "This file locks the dependencies of your project to a known state",
        "Read more about it at https://getcomposer.org/doc/01-basic-usage.md#installing-dependencies",
        "This file is @generated automatically"
    ],
    "content-hash": "2537a42b79e7c415f91668d433ede32d",
    "packages": [
        {
            "name": "artesaos/seotools",
            "version": "v0.11.1",
            "source": {
                "type": "git",
                "url": "https://github.com/artesaos/seotools.git",
                "reference": "c6d22055be1f730cfaa589b9e71ddd92c397606e"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/artesaos/seotools/c6d22055be1f730cfaa589b9e71ddd92c397606e.zip",
                "reference": "c6d22055be1f730cfaa589b9e71ddd92c397606e",
                "shasum": ""
            },
            "require": {
                "illuminate/config": "~5",
                "illuminate/support": "~5",
                "php": ">=7.0"
            },
            "require-dev": {
                "mockery/mockery": "^0.9.4",
                "orchestra/testbench": "~3.0",
                "phpspec/phpspec": "2.1.x",
                "phpunit/phpunit": "^4.0|^5.0"
            },
            "type": "library",
            "extra": {
                "laravel": {
                    "providers": [
                        "Artesaos\\SEOTools\\Providers\\SEOToolsServiceProvider"
                    ],
                    "aliases": {
                        "SEOMeta": "Artesaos\\SEOTools\\Facades\\SEOMeta",
                        "OpenGraph": "Artesaos\\SEOTools\\Facades\\OpenGraph",
                        "Twitter": "Artesaos\\SEOTools\\Facades\\TwitterCard",
                        "SEO": "Artesaos\\SEOTools\\Facades\\SEOTools"
                    }
                }
            },
            "autoload": {
                "psr-4": {
                    "Artesaos\\SEOTools\\": "src/SEOTools/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Vinicius",
                    "email": "luiz.vinicius73@gmail.com"
                }
            ],
            "description": "SEO Tools for Laravel and Lumen",
            "keywords": [
                "laravel5",
                "lumen",
                "metatags",
                "opengraph",
                "seo",
                "seotools",
                "webmaster"
            ],
            "time": "2017-09-25T15:00:31+00:00"
        },
        {
            "name": "barryvdh/laravel-ide-helper",
            "version": "v2.4.3",
            "source": {
                "type": "git",
                "url": "https://github.com/barryvdh/laravel-ide-helper.git",
                "reference": "5c304db44fba8e9c4aa0c09739e59f7be7736fdd"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/barryvdh/laravel-ide-helper/5c304db44fba8e9c4aa0c09739e59f7be7736fdd.zip",
                "reference": "5c304db44fba8e9c4aa0c09739e59f7be7736fdd",
                "shasum": ""
            },
            "require": {
                "barryvdh/reflection-docblock": "^2.0.4",
                "illuminate/console": "^5.0,<5.7",
                "illuminate/filesystem": "^5.0,<5.7",
                "illuminate/support": "^5.0,<5.7",
                "php": ">=5.4.0",
                "symfony/class-loader": "^2.3|^3.0"
            },
            "require-dev": {
                "doctrine/dbal": "~2.3",
                "illuminate/config": "^5.0,<5.7",
                "illuminate/view": "^5.0,<5.7",
                "phpunit/phpunit": "4.*",
                "scrutinizer/ocular": "~1.1",
                "squizlabs/php_codesniffer": "~2.3"
            },
            "suggest": {
                "doctrine/dbal": "Load information from the database about models for phpdocs (~2.3)"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.3-dev"
                },
                "laravel": {
                    "providers": [
                        "Barryvdh\\LaravelIdeHelper\\IdeHelperServiceProvider"
                    ]
                }
            },
            "autoload": {
                "psr-4": {
                    "Barryvdh\\LaravelIdeHelper\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Barry vd. Heuvel",
                    "email": "barryvdh@gmail.com"
                }
            ],
            "description": "Laravel IDE Helper, generates correct PHPDocs for all Facade classes, to improve auto-completion.",
            "keywords": [
                "autocomplete",
                "codeintel",
                "helper",
                "ide",
                "laravel",
                "netbeans",
                "phpdoc",
                "phpstorm",
                "sublime"
            ],
            "time": "2018-02-08T07:56:07+00:00"
        },
        {
            "name": "barryvdh/reflection-docblock",
            "version": "v2.0.4",
            "source": {
                "type": "git",
                "url": "https://github.com/barryvdh/ReflectionDocBlock.git",
                "reference": "3dcbd98b5d9384a5357266efba8fd29884458e5c"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/barryvdh/ReflectionDocBlock/3dcbd98b5d9384a5357266efba8fd29884458e5c.zip",
                "reference": "3dcbd98b5d9384a5357266efba8fd29884458e5c",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.3"
            },
            "require-dev": {
                "phpunit/phpunit": "~4.0,<4.5"
            },
            "suggest": {
                "dflydev/markdown": "~1.0",
                "erusev/parsedown": "~1.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0.x-dev"
                }
            },
            "autoload": {
                "psr-0": {
                    "Barryvdh": [
                        "src/"
                    ]
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Mike van Riel",
                    "email": "mike.vanriel@naenius.com"
                }
            ],
            "time": "2016-06-13T19:28:20+00:00"
        },
        {
            "name": "dnoegel/php-xdg-base-dir",
            "version": "0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/dnoegel/php-xdg-base-dir.git",
                "reference": "265b8593498b997dc2d31e75b89f053b5cc9621a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/dnoegel/php-xdg-base-dir/zipball/265b8593498b997dc2d31e75b89f053b5cc9621a",
                "reference": "265b8593498b997dc2d31e75b89f053b5cc9621a",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.2"
            },
            "require-dev": {
                "phpunit/phpunit": "@stable"
            },
            "type": "project",
            "autoload": {
                "psr-4": {
                    "XdgBaseDir\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "description": "implementation of xdg base directory specification for php",
            "time": "2014-10-24T07:27:01+00:00"
        },
        {
            "name": "doctrine/annotations",
            "version": "v1.6.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/annotations.git",
                "reference": "c7f2050c68a9ab0bdb0f98567ec08d80ea7d24d5"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/doctrine/annotations/c7f2050c68a9ab0bdb0f98567ec08d80ea7d24d5.zip",
                "reference": "c7f2050c68a9ab0bdb0f98567ec08d80ea7d24d5",
                "shasum": ""
            },
            "require": {
                "doctrine/lexer": "1.*",
                "php": "^7.1"
            },
            "require-dev": {
                "doctrine/cache": "1.*",
                "phpunit/phpunit": "^6.4"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.6.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\Annotations\\": "lib/Doctrine/Common/Annotations"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "Docblock Annotations Parser",
            "homepage": "http://www.doctrine-project.org",
            "keywords": [
                "annotations",
                "docblock",
                "parser"
            ],
            "time": "2017-12-06T07:11:42+00:00"
        },
        {
            "name": "doctrine/cache",
            "version": "v1.7.1",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/cache.git",
                "reference": "b3217d58609e9c8e661cd41357a54d926c4a2a1a"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/doctrine/cache/b3217d58609e9c8e661cd41357a54d926c4a2a1a.zip",
                "reference": "b3217d58609e9c8e661cd41357a54d926c4a2a1a",
                "shasum": ""
            },
            "require": {
                "php": "~7.1"
            },
            "conflict": {
                "doctrine/common": ">2.2,<2.4"
            },
            "require-dev": {
                "alcaeus/mongo-php-adapter": "^1.1",
                "mongodb/mongodb": "^1.1",
                "phpunit/phpunit": "^5.7",
                "predis/predis": "~1.0"
            },
            "suggest": {
                "alcaeus/mongo-php-adapter": "Required to use legacy MongoDB driver"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.7.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\Cache\\": "lib/Doctrine/Common/Cache"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "Caching library offering an object-oriented API for many cache backends",
            "homepage": "http://www.doctrine-project.org",
            "keywords": [
                "cache",
                "caching"
            ],
            "time": "2017-08-25T07:02:50+00:00"
        },
        {
            "name": "doctrine/collections",
            "version": "v1.5.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/collections.git",
                "reference": "a01ee38fcd999f34d9bfbcee59dbda5105449cbf"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/doctrine/collections/a01ee38fcd999f34d9bfbcee59dbda5105449cbf.zip",
                "reference": "a01ee38fcd999f34d9bfbcee59dbda5105449cbf",
                "shasum": ""
            },
            "require": {
                "php": "^7.1"
            },
            "require-dev": {
                "doctrine/coding-standard": "~0.1@dev",
                "phpunit/phpunit": "^5.7"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.3.x-dev"
                }
            },
            "autoload": {
                "psr-0": {
                    "Doctrine\\Common\\Collections\\": "lib/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "Collections Abstraction library",
            "homepage": "http://www.doctrine-project.org",
            "keywords": [
                "array",
                "collections",
                "iterator"
            ],
            "time": "2017-07-22T10:37:32+00:00"
        },
        {
            "name": "doctrine/common",
            "version": "v2.8.1",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/common.git",
                "reference": "f68c297ce6455e8fd794aa8ffaf9fa458f6ade66"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/doctrine/common/f68c297ce6455e8fd794aa8ffaf9fa458f6ade66.zip",
                "reference": "f68c297ce6455e8fd794aa8ffaf9fa458f6ade66",
                "shasum": ""
            },
            "require": {
                "doctrine/annotations": "1.*",
                "doctrine/cache": "1.*",
                "doctrine/collections": "1.*",
                "doctrine/inflector": "1.*",
                "doctrine/lexer": "1.*",
                "php": "~7.1"
            },
            "require-dev": {
                "phpunit/phpunit": "^5.7"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.8.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\": "lib/Doctrine/Common"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "Common Library for Doctrine projects",
            "homepage": "http://www.doctrine-project.org",
            "keywords": [
                "annotations",
                "collections",
                "eventmanager",
                "persistence",
                "spl"
            ],
            "time": "2017-08-31T08:43:38+00:00"
        },
        {
            "name": "doctrine/dbal",
            "version": "v2.7.1",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/dbal.git",
                "reference": "11037b4352c008373561dc6fc836834eed80c3b5"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/doctrine/dbal/11037b4352c008373561dc6fc836834eed80c3b5.zip",
                "reference": "11037b4352c008373561dc6fc836834eed80c3b5",
                "shasum": ""
            },
            "require": {
                "doctrine/common": "^2.7.1",
                "ext-pdo": "*",
                "php": "^7.1"
            },
            "require-dev": {
                "doctrine/coding-standard": "^4.0",
                "phpunit/phpunit": "^7.0",
                "phpunit/phpunit-mock-objects": "!=3.2.4,!=3.2.5",
                "symfony/console": "^2.0.5||^3.0",
                "symfony/phpunit-bridge": "^3.4.5|^4.0.5"
            },
            "suggest": {
                "symfony/console": "For helpful console commands such as SQL execution and import of files."
            },
            "bin": [
                "bin/doctrine-dbal"
            ],
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.7.x-dev"
                }
            },
            "autoload": {
                "psr-0": {
                    "Doctrine\\DBAL\\": "lib/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                }
            ],
            "description": "Database Abstraction Layer",
            "homepage": "http://www.doctrine-project.org",
            "keywords": [
                "database",
                "dbal",
                "persistence",
                "queryobject"
            ],
            "time": "2018-04-07T18:44:18+00:00"
        },
        {
            "name": "doctrine/inflector",
            "version": "v1.3.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/inflector.git",
                "reference": "5527a48b7313d15261292c149e55e26eae771b0a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/inflector/zipball/5527a48b7313d15261292c149e55e26eae771b0a",
                "reference": "5527a48b7313d15261292c149e55e26eae771b0a",
                "shasum": ""
            },
            "require": {
                "php": "^7.1"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.2"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.3.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\Inflector\\": "lib/Doctrine/Common/Inflector"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "Common String Manipulations with regard to casing and singular/plural rules.",
            "homepage": "http://www.doctrine-project.org",
            "keywords": [
                "inflection",
                "pluralize",
                "singularize",
                "string"
            ],
            "time": "2018-01-09T20:05:19+00:00"
        },
        {
            "name": "doctrine/lexer",
            "version": "v1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/lexer.git",
                "reference": "83893c552fd2045dd78aef794c31e694c37c0b8c"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/lexer/zipball/83893c552fd2045dd78aef794c31e694c37c0b8c",
                "reference": "83893c552fd2045dd78aef794c31e694c37c0b8c",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.2"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-0": {
                    "Doctrine\\Common\\Lexer\\": "lib/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "Base library for a lexer that can be used in Top-Down, Recursive Descent Parsers.",
            "homepage": "http://www.doctrine-project.org",
            "keywords": [
                "lexer",
                "parser"
            ],
            "time": "2014-09-09T13:34:57+00:00"
        },
        {
            "name": "dragonmantank/cron-expression",
            "version": "v2.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/dragonmantank/cron-expression.git",
                "reference": "3f00985deec8df53d4cc1e5c33619bda1ee309a5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/dragonmantank/cron-expression/zipball/3f00985deec8df53d4cc1e5c33619bda1ee309a5",
                "reference": "3f00985deec8df53d4cc1e5c33619bda1ee309a5",
                "shasum": ""
            },
            "require": {
                "php": ">=7.0.0"
            },
            "require-dev": {
                "phpunit/phpunit": "~6.4"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Cron\\": "src/Cron/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                },
                {
                    "name": "Chris Tankersley",
                    "email": "chris@ctankersley.com",
                    "homepage": "https://github.com/dragonmantank"
                }
            ],
            "description": "CRON for PHP: Calculate the next or previous run date and determine if a CRON expression is due",
            "keywords": [
                "cron",
                "schedule"
            ],
            "time": "2018-04-06T15:51:55+00:00"
        },
        {
            "name": "egulias/email-validator",
            "version": "2.1.4",
            "source": {
                "type": "git",
                "url": "https://github.com/egulias/EmailValidator.git",
                "reference": "8790f594151ca6a2010c6218e09d96df67173ad3"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/egulias/EmailValidator/8790f594151ca6a2010c6218e09d96df67173ad3.zip",
                "reference": "8790f594151ca6a2010c6218e09d96df67173ad3",
                "shasum": ""
            },
            "require": {
                "doctrine/lexer": "^1.0.1",
                "php": ">= 5.5"
            },
            "require-dev": {
                "dominicsayers/isemail": "dev-master",
                "phpunit/phpunit": "^4.8.35||^5.7||^6.0",
                "satooshi/php-coveralls": "^1.0.1"
            },
            "suggest": {
                "ext-intl": "PHP Internationalization Libraries are required to use the SpoofChecking validation"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Egulias\\EmailValidator\\": "EmailValidator"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Eduardo Gulias Davis"
                }
            ],
            "description": "A library for validating emails against several RFCs",
            "homepage": "https://github.com/egulias/EmailValidator",
            "keywords": [
                "email",
                "emailvalidation",
                "emailvalidator",
                "validation",
                "validator"
            ],
            "time": "2018-04-10T10:11:19+00:00"
        },
        {
            "name": "erusev/parsedown",
            "version": "1.7.1",
            "source": {
                "type": "git",
                "url": "https://github.com/erusev/parsedown.git",
                "reference": "92e9c27ba0e74b8b028b111d1b6f956a15c01fc1"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/erusev/parsedown/zipball/92e9c27ba0e74b8b028b111d1b6f956a15c01fc1",
                "reference": "92e9c27ba0e74b8b028b111d1b6f956a15c01fc1",
                "shasum": ""
            },
            "require": {
                "ext-mbstring": "*",
                "php": ">=5.3.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^4.8.35"
            },
            "type": "library",
            "autoload": {
                "psr-0": {
                    "Parsedown": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Emanuil Rusev",
                    "email": "hello@erusev.com",
                    "homepage": "http://erusev.com"
                }
            ],
            "description": "Parser for Markdown.",
            "homepage": "http://parsedown.org",
            "keywords": [
                "markdown",
                "parser"
            ],
            "time": "2018-03-08T01:11:30+00:00"
        },
        {
            "name": "ezyang/htmlpurifier",
            "version": "v4.10.0",
            "source": {
                "type": "git",
                "url": "https://github.com/ezyang/htmlpurifier.git",
                "reference": "d85d39da4576a6934b72480be6978fb10c860021"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/ezyang/htmlpurifier/d85d39da4576a6934b72480be6978fb10c860021.zip",
                "reference": "d85d39da4576a6934b72480be6978fb10c860021",
                "shasum": ""
            },
            "require": {
                "php": ">=5.2"
            },
            "require-dev": {
                "simpletest/simpletest": "^1.1"
            },
            "type": "library",
            "autoload": {
                "psr-0": {
                    "HTMLPurifier": "library/"
                },
                "files": [
                    "library/HTMLPurifier.composer.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "LGPL"
            ],
            "authors": [
                {
                    "name": "Edward Z. Yang",
                    "email": "admin@htmlpurifier.org",
                    "homepage": "http://ezyang.com"
                }
            ],
            "description": "Standards compliant HTML filter written in PHP",
            "homepage": "http://htmlpurifier.org/",
            "keywords": [
                "html"
            ],
            "time": "2018-02-23T01:58:20+00:00"
        },
        {
            "name": "facuz/laravel-themes",
            "version": "3.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/FaCuZ/laravel-theme.git",
                "reference": "0be7a1e790b18eed850c1abdcf974061f3eb7b6d"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/FaCuZ/laravel-theme/0be7a1e790b18eed850c1abdcf974061f3eb7b6d.zip",
                "reference": "0be7a1e790b18eed850c1abdcf974061f3eb7b6d",
                "shasum": ""
            },
            "require": {
                "jeremeamia/superclosure": "^2.0",
                "php": ">=5.4.0"
            },
            "require-dev": {
                "illuminate/support": ">=5.0.1"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Facuz\\Theme\\": "src/"
                },
                "classmap": [
                    "src/Exceptions.php"
                ],
                "files": [
                    "src/helpers.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Teepluss",
                    "email": "admin@laravel.in.th"
                },
                {
                    "name": "FaCuZ",
                    "email": "indis@indis.com.ar"
                }
            ],
            "description": "Theme will help you organize your themes inside Laravel projects easily and maintain its related assets, layouts and partials for the theme in single directory. (Based on teepluss/theme)",
            "homepage": "https://github.com/facuz/laravel-theme",
            "keywords": [
                "asset",
                "laravel",
                "layout",
                "theme",
                "widget"
            ],
            "time": "2018-03-02T21:51:23+00:00"
        },
        {
            "name": "fideloper/proxy",
            "version": "4.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/fideloper/TrustedProxy.git",
                "reference": "cf8a0ca4b85659b9557e206c90110a6a4dba980a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/fideloper/TrustedProxy/zipball/cf8a0ca4b85659b9557e206c90110a6a4dba980a",
                "reference": "cf8a0ca4b85659b9557e206c90110a6a4dba980a",
                "shasum": ""
            },
            "require": {
                "illuminate/contracts": "~5.0",
                "php": ">=5.4.0"
            },
            "require-dev": {
                "illuminate/http": "~5.6",
                "mockery/mockery": "~1.0",
                "phpunit/phpunit": "^6.0"
            },
            "type": "library",
            "extra": {
                "laravel": {
                    "providers": [
                        "Fideloper\\Proxy\\TrustedProxyServiceProvider"
                    ]
                }
            },
            "autoload": {
                "psr-4": {
                    "Fideloper\\Proxy\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Chris Fidao",
                    "email": "fideloper@gmail.com"
                }
            ],
            "description": "Set trusted proxies for Laravel",
            "keywords": [
                "load balancing",
                "proxy",
                "trusted proxy"
            ],
            "time": "2018-02-07T20:20:57+00:00"
        },
        {
            "name": "guzzlehttp/guzzle",
            "version": "6.3.3",
            "source": {
                "type": "git",
                "url": "https://github.com/guzzle/guzzle.git",
                "reference": "407b0cb880ace85c9b63c5f9551db498cb2d50ba"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/guzzle/guzzle/407b0cb880ace85c9b63c5f9551db498cb2d50ba.zip",
                "reference": "407b0cb880ace85c9b63c5f9551db498cb2d50ba",
                "shasum": ""
            },
            "require": {
                "guzzlehttp/promises": "^1.0",
                "guzzlehttp/psr7": "^1.4",
                "php": ">=5.5"
            },
            "require-dev": {
                "ext-curl": "*",
                "phpunit/phpunit": "^4.8.35 || ^5.7 || ^6.4 || ^7.0",
                "psr/log": "^1.0"
            },
            "suggest": {
                "psr/log": "Required for using the Log middleware"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "6.3-dev"
                }
            },
            "autoload": {
                "files": [
                    "src/functions_include.php"
                ],
                "psr-4": {
                    "GuzzleHttp\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                }
            ],
            "description": "Guzzle is a PHP HTTP client library",
            "homepage": "http://guzzlephp.org/",
            "keywords": [
                "client",
                "curl",
                "framework",
                "http",
                "http client",
                "rest",
                "web service"
            ],
            "time": "2018-04-22T15:46:56+00:00"
        },
        {
            "name": "guzzlehttp/promises",
            "version": "v1.3.1",
            "source": {
                "type": "git",
                "url": "https://github.com/guzzle/promises.git",
                "reference": "a59da6cf61d80060647ff4d3eb2c03a2bc694646"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/guzzle/promises/a59da6cf61d80060647ff4d3eb2c03a2bc694646.zip",
                "reference": "a59da6cf61d80060647ff4d3eb2c03a2bc694646",
                "shasum": ""
            },
            "require": {
                "php": ">=5.5.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^4.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.4-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "GuzzleHttp\\Promise\\": "src/"
                },
                "files": [
                    "src/functions_include.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                }
            ],
            "description": "Guzzle promises library",
            "keywords": [
                "promise"
            ],
            "time": "2016-12-20T10:07:11+00:00"
        },
        {
            "name": "guzzlehttp/psr7",
            "version": "1.4.2",
            "source": {
                "type": "git",
                "url": "https://github.com/guzzle/psr7.git",
                "reference": "f5b8a8512e2b58b0071a7280e39f14f72e05d87c"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/guzzle/psr7/f5b8a8512e2b58b0071a7280e39f14f72e05d87c.zip",
                "reference": "f5b8a8512e2b58b0071a7280e39f14f72e05d87c",
                "shasum": ""
            },
            "require": {
                "php": ">=5.4.0",
                "psr/http-message": "~1.0"
            },
            "provide": {
                "psr/http-message-implementation": "1.0"
            },
            "require-dev": {
                "phpunit/phpunit": "~4.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.4-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "GuzzleHttp\\Psr7\\": "src/"
                },
                "files": [
                    "src/functions_include.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                },
                {
                    "name": "Tobias Schultze",
                    "homepage": "https://github.com/Tobion"
                }
            ],
            "description": "PSR-7 message implementation that also provides common utility methods",
            "keywords": [
                "http",
                "message",
                "request",
                "response",
                "stream",
                "uri",
                "url"
            ],
            "time": "2017-03-20T17:10:46+00:00"
        },
        {
            "name": "intervention/image",
            "version": "2.4.1",
            "source": {
                "type": "git",
                "url": "https://github.com/Intervention/image.git",
                "reference": "3603dbcc9a17d307533473246a6c58c31cf17919"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/Intervention/image/3603dbcc9a17d307533473246a6c58c31cf17919.zip",
                "reference": "3603dbcc9a17d307533473246a6c58c31cf17919",
                "shasum": ""
            },
            "require": {
                "ext-fileinfo": "*",
                "guzzlehttp/psr7": "~1.1",
                "php": ">=5.4.0"
            },
            "require-dev": {
                "mockery/mockery": "~0.9.2",
                "phpunit/phpunit": "^4.8 || ^5.7"
            },
            "suggest": {
                "ext-gd": "to use GD library based image processing.",
                "ext-imagick": "to use Imagick based image processing.",
                "intervention/imagecache": "Caching extension for the Intervention Image library"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.3-dev"
                },
                "laravel": {
                    "providers": [
                        "Intervention\\Image\\ImageServiceProvider"
                    ],
                    "aliases": {
                        "Image": "Intervention\\Image\\Facades\\Image"
                    }
                }
            },
            "autoload": {
                "psr-4": {
                    "Intervention\\Image\\": "src/Intervention/Image"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Oliver Vogel",
                    "email": "oliver@olivervogel.com",
                    "homepage": "http://olivervogel.com/"
                }
            ],
            "description": "Image handling and manipulation library with support for Laravel integration",
            "homepage": "http://image.intervention.io/",
            "keywords": [
                "gd",
                "image",
                "imagick",
                "laravel",
                "thumbnail",
                "watermark"
            ],
            "time": "2017-09-21T16:29:17+00:00"
        },
        {
            "name": "jakub-onderka/php-console-color",
            "version": "0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/JakubOnderka/PHP-Console-Color.git",
                "reference": "e0b393dacf7703fc36a4efc3df1435485197e6c1"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/JakubOnderka/PHP-Console-Color/zipball/e0b393dacf7703fc36a4efc3df1435485197e6c1",
                "reference": "e0b393dacf7703fc36a4efc3df1435485197e6c1",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.2"
            },
            "require-dev": {
                "jakub-onderka/php-code-style": "1.0",
                "jakub-onderka/php-parallel-lint": "0.*",
                "jakub-onderka/php-var-dump-check": "0.*",
                "phpunit/phpunit": "3.7.*",
                "squizlabs/php_codesniffer": "1.*"
            },
            "type": "library",
            "autoload": {
                "psr-0": {
                    "JakubOnderka\\PhpConsoleColor": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-2-Clause"
            ],
            "authors": [
                {
                    "name": "Jakub Onderka",
                    "email": "jakub.onderka@gmail.com",
                    "homepage": "http://www.acci.cz"
                }
            ],
            "time": "2014-04-08T15:00:19+00:00"
        },
        {
            "name": "jakub-onderka/php-console-highlighter",
            "version": "v0.3.2",
            "source": {
                "type": "git",
                "url": "https://github.com/JakubOnderka/PHP-Console-Highlighter.git",
                "reference": "7daa75df45242c8d5b75a22c00a201e7954e4fb5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/JakubOnderka/PHP-Console-Highlighter/zipball/7daa75df45242c8d5b75a22c00a201e7954e4fb5",
                "reference": "7daa75df45242c8d5b75a22c00a201e7954e4fb5",
                "shasum": ""
            },
            "require": {
                "jakub-onderka/php-console-color": "~0.1",
                "php": ">=5.3.0"
            },
            "require-dev": {
                "jakub-onderka/php-code-style": "~1.0",
                "jakub-onderka/php-parallel-lint": "~0.5",
                "jakub-onderka/php-var-dump-check": "~0.1",
                "phpunit/phpunit": "~4.0",
                "squizlabs/php_codesniffer": "~1.5"
            },
            "type": "library",
            "autoload": {
                "psr-0": {
                    "JakubOnderka\\PhpConsoleHighlighter": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jakub Onderka",
                    "email": "acci@acci.cz",
                    "homepage": "http://www.acci.cz/"
                }
            ],
            "time": "2015-04-20T18:58:01+00:00"
        },
        {
            "name": "jeremeamia/SuperClosure",
            "version": "2.4.0",
            "source": {
                "type": "git",
                "url": "https://github.com/jeremeamia/super_closure.git",
                "reference": "5707d5821b30b9a07acfb4d76949784aaa0e9ce9"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/jeremeamia/super_closure/5707d5821b30b9a07acfb4d76949784aaa0e9ce9.zip",
                "reference": "5707d5821b30b9a07acfb4d76949784aaa0e9ce9",
                "shasum": ""
            },
            "require": {
                "nikic/php-parser": "^1.2|^2.0|^3.0|^4.0",
                "php": ">=5.4",
                "symfony/polyfill-php56": "^1.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^4.0|^5.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.4-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "SuperClosure\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jeremy Lindblom",
                    "email": "jeremeamia@gmail.com",
                    "homepage": "https://github.com/jeremeamia",
                    "role": "Developer"
                }
            ],
            "description": "Serialize Closure objects, including their context and binding",
            "homepage": "https://github.com/jeremeamia/super_closure",
            "keywords": [
                "closure",
                "function",
                "lambda",
                "parser",
                "serializable",
                "serialize",
                "tokenizer"
            ],
            "time": "2018-03-21T22:21:57+00:00"
        },
        {
            "name": "jiaxincui/closure-table",
            "version": "2.1.2",
            "source": {
                "type": "git",
                "url": "https://github.com/jiaxincui/closure-table.git",
                "reference": "eb51ec38b882f92215815c9608019bd6509b269f"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/jiaxincui/closure-table/eb51ec38b882f92215815c9608019bd6509b269f.zip",
                "reference": "eb51ec38b882f92215815c9608019bd6509b269f",
                "shasum": ""
            },
            "require": {
                "illuminate/database": "~5.0",
                "illuminate/support": "~5.0",
                "php": ">=5.6.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Jiaxincui\\ClosureTable\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "jiaxincui",
                    "email": "jenkincei@hotmail.com",
                    "role": "Developer"
                }
            ],
            "description": "A closure table tree package for laravel eloquent",
            "keywords": [
                "closure-table",
                "eloquent",
                "laravel",
                "laravel-tree",
                "tree"
            ],
            "time": "2018-02-25T15:25:17+00:00"
        },
        {
            "name": "laravel/framework",
            "version": "v5.6.21",
            "source": {
                "type": "git",
                "url": "https://github.com/laravel/framework.git",
                "reference": "458a89b1c5ff73072c27308566f444c790f76f28"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/laravel/framework/458a89b1c5ff73072c27308566f444c790f76f28.zip",
                "reference": "458a89b1c5ff73072c27308566f444c790f76f28",
                "shasum": ""
            },
            "require": {
                "doctrine/inflector": "~1.1",
                "dragonmantank/cron-expression": "~2.0",
                "erusev/parsedown": "~1.7",
                "ext-mbstring": "*",
                "ext-openssl": "*",
                "league/flysystem": "^1.0.8",
                "monolog/monolog": "~1.12",
                "nesbot/carbon": "1.25.*",
                "php": "^7.1.3",
                "psr/container": "~1.0",
                "psr/simple-cache": "^1.0",
                "ramsey/uuid": "^3.7",
                "swiftmailer/swiftmailer": "~6.0",
                "symfony/console": "~4.0",
                "symfony/debug": "~4.0",
                "symfony/finder": "~4.0",
                "symfony/http-foundation": "~4.0",
                "symfony/http-kernel": "~4.0",
                "symfony/process": "~4.0",
                "symfony/routing": "~4.0",
                "symfony/var-dumper": "~4.0",
                "tijsverkoyen/css-to-inline-styles": "^2.2.1",
                "vlucas/phpdotenv": "~2.2"
            },
            "conflict": {
                "tightenco/collect": "<5.5.33"
            },
            "replace": {
                "illuminate/auth": "self.version",
                "illuminate/broadcasting": "self.version",
                "illuminate/bus": "self.version",
                "illuminate/cache": "self.version",
                "illuminate/config": "self.version",
                "illuminate/console": "self.version",
                "illuminate/container": "self.version",
                "illuminate/contracts": "self.version",
                "illuminate/cookie": "self.version",
                "illuminate/database": "self.version",
                "illuminate/encryption": "self.version",
                "illuminate/events": "self.version",
                "illuminate/filesystem": "self.version",
                "illuminate/hashing": "self.version",
                "illuminate/http": "self.version",
                "illuminate/log": "self.version",
                "illuminate/mail": "self.version",
                "illuminate/notifications": "self.version",
                "illuminate/pagination": "self.version",
                "illuminate/pipeline": "self.version",
                "illuminate/queue": "self.version",
                "illuminate/redis": "self.version",
                "illuminate/routing": "self.version",
                "illuminate/session": "self.version",
                "illuminate/support": "self.version",
                "illuminate/translation": "self.version",
                "illuminate/validation": "self.version",
                "illuminate/view": "self.version"
            },
            "require-dev": {
                "aws/aws-sdk-php": "~3.0",
                "doctrine/dbal": "~2.6",
                "filp/whoops": "^2.1.4",
                "league/flysystem-cached-adapter": "~1.0",
                "mockery/mockery": "~1.0",
                "moontoast/math": "^1.1",
                "orchestra/testbench-core": "3.6.*",
                "pda/pheanstalk": "~3.0",
                "phpunit/phpunit": "~7.0",
                "predis/predis": "^1.1.1",
                "symfony/css-selector": "~4.0",
                "symfony/dom-crawler": "~4.0"
            },
            "suggest": {
                "aws/aws-sdk-php": "Required to use the SQS queue driver and SES mail driver (~3.0).",
                "doctrine/dbal": "Required to rename columns and drop SQLite columns (~2.6).",
                "ext-pcntl": "Required to use all features of the queue worker.",
                "ext-posix": "Required to use all features of the queue worker.",
                "fzaninotto/faker": "Required to use the eloquent factory builder (~1.4).",
                "guzzlehttp/guzzle": "Required to use the Mailgun and Mandrill mail drivers and the ping methods on schedules (~6.0).",
                "laravel/tinker": "Required to use the tinker console command (~1.0).",
                "league/flysystem-aws-s3-v3": "Required to use the Flysystem S3 driver (~1.0).",
                "league/flysystem-cached-adapter": "Required to use the Flysystem cache (~1.0).",
                "league/flysystem-rackspace": "Required to use the Flysystem Rackspace driver (~1.0).",
                "league/flysystem-sftp": "Required to use the Flysystem SFTP driver (~1.0).",
                "nexmo/client": "Required to use the Nexmo transport (~1.0).",
                "pda/pheanstalk": "Required to use the beanstalk queue driver (~3.0).",
                "predis/predis": "Required to use the redis cache and queue drivers (~1.0).",
                "pusher/pusher-php-server": "Required to use the Pusher broadcast driver (~3.0).",
                "symfony/css-selector": "Required to use some of the crawler integration testing tools (~4.0).",
                "symfony/dom-crawler": "Required to use most of the crawler integration testing tools (~4.0).",
                "symfony/psr-http-message-bridge": "Required to psr7 bridging features (~1.0)."
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "5.6-dev"
                }
            },
            "autoload": {
                "files": [
                    "src/Illuminate/Foundation/helpers.php",
                    "src/Illuminate/Support/helpers.php"
                ],
                "psr-4": {
                    "Illuminate\\": "src/Illuminate/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Taylor Otwell",
                    "email": "taylor@laravel.com"
                }
            ],
            "description": "The Laravel Framework.",
            "homepage": "https://laravel.com",
            "keywords": [
                "framework",
                "laravel"
            ],
            "time": "2018-05-08T13:30:15+00:00"
        },
        {
            "name": "laravel/tinker",
            "version": "v1.0.6",
            "source": {
                "type": "git",
                "url": "https://github.com/laravel/tinker.git",
                "reference": "b22fe905fcefdffae76b011e27c7ac09e07e052b"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/laravel/tinker/b22fe905fcefdffae76b011e27c7ac09e07e052b.zip",
                "reference": "b22fe905fcefdffae76b011e27c7ac09e07e052b",
                "shasum": ""
            },
            "require": {
                "illuminate/console": "~5.1",
                "illuminate/contracts": "~5.1",
                "illuminate/support": "~5.1",
                "php": ">=5.5.9",
                "psy/psysh": "0.7.*|0.8.*|0.9.*",
                "symfony/var-dumper": "~3.0|~4.0"
            },
            "require-dev": {
                "phpunit/phpunit": "~4.0|~5.0"
            },
            "suggest": {
                "illuminate/database": "The Illuminate Database package (~5.1)."
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0-dev"
                },
                "laravel": {
                    "providers": [
                        "Laravel\\Tinker\\TinkerServiceProvider"
                    ]
                }
            },
            "autoload": {
                "psr-4": {
                    "Laravel\\Tinker\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Taylor Otwell",
                    "email": "taylor@laravel.com"
                }
            ],
            "description": "Powerful REPL for the Laravel framework.",
            "keywords": [
                "REPL",
                "Tinker",
                "laravel",
                "psysh"
            ],
            "time": "2018-04-16T12:10:37+00:00"
        },
        {
            "name": "league/flysystem",
            "version": "1.0.45",
            "source": {
                "type": "git",
                "url": "https://github.com/thephpleague/flysystem.git",
                "reference": "a99f94e63b512d75f851b181afcdf0ee9ebef7e6"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/thephpleague/flysystem/a99f94e63b512d75f851b181afcdf0ee9ebef7e6.zip",
                "reference": "a99f94e63b512d75f851b181afcdf0ee9ebef7e6",
                "shasum": ""
            },
            "require": {
                "php": ">=5.5.9"
            },
            "conflict": {
                "league/flysystem-sftp": "<1.0.6"
            },
            "require-dev": {
                "ext-fileinfo": "*",
                "phpspec/phpspec": "^3.4",
                "phpunit/phpunit": "^5.7"
            },
            "suggest": {
                "ext-fileinfo": "Required for MimeType",
                "ext-ftp": "Allows you to use FTP server storage",
                "ext-openssl": "Allows you to use FTPS server storage",
                "league/flysystem-aws-s3-v2": "Allows you to use S3 storage with AWS SDK v2",
                "league/flysystem-aws-s3-v3": "Allows you to use S3 storage with AWS SDK v3",
                "league/flysystem-azure": "Allows you to use Windows Azure Blob storage",
                "league/flysystem-cached-adapter": "Flysystem adapter decorator for metadata caching",
                "league/flysystem-eventable-filesystem": "Allows you to use EventableFilesystem",
                "league/flysystem-rackspace": "Allows you to use Rackspace Cloud Files",
                "league/flysystem-sftp": "Allows you to use SFTP server storage via phpseclib",
                "league/flysystem-webdav": "Allows you to use WebDAV storage",
                "league/flysystem-ziparchive": "Allows you to use ZipArchive adapter",
                "spatie/flysystem-dropbox": "Allows you to use Dropbox storage",
                "srmklive/flysystem-dropbox-v2": "Allows you to use Dropbox storage for PHP 5 applications"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.1-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "League\\Flysystem\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Frank de Jonge",
                    "email": "info@frenky.net"
                }
            ],
            "description": "Filesystem abstraction: Many filesystems, one API.",
            "keywords": [
                "Cloud Files",
                "WebDAV",
                "abstraction",
                "aws",
                "cloud",
                "copy.com",
                "dropbox",
                "file systems",
                "files",
                "filesystem",
                "filesystems",
                "ftp",
                "rackspace",
                "remote",
                "s3",
                "sftp",
                "storage"
            ],
            "time": "2018-05-07T08:44:23+00:00"
        },
        {
            "name": "league/glide",
            "version": "1.3.0",
            "source": {
                "type": "git",
                "url": "https://github.com/thephpleague/glide.git",
                "reference": "bd29f65c9666abd72e66916e0573801e435ca878"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/thephpleague/glide/bd29f65c9666abd72e66916e0573801e435ca878.zip",
                "reference": "bd29f65c9666abd72e66916e0573801e435ca878",
                "shasum": ""
            },
            "require": {
                "intervention/image": "^2.1",
                "league/flysystem": "^1.0",
                "php": "^5.4 | ^7.0",
                "psr/http-message": "^1.0"
            },
            "require-dev": {
                "mockery/mockery": "~0.9",
                "phpunit/php-token-stream": "^1.4",
                "phpunit/phpunit": "~4.4"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.1-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "League\\Glide\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jonathan Reinink",
                    "email": "jonathan@reinink.ca",
                    "homepage": "http://reinink.ca"
                }
            ],
            "description": "Wonderfully easy on-demand image manipulation library with an HTTP based API.",
            "homepage": "http://glide.thephpleague.com",
            "keywords": [
                "ImageMagick",
                "editing",
                "gd",
                "image",
                "imagick",
                "league",
                "manipulation",
                "processing"
            ],
            "time": "2018-02-12T23:28:25+00:00"
        },
        {
            "name": "mews/purifier",
            "version": "2.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/mewebstudio/Purifier.git",
                "reference": "7333435c9842e207f3381b7319b63122f8c9403e"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/mewebstudio/Purifier/7333435c9842e207f3381b7319b63122f8c9403e.zip",
                "reference": "7333435c9842e207f3381b7319b63122f8c9403e",
                "shasum": ""
            },
            "require": {
                "ezyang/htmlpurifier": "4.10.*",
                "illuminate/config": "5.0.* || 5.1.* || 5.2.* || 5.3.* || 5.4.* || 5.5.* || 5.6.*",
                "illuminate/filesystem": "5.0.* || 5.1.* || 5.2.* || 5.3.* || 5.4.* || 5.5.* || 5.6.*",
                "illuminate/support": "5.0.* || 5.1.* || 5.2.* || 5.3.* || 5.4.* || 5.5.* || 5.6.*",
                "php": ">=5.5.9"
            },
            "require-dev": {
                "graham-campbell/testbench": "^3.2",
                "mockery/mockery": "0.9.*",
                "phpunit/phpunit": "^4.8|^5.0",
                "scrutinizer/ocular": "^1.3"
            },
            "suggest": {
                "laravel/framework": "To test the Laravel bindings",
                "laravel/lumen-framework": "To test the Lumen bindings"
            },
            "type": "package",
            "extra": {
                "laravel": {
                    "providers": [
                        "Mews\\Purifier\\PurifierServiceProvider"
                    ],
                    "aliases": {
                        "Purifier": "Mews\\Purifier\\Facades\\Purifier"
                    }
                }
            },
            "autoload": {
                "psr-4": {
                    "Mews\\Purifier\\": "src/"
                },
                "files": [
                    "src/helpers.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Muharrem ERİN",
                    "email": "me@mewebstudio.com",
                    "homepage": "https://github.com/mewebstudio",
                    "role": "Developer"
                }
            ],
            "description": "Laravel 5 HtmlPurifier Package",
            "homepage": "https://github.com/mewebstudio/purifier",
            "keywords": [
                "Purifier",
                "htmlpurifier",
                "laravel5 HtmlPurifier",
                "laravel5 Purifier",
                "laravel5 Security",
                "security",
                "xss"
            ],
            "time": "2018-03-21T12:29:49+00:00"
        },
        {
            "name": "monolog/monolog",
            "version": "1.23.0",
            "source": {
                "type": "git",
                "url": "https://github.com/Seldaek/monolog.git",
                "reference": "fd8c787753b3a2ad11bc60c063cff1358a32a3b4"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/Seldaek/monolog/zipball/fd8c787753b3a2ad11bc60c063cff1358a32a3b4",
                "reference": "fd8c787753b3a2ad11bc60c063cff1358a32a3b4",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0",
                "psr/log": "~1.0"
            },
            "provide": {
                "psr/log-implementation": "1.0.0"
            },
            "require-dev": {
                "aws/aws-sdk-php": "^2.4.9 || ^3.0",
                "doctrine/couchdb": "~1.0@dev",
                "graylog2/gelf-php": "~1.0",
                "jakub-onderka/php-parallel-lint": "0.9",
                "php-amqplib/php-amqplib": "~2.4",
                "php-console/php-console": "^3.1.3",
                "phpunit/phpunit": "~4.5",
                "phpunit/phpunit-mock-objects": "2.3.0",
                "ruflin/elastica": ">=0.90 <3.0",
                "sentry/sentry": "^0.13",
                "swiftmailer/swiftmailer": "^5.3|^6.0"
            },
            "suggest": {
                "aws/aws-sdk-php": "Allow sending log messages to AWS services like DynamoDB",
                "doctrine/couchdb": "Allow sending log messages to a CouchDB server",
                "ext-amqp": "Allow sending log messages to an AMQP server (1.0+ required)",
                "ext-mongo": "Allow sending log messages to a MongoDB server",
                "graylog2/gelf-php": "Allow sending log messages to a GrayLog2 server",
                "mongodb/mongodb": "Allow sending log messages to a MongoDB server via PHP Driver",
                "php-amqplib/php-amqplib": "Allow sending log messages to an AMQP server using php-amqplib",
                "php-console/php-console": "Allow sending log messages to Google Chrome",
                "rollbar/rollbar": "Allow sending log messages to Rollbar",
                "ruflin/elastica": "Allow sending log messages to an Elastic Search server",
                "sentry/sentry": "Allow sending log messages to a Sentry server"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Monolog\\": "src/Monolog"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jordi Boggiano",
                    "email": "j.boggiano@seld.be",
                    "homepage": "http://seld.be"
                }
            ],
            "description": "Sends your logs to files, sockets, inboxes, databases and various web services",
            "homepage": "http://github.com/Seldaek/monolog",
            "keywords": [
                "log",
                "logging",
                "psr-3"
            ],
            "time": "2017-06-19T01:22:40+00:00"
        },
        {
            "name": "mpociot/laravel-test-factory-helper",
            "version": "0.5.0",
            "source": {
                "type": "git",
                "url": "https://github.com/mpociot/laravel-test-factory-helper.git",
                "reference": "3d122e7517454800f69531b6a3151b254da2a285"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/mpociot/laravel-test-factory-helper/3d122e7517454800f69531b6a3151b254da2a285.zip",
                "reference": "3d122e7517454800f69531b6a3151b254da2a285",
                "shasum": ""
            },
            "require": {
                "doctrine/dbal": "~2.3",
                "illuminate/console": "^5.0",
                "illuminate/filesystem": "^5.0",
                "illuminate/support": "^5.0",
                "php": ">=5.6.0",
                "symfony/class-loader": "^2.3|3.*"
            },
            "type": "library",
            "extra": {
                "laravel": {
                    "providers": [
                        "Mpociot\\LaravelTestFactoryHelper\\TestFactoryHelperServiceProvider"
                    ]
                }
            },
            "autoload": {
                "psr-4": {
                    "Mpociot\\LaravelTestFactoryHelper\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "description": "Generate Laravel test factories from your existing models",
            "keywords": [
                "factory",
                "laravel",
                "tests"
            ],
            "time": "2017-10-09T18:00:57+00:00"
        },
        {
            "name": "nesbot/carbon",
            "version": "1.25.0",
            "source": {
                "type": "git",
                "url": "https://github.com/briannesbitt/Carbon.git",
                "reference": "cbcf13da0b531767e39eb86e9687f5deba9857b4"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/briannesbitt/Carbon/zipball/cbcf13da0b531767e39eb86e9687f5deba9857b4",
                "reference": "cbcf13da0b531767e39eb86e9687f5deba9857b4",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.9",
                "symfony/translation": "~2.6 || ~3.0 || ~4.0"
            },
            "require-dev": {
                "friendsofphp/php-cs-fixer": "~2",
                "phpunit/phpunit": "^4.8.35 || ^5.7"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.23-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Carbon\\": "src/Carbon/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Brian Nesbitt",
                    "email": "brian@nesbot.com",
                    "homepage": "http://nesbot.com"
                }
            ],
            "description": "A simple API extension for DateTime.",
            "homepage": "http://carbon.nesbot.com",
            "keywords": [
                "date",
                "datetime",
                "time"
            ],
            "time": "2018-03-19T15:50:49+00:00"
        },
        {
            "name": "nicmart/tree",
            "version": "v0.2.7",
            "source": {
                "type": "git",
                "url": "https://github.com/nicmart/Tree.git",
                "reference": "0616b54bb49938e1a816141d7943db48ebf76938"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/nicmart/Tree/0616b54bb49938e1a816141d7943db48ebf76938.zip",
                "reference": "0616b54bb49938e1a816141d7943db48ebf76938",
                "shasum": ""
            },
            "require": {
                "php": ">=5.4"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Tree\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolò Martini",
                    "email": "nicmartnic@gmail.com"
                }
            ],
            "description": "A basic but flexible php tree data structure and a fluent tree builder implementation.",
            "time": "2015-08-20T20:50:35+00:00"
        },
        {
            "name": "nikic/php-parser",
            "version": "v4.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/nikic/PHP-Parser.git",
                "reference": "e4a54fa90a5cd8e8dd3fb4099942681731c5cdd3"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/nikic/PHP-Parser/e4a54fa90a5cd8e8dd3fb4099942681731c5cdd3.zip",
                "reference": "e4a54fa90a5cd8e8dd3fb4099942681731c5cdd3",
                "shasum": ""
            },
            "require": {
                "ext-tokenizer": "*",
                "php": ">=7.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.5 || ^7.0"
            },
            "bin": [
                "bin/php-parse"
            ],
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "PhpParser\\": "lib/PhpParser"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Nikita Popov"
                }
            ],
            "description": "A PHP parser written in PHP",
            "keywords": [
                "parser",
                "php"
            ],
            "time": "2018-03-25T17:35:16+00:00"
        },
        {
            "name": "paragonie/random_compat",
            "version": "v2.0.12",
            "source": {
                "type": "git",
                "url": "https://github.com/paragonie/random_compat.git",
                "reference": "258c89a6b97de7dfaf5b8c7607d0478e236b04fb"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/paragonie/random_compat/zipball/258c89a6b97de7dfaf5b8c7607d0478e236b04fb",
                "reference": "258c89a6b97de7dfaf5b8c7607d0478e236b04fb",
                "shasum": ""
            },
            "require": {
                "php": ">=5.2.0"
            },
            "require-dev": {
                "phpunit/phpunit": "4.*|5.*"
            },
            "suggest": {
                "ext-libsodium": "Provides a modern crypto API that can be used to generate random bytes."
            },
            "type": "library",
            "autoload": {
                "files": [
                    "lib/random.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Paragon Initiative Enterprises",
                    "email": "security@paragonie.com",
                    "homepage": "https://paragonie.com"
                }
            ],
            "description": "PHP 5.x polyfill for random_bytes() and random_int() from PHP 7",
            "keywords": [
                "csprng",
                "pseudorandom",
                "random"
            ],
            "time": "2018-04-04T21:24:14+00:00"
        },
        {
            "name": "psr/container",
            "version": "1.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/container.git",
                "reference": "b7ce3b176482dbbc1245ebf52b181af44c2cf55f"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/container/zipball/b7ce3b176482dbbc1245ebf52b181af44c2cf55f",
                "reference": "b7ce3b176482dbbc1245ebf52b181af44c2cf55f",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Container\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common Container Interface (PHP FIG PSR-11)",
            "homepage": "https://github.com/php-fig/container",
            "keywords": [
                "PSR-11",
                "container",
                "container-interface",
                "container-interop",
                "psr"
            ],
            "time": "2017-02-14T16:28:37+00:00"
        },
        {
            "name": "psr/http-message",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/http-message.git",
                "reference": "f6561bf28d520154e4b0ec72be95418abe6d9363"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/php-fig/http-message/f6561bf28d520154e4b0ec72be95418abe6d9363.zip",
                "reference": "f6561bf28d520154e4b0ec72be95418abe6d9363",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Http\\Message\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common interface for HTTP messages",
            "homepage": "https://github.com/php-fig/http-message",
            "keywords": [
                "http",
                "http-message",
                "psr",
                "psr-7",
                "request",
                "response"
            ],
            "time": "2016-08-06T14:39:51+00:00"
        },
        {
            "name": "psr/log",
            "version": "1.0.2",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/log.git",
                "reference": "4ebe3a8bf773a19edfe0a84b6585ba3d401b724d"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/log/zipball/4ebe3a8bf773a19edfe0a84b6585ba3d401b724d",
                "reference": "4ebe3a8bf773a19edfe0a84b6585ba3d401b724d",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Log\\": "Psr/Log/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common interface for logging libraries",
            "homepage": "https://github.com/php-fig/log",
            "keywords": [
                "log",
                "psr",
                "psr-3"
            ],
            "time": "2016-10-10T12:19:37+00:00"
        },
        {
            "name": "psr/simple-cache",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/simple-cache.git",
                "reference": "408d5eafb83c57f6365a3ca330ff23aa4a5fa39b"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b",
                "reference": "408d5eafb83c57f6365a3ca330ff23aa4a5fa39b",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\SimpleCache\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common interfaces for simple caching",
            "keywords": [
                "cache",
                "caching",
                "psr",
                "psr-16",
                "simple-cache"
            ],
            "time": "2017-10-23T01:57:42+00:00"
        },
        {
            "name": "psy/psysh",
            "version": "v0.9.3",
            "source": {
                "type": "git",
                "url": "https://github.com/bobthecow/psysh.git",
                "reference": "79c280013cf0b30fa23f3ba8bd3649218075adf4"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/bobthecow/psysh/79c280013cf0b30fa23f3ba8bd3649218075adf4.zip",
                "reference": "79c280013cf0b30fa23f3ba8bd3649218075adf4",
                "shasum": ""
            },
            "require": {
                "dnoegel/php-xdg-base-dir": "0.1",
                "jakub-onderka/php-console-highlighter": "0.3.*",
                "nikic/php-parser": "~1.3|~2.0|~3.0|~4.0",
                "php": ">=5.4.0",
                "symfony/console": "~2.3.10|^2.4.2|~3.0|~4.0",
                "symfony/var-dumper": "~2.7|~3.0|~4.0"
            },
            "require-dev": {
                "hoa/console": "~2.15|~3.16",
                "phpunit/phpunit": "~4.8.35|~5.0|~6.0|~7.0",
                "symfony/finder": "~2.1|~3.0|~4.0"
            },
            "suggest": {
                "ext-pcntl": "Enabling the PCNTL extension makes PsySH a lot happier :)",
                "ext-pdo-sqlite": "The doc command requires SQLite to work.",
                "ext-posix": "If you have PCNTL, you'll want the POSIX extension as well.",
                "ext-readline": "Enables support for arrow-key history navigation, and showing and manipulating command history.",
                "hoa/console": "A pure PHP readline implementation. You'll want this if your PHP install doesn't already support readline or libedit."
            },
            "bin": [
                "bin/psysh"
            ],
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-develop": "0.9.x-dev"
                }
            },
            "autoload": {
                "files": [
                    "src/functions.php"
                ],
                "psr-4": {
                    "Psy\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Justin Hileman",
                    "email": "justin@justinhileman.info",
                    "homepage": "http://justinhileman.com"
                }
            ],
            "description": "An interactive shell for modern PHP.",
            "homepage": "http://psysh.org",
            "keywords": [
                "REPL",
                "console",
                "interactive",
                "shell"
            ],
            "time": "2018-04-18T12:32:50+00:00"
        },
        {
            "name": "ramsey/uuid",
            "version": "3.7.3",
            "source": {
                "type": "git",
                "url": "https://github.com/ramsey/uuid.git",
                "reference": "44abcdad877d9a46685a3a4d221e3b2c4b87cb76"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/ramsey/uuid/zipball/44abcdad877d9a46685a3a4d221e3b2c4b87cb76",
                "reference": "44abcdad877d9a46685a3a4d221e3b2c4b87cb76",
                "shasum": ""
            },
            "require": {
                "paragonie/random_compat": "^1.0|^2.0",
                "php": "^5.4 || ^7.0"
            },
            "replace": {
                "rhumsaa/uuid": "self.version"
            },
            "require-dev": {
                "codeception/aspect-mock": "^1.0 | ~2.0.0",
                "doctrine/annotations": "~1.2.0",
                "goaop/framework": "1.0.0-alpha.2 | ^1.0 | ^2.1",
                "ircmaxell/random-lib": "^1.1",
                "jakub-onderka/php-parallel-lint": "^0.9.0",
                "mockery/mockery": "^0.9.9",
                "moontoast/math": "^1.1",
                "php-mock/php-mock-phpunit": "^0.3|^1.1",
                "phpunit/phpunit": "^4.7|^5.0",
                "squizlabs/php_codesniffer": "^2.3"
            },
            "suggest": {
                "ext-libsodium": "Provides the PECL libsodium extension for use with the SodiumRandomGenerator",
                "ext-uuid": "Provides the PECL UUID extension for use with the PeclUuidTimeGenerator and PeclUuidRandomGenerator",
                "ircmaxell/random-lib": "Provides RandomLib for use with the RandomLibAdapter",
                "moontoast/math": "Provides support for converting UUID to 128-bit integer (in string form).",
                "ramsey/uuid-console": "A console application for generating UUIDs with ramsey/uuid",
                "ramsey/uuid-doctrine": "Allows the use of Ramsey\\Uuid\\Uuid as Doctrine field type."
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Ramsey\\Uuid\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Marijn Huizendveld",
                    "email": "marijn.huizendveld@gmail.com"
                },
                {
                    "name": "Thibaud Fabre",
                    "email": "thibaud@aztech.io"
                },
                {
                    "name": "Ben Ramsey",
                    "email": "ben@benramsey.com",
                    "homepage": "https://benramsey.com"
                }
            ],
            "description": "Formerly rhumsaa/uuid. A PHP 5.4+ library for generating RFC 4122 version 1, 3, 4, and 5 universally unique identifiers (UUID).",
            "homepage": "https://github.com/ramsey/uuid",
            "keywords": [
                "guid",
                "identifier",
                "uuid"
            ],
            "time": "2018-01-20T00:28:24+00:00"
        },
        {
            "name": "spatie/browsershot",
            "version": "3.22.1",
            "source": {
                "type": "git",
                "url": "https://github.com/spatie/browsershot.git",
                "reference": "1f4ff79f3674919d676e34d672e4e5ae1d4ba010"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/spatie/browsershot/1f4ff79f3674919d676e34d672e4e5ae1d4ba010.zip",
                "reference": "1f4ff79f3674919d676e34d672e4e5ae1d4ba010",
                "shasum": ""
            },
            "require": {
                "php": "^7.1",
                "spatie/image": "^1.4",
                "spatie/temporary-directory": "^1.1",
                "symfony/process": "^3.0|^4.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.1|^7.0",
                "spatie/phpunit-snapshot-assertions": "^1.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Spatie\\Browsershot\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Freek Van der Herten",
                    "email": "freek@spatie.be",
                    "homepage": "https://github.com/freekmurze",
                    "role": "Developer"
                }
            ],
            "description": "Convert a webpage to an image or pdf using headless Chrome",
            "homepage": "https://github.com/spatie/browsershot",
            "keywords": [
                "chrome",
                "convert",
                "headless",
                "image",
                "pdf",
                "puppeteer",
                "screenshot",
                "webpage"
            ],
            "time": "2018-04-20T10:24:16+00:00"
        },
        {
            "name": "spatie/crawler",
            "version": "4.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/spatie/crawler.git",
                "reference": "0d1e607f95a0d85e42c68897c2bdcf6be6efaf96"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/spatie/crawler/0d1e607f95a0d85e42c68897c2bdcf6be6efaf96.zip",
                "reference": "0d1e607f95a0d85e42c68897c2bdcf6be6efaf96",
                "shasum": ""
            },
            "require": {
                "guzzlehttp/guzzle": "^6.3",
                "guzzlehttp/psr7": "^1.4",
                "nicmart/tree": "^0.2.7",
                "php": "^7.1",
                "spatie/browsershot": "^3.14",
                "spatie/robots-txt": "^1.0.0",
                "symfony/dom-crawler": "^4.0",
                "tightenco/collect": "^5.6"
            },
            "require-dev": {
                "larapack/dd": "^1.1",
                "phpunit/phpunit": "^7.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "0.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Spatie\\Crawler\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Freek Van der Herten",
                    "email": "freek@spatie.be"
                }
            ],
            "description": "Crawl all internal links found on a website",
            "homepage": "https://github.com/spatie/crawler",
            "keywords": [
                "crawler",
                "link",
                "spatie",
                "website"
            ],
            "time": "2018-05-08T12:07:42+00:00"
        },
        {
            "name": "spatie/image",
            "version": "1.5.2",
            "source": {
                "type": "git",
                "url": "https://github.com/spatie/image.git",
                "reference": "d4cb6afff1b98fd6e17396d91e0e584c3d91bb23"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/spatie/image/d4cb6afff1b98fd6e17396d91e0e584c3d91bb23.zip",
                "reference": "d4cb6afff1b98fd6e17396d91e0e584c3d91bb23",
                "shasum": ""
            },
            "require": {
                "league/glide": "^1.2",
                "php": "^7.0",
                "spatie/image-optimizer": "^1.0",
                "spatie/temporary-directory": "^1.0.0",
                "symfony/process": "^3.0|^4.0"
            },
            "require-dev": {
                "larapack/dd": "^1.1",
                "phpunit/phpunit": "^6.0|^7.0",
                "symfony/var-dumper": "^3.2"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Spatie\\Image\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Freek Van der Herten",
                    "email": "freek@spatie.be",
                    "homepage": "https://spatie.be",
                    "role": "Developer"
                }
            ],
            "description": "Manipulate images with an expressive API",
            "homepage": "https://github.com/spatie/image",
            "keywords": [
                "image",
                "spatie"
            ],
            "time": "2018-05-05T21:44:52+00:00"
        },
        {
            "name": "spatie/image-optimizer",
            "version": "1.0.14",
            "source": {
                "type": "git",
                "url": "https://github.com/spatie/image-optimizer.git",
                "reference": "91603599eb29024cc9849a4a511a629ebce97850"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/spatie/image-optimizer/91603599eb29024cc9849a4a511a629ebce97850.zip",
                "reference": "91603599eb29024cc9849a4a511a629ebce97850",
                "shasum": ""
            },
            "require": {
                "php": "^7.0",
                "psr/log": "^1.0",
                "symfony/process": "^2.8|^3.0|^4.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.2|^7.0",
                "symfony/var-dumper": "^3.0|^4.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Spatie\\ImageOptimizer\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Freek Van der Herten",
                    "email": "freek@spatie.be",
                    "homepage": "https://spatie.be",
                    "role": "Developer"
                }
            ],
            "description": "Easily optimize images using PHP",
            "homepage": "https://github.com/spatie/image-optimizer",
            "keywords": [
                "image-optimizer",
                "spatie"
            ],
            "time": "2018-03-07T13:42:33+00:00"
        },
        {
            "name": "spatie/laravel-pjax",
            "version": "1.3.2",
            "source": {
                "type": "git",
                "url": "https://github.com/spatie/laravel-pjax.git",
                "reference": "5c8d3b147bbdb40ecd794dee3035b4c05734ef35"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/spatie/laravel-pjax/5c8d3b147bbdb40ecd794dee3035b4c05734ef35.zip",
                "reference": "5c8d3b147bbdb40ecd794dee3035b4c05734ef35",
                "shasum": ""
            },
            "require": {
                "illuminate/http": "^5.1",
                "illuminate/support": "^5.1",
                "php": "^5.5.0|^7.0",
                "symfony/css-selector": "^2.7|^3.0|^4.0",
                "symfony/dom-crawler": "^2.7|^3.0|^4.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^4.8.36",
                "scrutinizer/ocular": "~1.1"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Spatie\\Pjax\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Freek Van der Herten",
                    "email": "freek@spatie.be",
                    "homepage": "https://spatie.be",
                    "role": "Developer"
                }
            ],
            "description": "A pjax middleware for Laravel 5",
            "homepage": "https://github.com/spatie/laravel-pjax",
            "keywords": [
                "laravel-pjax",
                "pjax",
                "spatie"
            ],
            "time": "2018-02-06T13:21:42+00:00"
        },
        {
            "name": "spatie/laravel-sitemap",
            "version": "5.2.0",
            "source": {
                "type": "git",
                "url": "https://github.com/spatie/laravel-sitemap.git",
                "reference": "381ee25205342c67ec1a8bcc617d0abb0b7008da"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/spatie/laravel-sitemap/381ee25205342c67ec1a8bcc617d0abb0b7008da.zip",
                "reference": "381ee25205342c67ec1a8bcc617d0abb0b7008da",
                "shasum": ""
            },
            "require": {
                "illuminate/support": "~5.5.0|~5.6.0",
                "nesbot/carbon": "^1.21",
                "php": "^7.1",
                "spatie/crawler": "^4.1.0",
                "spatie/temporary-directory": "^1.1"
            },
            "require-dev": {
                "orchestra/testbench": "~3.5.0|~3.6.0",
                "phpunit/phpunit": "^6.4.1|^7.0",
                "spatie/phpunit-snapshot-assertions": "^1.0.0",
                "spatie/temporary-directory": "^1.1"
            },
            "type": "library",
            "extra": {
                "laravel": {
                    "providers": [
                        "Spatie\\Sitemap\\SitemapServiceProvider"
                    ]
                }
            },
            "autoload": {
                "psr-4": {
                    "Spatie\\Sitemap\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Freek Van der Herten",
                    "email": "freek@spatie.be",
                    "homepage": "https://spatie.be",
                    "role": "Developer"
                }
            ],
            "description": "Create and generate sitemaps with ease",
            "homepage": "https://github.com/spatie/laravel-sitemap",
            "keywords": [
                "laravel-sitemap",
                "spatie"
            ],
            "time": "2018-05-08T13:25:30+00:00"
        },
        {
            "name": "spatie/robots-txt",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/spatie/robots-txt.git",
                "reference": "bb52e87bcc838e6ba8eb015675e62a72a2260fd7"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/spatie/robots-txt/bb52e87bcc838e6ba8eb015675e62a72a2260fd7.zip",
                "reference": "bb52e87bcc838e6ba8eb015675e62a72a2260fd7",
                "shasum": ""
            },
            "require": {
                "php": "^7.1"
            },
            "require-dev": {
                "larapack/dd": "^1.0",
                "phpunit/phpunit": "^7.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Spatie\\Robots\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Brent Roose",
                    "email": "brent@spatie.be",
                    "homepage": "https://spatie.be",
                    "role": "Developer"
                }
            ],
            "description": "Determine if a page may be crawled from robots.txt and robots meta tags",
            "homepage": "https://github.com/spatie/robots-txt",
            "keywords": [
                "robots-txt",
                "spatie"
            ],
            "time": "2018-05-08T19:32:54+00:00"
        },
        {
            "name": "spatie/temporary-directory",
            "version": "1.1.4",
            "source": {
                "type": "git",
                "url": "https://github.com/spatie/temporary-directory.git",
                "reference": "5e1799fa2297363ebfb4df296fea90afbd4ef9b7"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/spatie/temporary-directory/5e1799fa2297363ebfb4df296fea90afbd4ef9b7.zip",
                "reference": "5e1799fa2297363ebfb4df296fea90afbd4ef9b7",
                "shasum": ""
            },
            "require": {
                "php": "^7.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.3"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Spatie\\TemporaryDirectory\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Alex Vanderbist",
                    "email": "alex@spatie.be",
                    "homepage": "https://spatie.be",
                    "role": "Developer"
                }
            ],
            "description": "Easily create, use and destroy temporary directories",
            "homepage": "https://github.com/spatie/temporary-directory",
            "keywords": [
                "spatie",
                "temporary-directory"
            ],
            "time": "2018-04-12T09:34:43+00:00"
        },
        {
            "name": "swiftmailer/swiftmailer",
            "version": "v6.0.2",
            "source": {
                "type": "git",
                "url": "https://github.com/swiftmailer/swiftmailer.git",
                "reference": "412333372fb6c8ffb65496a2bbd7321af75733fc"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/swiftmailer/swiftmailer/zipball/412333372fb6c8ffb65496a2bbd7321af75733fc",
                "reference": "412333372fb6c8ffb65496a2bbd7321af75733fc",
                "shasum": ""
            },
            "require": {
                "egulias/email-validator": "~2.0",
                "php": ">=7.0.0"
            },
            "require-dev": {
                "mockery/mockery": "~0.9.1",
                "symfony/phpunit-bridge": "~3.3@dev"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "6.0-dev"
                }
            },
            "autoload": {
                "files": [
                    "lib/swift_required.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Chris Corbyn"
                },
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                }
            ],
            "description": "Swiftmailer, free feature-rich PHP mailer",
            "homepage": "http://swiftmailer.symfony.com",
            "keywords": [
                "email",
                "mail",
                "mailer"
            ],
            "time": "2017-09-30T22:39:41+00:00"
        },
        {
            "name": "symfony/class-loader",
            "version": "v3.4.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/class-loader.git",
                "reference": "e63c12699822bb3b667e7216ba07fbcc3a3e203e"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/class-loader/e63c12699822bb3b667e7216ba07fbcc3a3e203e.zip",
                "reference": "e63c12699822bb3b667e7216ba07fbcc3a3e203e",
                "shasum": ""
            },
            "require": {
                "php": "^5.5.9|>=7.0.8"
            },
            "require-dev": {
                "symfony/finder": "~2.8|~3.0|~4.0",
                "symfony/polyfill-apcu": "~1.1"
            },
            "suggest": {
                "symfony/polyfill-apcu": "For using ApcClassLoader on HHVM"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.4-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\ClassLoader\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony ClassLoader Component",
            "homepage": "https://symfony.com",
            "time": "2018-01-03T07:37:34+00:00"
        },
        {
            "name": "symfony/console",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/console.git",
                "reference": "3e820bc2c520a87ca209ad8fa961c97f42e0b4ae"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/console/3e820bc2c520a87ca209ad8fa961c97f42e0b4ae.zip",
                "reference": "3e820bc2c520a87ca209ad8fa961c97f42e0b4ae",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3",
                "symfony/polyfill-mbstring": "~1.0"
            },
            "conflict": {
                "symfony/dependency-injection": "<3.4",
                "symfony/process": "<3.3"
            },
            "require-dev": {
                "psr/log": "~1.0",
                "symfony/config": "~3.4|~4.0",
                "symfony/dependency-injection": "~3.4|~4.0",
                "symfony/event-dispatcher": "~3.4|~4.0",
                "symfony/lock": "~3.4|~4.0",
                "symfony/process": "~3.4|~4.0"
            },
            "suggest": {
                "psr/log-implementation": "For using the console logger",
                "symfony/event-dispatcher": "",
                "symfony/lock": "",
                "symfony/process": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Console\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Console Component",
            "homepage": "https://symfony.com",
            "time": "2018-04-30T01:23:47+00:00"
        },
        {
            "name": "symfony/css-selector",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/css-selector.git",
                "reference": "03f965583147957f1ecbad7ea1c9d6fd5e525ec2"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/css-selector/03f965583147957f1ecbad7ea1c9d6fd5e525ec2.zip",
                "reference": "03f965583147957f1ecbad7ea1c9d6fd5e525ec2",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\CssSelector\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jean-François Simon",
                    "email": "jeanfrancois.simon@sensiolabs.com"
                },
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony CssSelector Component",
            "homepage": "https://symfony.com",
            "time": "2018-03-19T22:35:49+00:00"
        },
        {
            "name": "symfony/debug",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/debug.git",
                "reference": "e1d57cdb357e5b10f5fdacbb0b86689c0a435e6e"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/debug/e1d57cdb357e5b10f5fdacbb0b86689c0a435e6e.zip",
                "reference": "e1d57cdb357e5b10f5fdacbb0b86689c0a435e6e",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3",
                "psr/log": "~1.0"
            },
            "conflict": {
                "symfony/http-kernel": "<3.4"
            },
            "require-dev": {
                "symfony/http-kernel": "~3.4|~4.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Debug\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Debug Component",
            "homepage": "https://symfony.com",
            "time": "2018-04-30T16:59:37+00:00"
        },
        {
            "name": "symfony/dom-crawler",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/dom-crawler.git",
                "reference": "d6c04c7532535b5e0b63db45b543cd60818e0fbc"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/dom-crawler/d6c04c7532535b5e0b63db45b543cd60818e0fbc.zip",
                "reference": "d6c04c7532535b5e0b63db45b543cd60818e0fbc",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3",
                "symfony/polyfill-mbstring": "~1.0"
            },
            "require-dev": {
                "symfony/css-selector": "~3.4|~4.0"
            },
            "suggest": {
                "symfony/css-selector": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\DomCrawler\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony DomCrawler Component",
            "homepage": "https://symfony.com",
            "time": "2018-03-19T22:35:49+00:00"
        },
        {
            "name": "symfony/event-dispatcher",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/event-dispatcher.git",
                "reference": "63353a71073faf08f62caab4e6889b06a787f07b"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/event-dispatcher/63353a71073faf08f62caab4e6889b06a787f07b.zip",
                "reference": "63353a71073faf08f62caab4e6889b06a787f07b",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3"
            },
            "conflict": {
                "symfony/dependency-injection": "<3.4"
            },
            "require-dev": {
                "psr/log": "~1.0",
                "symfony/config": "~3.4|~4.0",
                "symfony/dependency-injection": "~3.4|~4.0",
                "symfony/expression-language": "~3.4|~4.0",
                "symfony/stopwatch": "~3.4|~4.0"
            },
            "suggest": {
                "symfony/dependency-injection": "",
                "symfony/http-kernel": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\EventDispatcher\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony EventDispatcher Component",
            "homepage": "https://symfony.com",
            "time": "2018-04-06T07:35:43+00:00"
        },
        {
            "name": "symfony/finder",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/finder.git",
                "reference": "ca27c02b7a3fef4828c998c2ff9ba7aae1641c49"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/finder/ca27c02b7a3fef4828c998c2ff9ba7aae1641c49.zip",
                "reference": "ca27c02b7a3fef4828c998c2ff9ba7aae1641c49",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Finder\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Finder Component",
            "homepage": "https://symfony.com",
            "time": "2018-04-04T05:10:37+00:00"
        },
        {
            "name": "symfony/http-foundation",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/http-foundation.git",
                "reference": "014487772c22d893168e5d628a13e882009fea29"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/http-foundation/014487772c22d893168e5d628a13e882009fea29.zip",
                "reference": "014487772c22d893168e5d628a13e882009fea29",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3",
                "symfony/polyfill-mbstring": "~1.1"
            },
            "require-dev": {
                "symfony/expression-language": "~3.4|~4.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\HttpFoundation\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony HttpFoundation Component",
            "homepage": "https://symfony.com",
            "time": "2018-04-30T01:05:59+00:00"
        },
        {
            "name": "symfony/http-kernel",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/http-kernel.git",
                "reference": "8333264b6de323ea27a08627d5396aa564fb9c25"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/http-kernel/8333264b6de323ea27a08627d5396aa564fb9c25.zip",
                "reference": "8333264b6de323ea27a08627d5396aa564fb9c25",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3",
                "psr/log": "~1.0",
                "symfony/debug": "~3.4|~4.0",
                "symfony/event-dispatcher": "~3.4|~4.0",
                "symfony/http-foundation": "~3.4.4|~4.0.4"
            },
            "conflict": {
                "symfony/config": "<3.4",
                "symfony/dependency-injection": "<3.4.5|<4.0.5,>=4",
                "symfony/var-dumper": "<3.4",
                "twig/twig": "<1.34|<2.4,>=2"
            },
            "provide": {
                "psr/log-implementation": "1.0"
            },
            "require-dev": {
                "psr/cache": "~1.0",
                "symfony/browser-kit": "~3.4|~4.0",
                "symfony/config": "~3.4|~4.0",
                "symfony/console": "~3.4|~4.0",
                "symfony/css-selector": "~3.4|~4.0",
                "symfony/dependency-injection": "^3.4.5|^4.0.5",
                "symfony/dom-crawler": "~3.4|~4.0",
                "symfony/expression-language": "~3.4|~4.0",
                "symfony/finder": "~3.4|~4.0",
                "symfony/process": "~3.4|~4.0",
                "symfony/routing": "~3.4|~4.0",
                "symfony/stopwatch": "~3.4|~4.0",
                "symfony/templating": "~3.4|~4.0",
                "symfony/translation": "~3.4|~4.0",
                "symfony/var-dumper": "~3.4|~4.0"
            },
            "suggest": {
                "symfony/browser-kit": "",
                "symfony/config": "",
                "symfony/console": "",
                "symfony/dependency-injection": "",
                "symfony/var-dumper": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\HttpKernel\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony HttpKernel Component",
            "homepage": "https://symfony.com",
            "time": "2018-04-30T19:45:57+00:00"
        },
        {
            "name": "symfony/polyfill-mbstring",
            "version": "v1.8.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-mbstring.git",
                "reference": "3296adf6a6454a050679cde90f95350ad604b171"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/polyfill-mbstring/3296adf6a6454a050679cde90f95350ad604b171.zip",
                "reference": "3296adf6a6454a050679cde90f95350ad604b171",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.3"
            },
            "suggest": {
                "ext-mbstring": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.8-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Polyfill\\Mbstring\\": ""
                },
                "files": [
                    "bootstrap.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for the Mbstring extension",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "mbstring",
                "polyfill",
                "portable",
                "shim"
            ],
            "time": "2018-04-26T10:06:28+00:00"
        },
        {
            "name": "symfony/polyfill-php56",
            "version": "v1.8.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-php56.git",
                "reference": "af98553c84912459db3f636329567809d639a8f6"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/polyfill-php56/af98553c84912459db3f636329567809d639a8f6.zip",
                "reference": "af98553c84912459db3f636329567809d639a8f6",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.3",
                "symfony/polyfill-util": "~1.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.8-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Polyfill\\Php56\\": ""
                },
                "files": [
                    "bootstrap.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill backporting some PHP 5.6+ features to lower PHP versions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "polyfill",
                "portable",
                "shim"
            ],
            "time": "2018-04-26T10:06:28+00:00"
        },
        {
            "name": "symfony/polyfill-php72",
            "version": "v1.8.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-php72.git",
                "reference": "a4576e282d782ad82397f3e4ec1df8e0f0cafb46"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/polyfill-php72/a4576e282d782ad82397f3e4ec1df8e0f0cafb46.zip",
                "reference": "a4576e282d782ad82397f3e4ec1df8e0f0cafb46",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.8-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Polyfill\\Php72\\": ""
                },
                "files": [
                    "bootstrap.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill backporting some PHP 7.2+ features to lower PHP versions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "polyfill",
                "portable",
                "shim"
            ],
            "time": "2018-04-26T10:06:28+00:00"
        },
        {
            "name": "symfony/polyfill-util",
            "version": "v1.8.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-util.git",
                "reference": "1a5ad95d9436cbff3296034fe9f8d586dce3fb3a"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/polyfill-util/1a5ad95d9436cbff3296034fe9f8d586dce3fb3a.zip",
                "reference": "1a5ad95d9436cbff3296034fe9f8d586dce3fb3a",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.8-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Polyfill\\Util\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony utilities for portability of PHP codes",
            "homepage": "https://symfony.com",
            "keywords": [
                "compat",
                "compatibility",
                "polyfill",
                "shim"
            ],
            "time": "2018-04-26T10:06:28+00:00"
        },
        {
            "name": "symfony/process",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/process.git",
                "reference": "d7dc1ee5dfe9f732cb1bba7310f5b99f2b7a6d25"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/process/d7dc1ee5dfe9f732cb1bba7310f5b99f2b7a6d25.zip",
                "reference": "d7dc1ee5dfe9f732cb1bba7310f5b99f2b7a6d25",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Process\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Process Component",
            "homepage": "https://symfony.com",
            "time": "2018-04-03T05:24:00+00:00"
        },
        {
            "name": "symfony/routing",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/routing.git",
                "reference": "1dfbfdf060bbc80da8dedc062050052e694cd027"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/routing/1dfbfdf060bbc80da8dedc062050052e694cd027.zip",
                "reference": "1dfbfdf060bbc80da8dedc062050052e694cd027",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3"
            },
            "conflict": {
                "symfony/config": "<3.4",
                "symfony/dependency-injection": "<3.4",
                "symfony/yaml": "<3.4"
            },
            "require-dev": {
                "doctrine/annotations": "~1.0",
                "doctrine/common": "~2.2",
                "psr/log": "~1.0",
                "symfony/config": "~3.4|~4.0",
                "symfony/dependency-injection": "~3.4|~4.0",
                "symfony/expression-language": "~3.4|~4.0",
                "symfony/http-foundation": "~3.4|~4.0",
                "symfony/yaml": "~3.4|~4.0"
            },
            "suggest": {
                "doctrine/annotations": "For using the annotation loader",
                "symfony/config": "For using the all-in-one router or any loader",
                "symfony/dependency-injection": "For loading routes from a service",
                "symfony/expression-language": "For using expression matching",
                "symfony/http-foundation": "For using a Symfony Request object",
                "symfony/yaml": "For using the YAML loader"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Routing\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Routing Component",
            "homepage": "https://symfony.com",
            "keywords": [
                "router",
                "routing",
                "uri",
                "url"
            ],
            "time": "2018-04-20T06:20:23+00:00"
        },
        {
            "name": "symfony/translation",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/translation.git",
                "reference": "ad3abf08eb3450491d8d76513100ef58194cd13e"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/translation/ad3abf08eb3450491d8d76513100ef58194cd13e.zip",
                "reference": "ad3abf08eb3450491d8d76513100ef58194cd13e",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3",
                "symfony/polyfill-mbstring": "~1.0"
            },
            "conflict": {
                "symfony/config": "<3.4",
                "symfony/dependency-injection": "<3.4",
                "symfony/yaml": "<3.4"
            },
            "require-dev": {
                "psr/log": "~1.0",
                "symfony/config": "~3.4|~4.0",
                "symfony/dependency-injection": "~3.4|~4.0",
                "symfony/finder": "~2.8|~3.0|~4.0",
                "symfony/intl": "~3.4|~4.0",
                "symfony/yaml": "~3.4|~4.0"
            },
            "suggest": {
                "psr/log-implementation": "To use logging capability in translator",
                "symfony/config": "",
                "symfony/yaml": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Translation\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Translation Component",
            "homepage": "https://symfony.com",
            "time": "2018-04-30T01:23:47+00:00"
        },
        {
            "name": "symfony/var-dumper",
            "version": "v4.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/var-dumper.git",
                "reference": "3c34cf3f4bbac9e003d9325225e9ef1a49180a18"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/symfony/var-dumper/3c34cf3f4bbac9e003d9325225e9ef1a49180a18.zip",
                "reference": "3c34cf3f4bbac9e003d9325225e9ef1a49180a18",
                "shasum": ""
            },
            "require": {
                "php": "^7.1.3",
                "symfony/polyfill-mbstring": "~1.0",
                "symfony/polyfill-php72": "~1.5"
            },
            "conflict": {
                "phpunit/phpunit": "<4.8.35|<5.4.3,>=5.0"
            },
            "require-dev": {
                "ext-iconv": "*",
                "twig/twig": "~1.34|~2.4"
            },
            "suggest": {
                "ext-iconv": "To convert non-UTF-8 strings to UTF-8 (or symfony/polyfill-iconv in case ext-iconv cannot be used).",
                "ext-intl": "To show region name in time zone dump"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "files": [
                    "Resources/functions/dump.php"
                ],
                "psr-4": {
                    "Symfony\\Component\\VarDumper\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony mechanism for exploring and dumping PHP variables",
            "homepage": "https://symfony.com",
            "keywords": [
                "debug",
                "dump"
            ],
            "time": "2018-04-26T16:12:06+00:00"
        },
        {
            "name": "thomaswelton/gravatarlib",
            "version": "0.1.0",
            "target-dir": "thomaswelton/GravatarLib",
            "source": {
                "type": "git",
                "url": "https://github.com/thomaswelton/gravatarlib.git",
                "reference": "8a4e829c53ca2abb51ef2e514f696938a9bdbd0c"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/thomaswelton/gravatarlib/8a4e829c53ca2abb51ef2e514f696938a9bdbd0c.zip",
                "reference": "8a4e829c53ca2abb51ef2e514f696938a9bdbd0c",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "suggest": {
                "twig/twig": ">=1.4.0"
            },
            "type": "library",
            "autoload": {
                "psr-0": {
                    "thomaswelton\\GravatarLib\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Sam Thompson",
                    "email": "sam@emberlabs.org"
                },
                {
                    "name": "Damian Bushong",
                    "email": "damian@emberlabs.org"
                },
                {
                    "name": "Thomas Welton",
                    "email": "thomaswelton@me.com",
                    "homepage": "https://github.com/thomaswelton",
                    "role": "Developer"
                }
            ],
            "description": "A lightweight PHP 5.3 OOP library providing easy gravatar integration.",
            "keywords": [
                "gravatar",
                "templating",
                "twig"
            ],
            "time": "2014-03-02T18:29:18+00:00"
        },
        {
            "name": "thomaswelton/laravel-gravatar",
            "version": "1.1.3",
            "source": {
                "type": "git",
                "url": "https://github.com/thomaswelton/laravel-gravatar.git",
                "reference": "1d4ef2f18db9f0d3802c312551ffc7204c411589"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/thomaswelton/laravel-gravatar/1d4ef2f18db9f0d3802c312551ffc7204c411589.zip",
                "reference": "1d4ef2f18db9f0d3802c312551ffc7204c411589",
                "shasum": ""
            },
            "require": {
                "illuminate/support": "~5.0",
                "php": ">=5.4.0",
                "thomaswelton/gravatarlib": "0.1.x"
            },
            "require-dev": {
                "mockery/mockery": "0.9.*",
                "phpunit/phpunit": "4.8.*"
            },
            "type": "library",
            "extra": {
                "laravel": {
                    "providers": [
                        "Thomaswelton\\LaravelGravatar\\LaravelGravatarServiceProvider"
                    ],
                    "aliases": {
                        "Gravatar": "Thomaswelton\\LaravelGravatar\\Facades\\Gravatar"
                    }
                }
            },
            "autoload": {
                "psr-4": {
                    "Thomaswelton\\LaravelGravatar\\": "src/",
                    "Thomaswelton\\Tests\\LaravelGravatar\\": "tests/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "ThomasWelton",
                    "email": "thomaswelton@me.com",
                    "role": "Developer"
                },
                {
                    "name": "Antoine Augusti",
                    "email": "antoine.augusti@gmail.com",
                    "role": "Developer"
                }
            ],
            "description": "Laravel 5 Gravatar helper",
            "homepage": "https://github.com/thomaswelton/laravel-gravatar",
            "keywords": [
                "gravatar",
                "laravel",
                "laravel5"
            ],
            "time": "2017-09-19T15:44:58+00:00"
        },
        {
            "name": "tightenco/collect",
            "version": "v5.6.21",
            "source": {
                "type": "git",
                "url": "https://github.com/tightenco/collect.git",
                "reference": "b1647c80bb48321aa537d2e332930089848ecb8e"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/tightenco/collect/b1647c80bb48321aa537d2e332930089848ecb8e.zip",
                "reference": "b1647c80bb48321aa537d2e332930089848ecb8e",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1.3",
                "symfony/var-dumper": ">=3.1.10"
            },
            "require-dev": {
                "mockery/mockery": "~1.0",
                "nesbot/carbon": "~1.20",
                "phpunit/phpunit": "~7.0"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "src/Collect/Support/helpers.php",
                    "src/Collect/Support/alias.php"
                ],
                "psr-4": {
                    "Tightenco\\Collect\\": "src/Collect"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Taylor Otwell",
                    "email": "taylorotwell@gmail.com"
                }
            ],
            "description": "Collect - Illuminate Collections as a separate package.",
            "keywords": [
                "collection",
                "laravel"
            ],
            "time": "2018-05-08T15:48:57+00:00"
        },
        {
            "name": "tijsverkoyen/css-to-inline-styles",
            "version": "2.2.1",
            "source": {
                "type": "git",
                "url": "https://github.com/tijsverkoyen/CssToInlineStyles.git",
                "reference": "0ed4a2ea4e0902dac0489e6436ebcd5bbcae9757"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/0ed4a2ea4e0902dac0489e6436ebcd5bbcae9757",
                "reference": "0ed4a2ea4e0902dac0489e6436ebcd5bbcae9757",
                "shasum": ""
            },
            "require": {
                "php": "^5.5 || ^7.0",
                "symfony/css-selector": "^2.7 || ^3.0 || ^4.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^4.8.35 || ^5.7 || ^6.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.2.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "TijsVerkoyen\\CssToInlineStyles\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Tijs Verkoyen",
                    "email": "css_to_inline_styles@verkoyen.eu",
                    "role": "Developer"
                }
            ],
            "description": "CssToInlineStyles is a class that enables you to convert HTML-pages/files into HTML-pages/files with inline styles. This is very useful when you're sending emails.",
            "homepage": "https://github.com/tijsverkoyen/CssToInlineStyles",
            "time": "2017-11-27T11:13:29+00:00"
        },
        {
            "name": "vlucas/phpdotenv",
            "version": "v2.4.0",
            "source": {
                "type": "git",
                "url": "https://github.com/vlucas/phpdotenv.git",
                "reference": "3cc116adbe4b11be5ec557bf1d24dc5e3a21d18c"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/vlucas/phpdotenv/zipball/3cc116adbe4b11be5ec557bf1d24dc5e3a21d18c",
                "reference": "3cc116adbe4b11be5ec557bf1d24dc5e3a21d18c",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.9"
            },
            "require-dev": {
                "phpunit/phpunit": "^4.8 || ^5.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.4-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Dotenv\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause-Attribution"
            ],
            "authors": [
                {
                    "name": "Vance Lucas",
                    "email": "vance@vancelucas.com",
                    "homepage": "http://www.vancelucas.com"
                }
            ],
            "description": "Loads environment variables from `.env` to `getenv()`, `$_ENV` and `$_SERVER` automagically.",
            "keywords": [
                "dotenv",
                "env",
                "environment"
            ],
            "time": "2016-09-01T10:05:43+00:00"
        }
    ],
    "packages-dev": [
        {
            "name": "doctrine/instantiator",
            "version": "1.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/instantiator.git",
                "reference": "185b8868aa9bf7159f5f953ed5afb2d7fcdc3bda"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/instantiator/zipball/185b8868aa9bf7159f5f953ed5afb2d7fcdc3bda",
                "reference": "185b8868aa9bf7159f5f953ed5afb2d7fcdc3bda",
                "shasum": ""
            },
            "require": {
                "php": "^7.1"
            },
            "require-dev": {
                "athletic/athletic": "~0.1.8",
                "ext-pdo": "*",
                "ext-phar": "*",
                "phpunit/phpunit": "^6.2.3",
                "squizlabs/php_codesniffer": "^3.0.2"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.2.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Doctrine\\Instantiator\\": "src/Doctrine/Instantiator/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Marco Pivetta",
                    "email": "ocramius@gmail.com",
                    "homepage": "http://ocramius.github.com/"
                }
            ],
            "description": "A small, lightweight utility to instantiate objects in PHP without invoking their constructors",
            "homepage": "https://github.com/doctrine/instantiator",
            "keywords": [
                "constructor",
                "instantiate"
            ],
            "time": "2017-07-22T11:58:36+00:00"
        },
        {
            "name": "filp/whoops",
            "version": "2.1.14",
            "source": {
                "type": "git",
                "url": "https://github.com/filp/whoops.git",
                "reference": "c6081b8838686aa04f1e83ba7e91f78b7b2a23e6"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/filp/whoops/zipball/c6081b8838686aa04f1e83ba7e91f78b7b2a23e6",
                "reference": "c6081b8838686aa04f1e83ba7e91f78b7b2a23e6",
                "shasum": ""
            },
            "require": {
                "php": "^5.5.9 || ^7.0",
                "psr/log": "^1.0.1"
            },
            "require-dev": {
                "mockery/mockery": "0.9.*",
                "phpunit/phpunit": "^4.8.35 || ^5.7",
                "symfony/var-dumper": "^2.6 || ^3.0"
            },
            "suggest": {
                "symfony/var-dumper": "Pretty print complex values better with var-dumper available",
                "whoops/soap": "Formats errors as SOAP responses"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Whoops\\": "src/Whoops/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Filipe Dobreira",
                    "homepage": "https://github.com/filp",
                    "role": "Developer"
                }
            ],
            "description": "php error handling for cool kids",
            "homepage": "https://filp.github.io/whoops/",
            "keywords": [
                "error",
                "exception",
                "handling",
                "library",
                "throwable",
                "whoops"
            ],
            "time": "2017-11-23T18:22:44+00:00"
        },
        {
            "name": "fzaninotto/faker",
            "version": "v1.7.1",
            "source": {
                "type": "git",
                "url": "https://github.com/fzaninotto/Faker.git",
                "reference": "d3ed4cc37051c1ca52d22d76b437d14809fc7e0d"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/fzaninotto/Faker/zipball/d3ed4cc37051c1ca52d22d76b437d14809fc7e0d",
                "reference": "d3ed4cc37051c1ca52d22d76b437d14809fc7e0d",
                "shasum": ""
            },
            "require": {
                "php": "^5.3.3 || ^7.0"
            },
            "require-dev": {
                "ext-intl": "*",
                "phpunit/phpunit": "^4.0 || ^5.0",
                "squizlabs/php_codesniffer": "^1.5"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.8-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Faker\\": "src/Faker/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "François Zaninotto"
                }
            ],
            "description": "Faker is a PHP library that generates fake data for you.",
            "keywords": [
                "data",
                "faker",
                "fixtures"
            ],
            "time": "2017-08-15T16:48:10+00:00"
        },
        {
            "name": "hamcrest/hamcrest-php",
            "version": "v2.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/hamcrest/hamcrest-php.git",
                "reference": "776503d3a8e85d4f9a1148614f95b7a608b046ad"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/hamcrest/hamcrest-php/zipball/776503d3a8e85d4f9a1148614f95b7a608b046ad",
                "reference": "776503d3a8e85d4f9a1148614f95b7a608b046ad",
                "shasum": ""
            },
            "require": {
                "php": "^5.3|^7.0"
            },
            "replace": {
                "cordoval/hamcrest-php": "*",
                "davedevelopment/hamcrest-php": "*",
                "kodova/hamcrest-php": "*"
            },
            "require-dev": {
                "phpunit/php-file-iterator": "1.3.3",
                "phpunit/phpunit": "~4.0",
                "satooshi/php-coveralls": "^1.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "hamcrest"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD"
            ],
            "description": "This is the PHP port of Hamcrest Matchers",
            "keywords": [
                "test"
            ],
            "time": "2016-01-20T08:20:44+00:00"
        },
        {
            "name": "mockery/mockery",
            "version": "1.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/mockery/mockery.git",
                "reference": "99e29d3596b16dabe4982548527d5ddf90232e99"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/mockery/mockery/99e29d3596b16dabe4982548527d5ddf90232e99.zip",
                "reference": "99e29d3596b16dabe4982548527d5ddf90232e99",
                "shasum": ""
            },
            "require": {
                "hamcrest/hamcrest-php": "~2.0",
                "lib-pcre": ">=7.0",
                "php": ">=5.6.0"
            },
            "require-dev": {
                "phpdocumentor/phpdocumentor": "^2.9",
                "phpunit/phpunit": "~5.7.10|~6.5"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-0": {
                    "Mockery": "library/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Pádraic Brady",
                    "email": "padraic.brady@gmail.com",
                    "homepage": "http://blog.astrumfutura.com"
                },
                {
                    "name": "Dave Marshall",
                    "email": "dave.marshall@atstsolutions.co.uk",
                    "homepage": "http://davedevelopment.co.uk"
                }
            ],
            "description": "Mockery is a simple yet flexible PHP mock object framework",
            "homepage": "https://github.com/mockery/mockery",
            "keywords": [
                "BDD",
                "TDD",
                "library",
                "mock",
                "mock objects",
                "mockery",
                "stub",
                "test",
                "test double",
                "testing"
            ],
            "time": "2018-05-08T08:54:48+00:00"
        },
        {
            "name": "myclabs/deep-copy",
            "version": "1.7.0",
            "source": {
                "type": "git",
                "url": "https://github.com/myclabs/DeepCopy.git",
                "reference": "3b8a3a99ba1f6a3952ac2747d989303cbd6b7a3e"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/myclabs/DeepCopy/zipball/3b8a3a99ba1f6a3952ac2747d989303cbd6b7a3e",
                "reference": "3b8a3a99ba1f6a3952ac2747d989303cbd6b7a3e",
                "shasum": ""
            },
            "require": {
                "php": "^5.6 || ^7.0"
            },
            "require-dev": {
                "doctrine/collections": "^1.0",
                "doctrine/common": "^2.6",
                "phpunit/phpunit": "^4.1"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "DeepCopy\\": "src/DeepCopy/"
                },
                "files": [
                    "src/DeepCopy/deep_copy.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "description": "Create deep copies (clones) of your objects",
            "keywords": [
                "clone",
                "copy",
                "duplicate",
                "object",
                "object graph"
            ],
            "time": "2017-10-19T19:58:43+00:00"
        },
        {
            "name": "nunomaduro/collision",
            "version": "v2.0.2",
            "source": {
                "type": "git",
                "url": "https://github.com/nunomaduro/collision.git",
                "reference": "245958b02c6a9edf24627380f368333ac5413a51"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/nunomaduro/collision/zipball/245958b02c6a9edf24627380f368333ac5413a51",
                "reference": "245958b02c6a9edf24627380f368333ac5413a51",
                "shasum": ""
            },
            "require": {
                "filp/whoops": "^2.1.4",
                "jakub-onderka/php-console-highlighter": "0.3.*",
                "php": "^7.1",
                "symfony/console": "~2.8|~3.3|~4.0"
            },
            "require-dev": {
                "laravel/framework": "5.6.*",
                "phpunit/phpunit": "~7.0"
            },
            "type": "library",
            "extra": {
                "laravel": {
                    "providers": [
                        "NunoMaduro\\Collision\\Adapters\\Laravel\\CollisionServiceProvider"
                    ]
                }
            },
            "autoload": {
                "psr-4": {
                    "NunoMaduro\\Collision\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nuno Maduro",
                    "email": "enunomaduro@gmail.com"
                }
            ],
            "description": "Cli error handling for console/command-line PHP applications.",
            "keywords": [
                "artisan",
                "cli",
                "command-line",
                "console",
                "error",
                "handling",
                "laravel",
                "laravel-zero",
                "php",
                "symfony"
            ],
            "time": "2018-03-21T20:11:24+00:00"
        },
        {
            "name": "phar-io/manifest",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/phar-io/manifest.git",
                "reference": "2df402786ab5368a0169091f61a7c1e0eb6852d0"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/phar-io/manifest/zipball/2df402786ab5368a0169091f61a7c1e0eb6852d0",
                "reference": "2df402786ab5368a0169091f61a7c1e0eb6852d0",
                "shasum": ""
            },
            "require": {
                "ext-dom": "*",
                "ext-phar": "*",
                "phar-io/version": "^1.0.1",
                "php": "^5.6 || ^7.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Arne Blankerts",
                    "email": "arne@blankerts.de",
                    "role": "Developer"
                },
                {
                    "name": "Sebastian Heuer",
                    "email": "sebastian@phpeople.de",
                    "role": "Developer"
                },
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "Developer"
                }
            ],
            "description": "Component for reading phar.io manifest information from a PHP Archive (PHAR)",
            "time": "2017-03-05T18:14:27+00:00"
        },
        {
            "name": "phar-io/version",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/phar-io/version.git",
                "reference": "a70c0ced4be299a63d32fa96d9281d03e94041df"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/phar-io/version/zipball/a70c0ced4be299a63d32fa96d9281d03e94041df",
                "reference": "a70c0ced4be299a63d32fa96d9281d03e94041df",
                "shasum": ""
            },
            "require": {
                "php": "^5.6 || ^7.0"
            },
            "type": "library",
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Arne Blankerts",
                    "email": "arne@blankerts.de",
                    "role": "Developer"
                },
                {
                    "name": "Sebastian Heuer",
                    "email": "sebastian@phpeople.de",
                    "role": "Developer"
                },
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "Developer"
                }
            ],
            "description": "Library for handling version information and constraints",
            "time": "2017-03-05T17:38:23+00:00"
        },
        {
            "name": "phpdocumentor/reflection-common",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/phpDocumentor/ReflectionCommon.git",
                "reference": "21bdeb5f65d7ebf9f43b1b25d404f87deab5bfb6"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/21bdeb5f65d7ebf9f43b1b25d404f87deab5bfb6",
                "reference": "21bdeb5f65d7ebf9f43b1b25d404f87deab5bfb6",
                "shasum": ""
            },
            "require": {
                "php": ">=5.5"
            },
            "require-dev": {
                "phpunit/phpunit": "^4.6"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "phpDocumentor\\Reflection\\": [
                        "src"
                    ]
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jaap van Otterdijk",
                    "email": "opensource@ijaap.nl"
                }
            ],
            "description": "Common reflection classes used by phpdocumentor to reflect the code structure",
            "homepage": "http://www.phpdoc.org",
            "keywords": [
                "FQSEN",
                "phpDocumentor",
                "phpdoc",
                "reflection",
                "static analysis"
            ],
            "time": "2017-09-11T18:02:19+00:00"
        },
        {
            "name": "phpdocumentor/reflection-docblock",
            "version": "4.3.0",
            "source": {
                "type": "git",
                "url": "https://github.com/phpDocumentor/ReflectionDocBlock.git",
                "reference": "94fd0001232e47129dd3504189fa1c7225010d08"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/94fd0001232e47129dd3504189fa1c7225010d08",
                "reference": "94fd0001232e47129dd3504189fa1c7225010d08",
                "shasum": ""
            },
            "require": {
                "php": "^7.0",
                "phpdocumentor/reflection-common": "^1.0.0",
                "phpdocumentor/type-resolver": "^0.4.0",
                "webmozart/assert": "^1.0"
            },
            "require-dev": {
                "doctrine/instantiator": "~1.0.5",
                "mockery/mockery": "^1.0",
                "phpunit/phpunit": "^6.4"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "phpDocumentor\\Reflection\\": [
                        "src/"
                    ]
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Mike van Riel",
                    "email": "me@mikevanriel.com"
                }
            ],
            "description": "With this component, a library can provide support for annotations via DocBlocks or otherwise retrieve information that is embedded in a DocBlock.",
            "time": "2017-11-30T07:14:17+00:00"
        },
        {
            "name": "phpdocumentor/type-resolver",
            "version": "0.4.0",
            "source": {
                "type": "git",
                "url": "https://github.com/phpDocumentor/TypeResolver.git",
                "reference": "9c977708995954784726e25d0cd1dddf4e65b0f7"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/9c977708995954784726e25d0cd1dddf4e65b0f7",
                "reference": "9c977708995954784726e25d0cd1dddf4e65b0f7",
                "shasum": ""
            },
            "require": {
                "php": "^5.5 || ^7.0",
                "phpdocumentor/reflection-common": "^1.0"
            },
            "require-dev": {
                "mockery/mockery": "^0.9.4",
                "phpunit/phpunit": "^5.2||^4.8.24"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "phpDocumentor\\Reflection\\": [
                        "src/"
                    ]
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Mike van Riel",
                    "email": "me@mikevanriel.com"
                }
            ],
            "time": "2017-07-14T14:27:02+00:00"
        },
        {
            "name": "phpspec/prophecy",
            "version": "1.7.6",
            "source": {
                "type": "git",
                "url": "https://github.com/phpspec/prophecy.git",
                "reference": "33a7e3c4fda54e912ff6338c48823bd5c0f0b712"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/phpspec/prophecy/33a7e3c4fda54e912ff6338c48823bd5c0f0b712.zip",
                "reference": "33a7e3c4fda54e912ff6338c48823bd5c0f0b712",
                "shasum": ""
            },
            "require": {
                "doctrine/instantiator": "^1.0.2",
                "php": "^5.3|^7.0",
                "phpdocumentor/reflection-docblock": "^2.0|^3.0.2|^4.0",
                "sebastian/comparator": "^1.1|^2.0|^3.0",
                "sebastian/recursion-context": "^1.0|^2.0|^3.0"
            },
            "require-dev": {
                "phpspec/phpspec": "^2.5|^3.2",
                "phpunit/phpunit": "^4.8.35 || ^5.7 || ^6.5"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.7.x-dev"
                }
            },
            "autoload": {
                "psr-0": {
                    "Prophecy\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Konstantin Kudryashov",
                    "email": "ever.zet@gmail.com",
                    "homepage": "http://everzet.com"
                },
                {
                    "name": "Marcello Duarte",
                    "email": "marcello.duarte@gmail.com"
                }
            ],
            "description": "Highly opinionated mocking framework for PHP 5.3+",
            "homepage": "https://github.com/phpspec/prophecy",
            "keywords": [
                "Double",
                "Dummy",
                "fake",
                "mock",
                "spy",
                "stub"
            ],
            "time": "2018-04-18T13:57:24+00:00"
        },
        {
            "name": "phpunit/php-code-coverage",
            "version": "6.0.4",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-code-coverage.git",
                "reference": "52187754b0eed0b8159f62a6fa30073327e8c2ca"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/sebastianbergmann/php-code-coverage/52187754b0eed0b8159f62a6fa30073327e8c2ca.zip",
                "reference": "52187754b0eed0b8159f62a6fa30073327e8c2ca",
                "shasum": ""
            },
            "require": {
                "ext-dom": "*",
                "ext-xmlwriter": "*",
                "php": "^7.1",
                "phpunit/php-file-iterator": "^1.4.2",
                "phpunit/php-text-template": "^1.2.1",
                "phpunit/php-token-stream": "^3.0",
                "sebastian/code-unit-reverse-lookup": "^1.0.1",
                "sebastian/environment": "^3.1",
                "sebastian/version": "^2.0.1",
                "theseer/tokenizer": "^1.1"
            },
            "require-dev": {
                "phpunit/phpunit": "^7.0"
            },
            "suggest": {
                "ext-xdebug": "^2.6.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "6.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Library that provides collection, processing, and rendering functionality for PHP code coverage information.",
            "homepage": "https://github.com/sebastianbergmann/php-code-coverage",
            "keywords": [
                "coverage",
                "testing",
                "xunit"
            ],
            "time": "2018-04-29T14:59:09+00:00"
        },
        {
            "name": "phpunit/php-file-iterator",
            "version": "1.4.5",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-file-iterator.git",
                "reference": "730b01bc3e867237eaac355e06a36b85dd93a8b4"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/730b01bc3e867237eaac355e06a36b85dd93a8b4",
                "reference": "730b01bc3e867237eaac355e06a36b85dd93a8b4",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.4.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sb@sebastian-bergmann.de",
                    "role": "lead"
                }
            ],
            "description": "FilterIterator implementation that filters files based on a list of suffixes.",
            "homepage": "https://github.com/sebastianbergmann/php-file-iterator/",
            "keywords": [
                "filesystem",
                "iterator"
            ],
            "time": "2017-11-27T13:52:08+00:00"
        },
        {
            "name": "phpunit/php-text-template",
            "version": "1.2.1",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-text-template.git",
                "reference": "31f8b717e51d9a2afca6c9f046f5d69fc27c8686"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/31f8b717e51d9a2afca6c9f046f5d69fc27c8686",
                "reference": "31f8b717e51d9a2afca6c9f046f5d69fc27c8686",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.3"
            },
            "type": "library",
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Simple template engine.",
            "homepage": "https://github.com/sebastianbergmann/php-text-template/",
            "keywords": [
                "template"
            ],
            "time": "2015-06-21T13:50:34+00:00"
        },
        {
            "name": "phpunit/php-timer",
            "version": "2.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-timer.git",
                "reference": "8b8454ea6958c3dee38453d3bd571e023108c91f"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/8b8454ea6958c3dee38453d3bd571e023108c91f",
                "reference": "8b8454ea6958c3dee38453d3bd571e023108c91f",
                "shasum": ""
            },
            "require": {
                "php": "^7.1"
            },
            "require-dev": {
                "phpunit/phpunit": "^7.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Utility class for timing",
            "homepage": "https://github.com/sebastianbergmann/php-timer/",
            "keywords": [
                "timer"
            ],
            "time": "2018-02-01T13:07:23+00:00"
        },
        {
            "name": "phpunit/php-token-stream",
            "version": "3.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-token-stream.git",
                "reference": "21ad88bbba7c3d93530d93994e0a33cd45f02ace"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/php-token-stream/zipball/21ad88bbba7c3d93530d93994e0a33cd45f02ace",
                "reference": "21ad88bbba7c3d93530d93994e0a33cd45f02ace",
                "shasum": ""
            },
            "require": {
                "ext-tokenizer": "*",
                "php": "^7.1"
            },
            "require-dev": {
                "phpunit/phpunit": "^7.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Wrapper around PHP's tokenizer extension.",
            "homepage": "https://github.com/sebastianbergmann/php-token-stream/",
            "keywords": [
                "tokenizer"
            ],
            "time": "2018-02-01T13:16:43+00:00"
        },
        {
            "name": "phpunit/phpunit",
            "version": "7.1.5",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/phpunit.git",
                "reference": "ca64dba53b88aba6af32aebc6b388068db95c435"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/sebastianbergmann/phpunit/ca64dba53b88aba6af32aebc6b388068db95c435.zip",
                "reference": "ca64dba53b88aba6af32aebc6b388068db95c435",
                "shasum": ""
            },
            "require": {
                "ext-dom": "*",
                "ext-json": "*",
                "ext-libxml": "*",
                "ext-mbstring": "*",
                "ext-xml": "*",
                "myclabs/deep-copy": "^1.6.1",
                "phar-io/manifest": "^1.0.1",
                "phar-io/version": "^1.0",
                "php": "^7.1",
                "phpspec/prophecy": "^1.7",
                "phpunit/php-code-coverage": "^6.0.1",
                "phpunit/php-file-iterator": "^1.4.3",
                "phpunit/php-text-template": "^1.2.1",
                "phpunit/php-timer": "^2.0",
                "phpunit/phpunit-mock-objects": "^6.1.1",
                "sebastian/comparator": "^3.0",
                "sebastian/diff": "^3.0",
                "sebastian/environment": "^3.1",
                "sebastian/exporter": "^3.1",
                "sebastian/global-state": "^2.0",
                "sebastian/object-enumerator": "^3.0.3",
                "sebastian/resource-operations": "^1.0",
                "sebastian/version": "^2.0.1"
            },
            "require-dev": {
                "ext-pdo": "*"
            },
            "suggest": {
                "ext-xdebug": "*",
                "phpunit/php-invoker": "^2.0"
            },
            "bin": [
                "phpunit"
            ],
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "7.1-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "The PHP Unit Testing framework.",
            "homepage": "https://phpunit.de/",
            "keywords": [
                "phpunit",
                "testing",
                "xunit"
            ],
            "time": "2018-04-29T15:09:19+00:00"
        },
        {
            "name": "phpunit/phpunit-mock-objects",
            "version": "6.1.1",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/phpunit-mock-objects.git",
                "reference": "70c740bde8fd9ea9ea295be1cd875dd7b267e157"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/sebastianbergmann/phpunit-mock-objects/70c740bde8fd9ea9ea295be1cd875dd7b267e157.zip",
                "reference": "70c740bde8fd9ea9ea295be1cd875dd7b267e157",
                "shasum": ""
            },
            "require": {
                "doctrine/instantiator": "^1.0.5",
                "php": "^7.1",
                "phpunit/php-text-template": "^1.2.1",
                "sebastian/exporter": "^3.1"
            },
            "require-dev": {
                "phpunit/phpunit": "^7.0"
            },
            "suggest": {
                "ext-soap": "*"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "6.1-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Mock Object library for PHPUnit",
            "homepage": "https://github.com/sebastianbergmann/phpunit-mock-objects/",
            "keywords": [
                "mock",
                "xunit"
            ],
            "time": "2018-04-11T04:50:36+00:00"
        },
        {
            "name": "sebastian/code-unit-reverse-lookup",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/code-unit-reverse-lookup.git",
                "reference": "4419fcdb5eabb9caa61a27c7a1db532a6b55dd18"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/4419fcdb5eabb9caa61a27c7a1db532a6b55dd18",
                "reference": "4419fcdb5eabb9caa61a27c7a1db532a6b55dd18",
                "shasum": ""
            },
            "require": {
                "php": "^5.6 || ^7.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^5.7 || ^6.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Looks up which function or method a line of code belongs to",
            "homepage": "https://github.com/sebastianbergmann/code-unit-reverse-lookup/",
            "time": "2017-03-04T06:30:41+00:00"
        },
        {
            "name": "sebastian/comparator",
            "version": "3.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/comparator.git",
                "reference": "ed5fd2281113729f1ebcc64d101ad66028aeb3d5"
            },
            "dist": {
                "type": "zip",
                "url": "https://files.phpcomposer.com/files/sebastianbergmann/comparator/ed5fd2281113729f1ebcc64d101ad66028aeb3d5.zip",
                "reference": "ed5fd2281113729f1ebcc64d101ad66028aeb3d5",
                "shasum": ""
            },
            "require": {
                "php": "^7.1",
                "sebastian/diff": "^3.0",
                "sebastian/exporter": "^3.1"
            },
            "require-dev": {
                "phpunit/phpunit": "^7.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Jeff Welch",
                    "email": "whatthejeff@gmail.com"
                },
                {
                    "name": "Volker Dusch",
                    "email": "github@wallbash.com"
                },
                {
                    "name": "Bernhard Schussek",
                    "email": "bschussek@2bepublished.at"
                },
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Provides the functionality to compare PHP values for equality",
            "homepage": "https://github.com/sebastianbergmann/comparator",
            "keywords": [
                "comparator",
                "compare",
                "equality"
            ],
            "time": "2018-04-18T13:33:00+00:00"
        },
        {
            "name": "sebastian/diff",
            "version": "3.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/diff.git",
                "reference": "e09160918c66281713f1c324c1f4c4c3037ba1e8"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/diff/zipball/e09160918c66281713f1c324c1f4c4c3037ba1e8",
                "reference": "e09160918c66281713f1c324c1f4c4c3037ba1e8",
                "shasum": ""
            },
            "require": {
                "php": "^7.1"
            },
            "require-dev": {
                "phpunit/phpunit": "^7.0",
                "symfony/process": "^2 || ^3.3 || ^4"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Kore Nordmann",
                    "email": "mail@kore-nordmann.de"
                },
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Diff implementation",
            "homepage": "https://github.com/sebastianbergmann/diff",
            "keywords": [
                "diff",
                "udiff",
                "unidiff",
                "unified diff"
            ],
            "time": "2018-02-01T13:45:15+00:00"
        },
        {
            "name": "sebastian/environment",
            "version": "3.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/environment.git",
                "reference": "cd0871b3975fb7fc44d11314fd1ee20925fce4f5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/environment/zipball/cd0871b3975fb7fc44d11314fd1ee20925fce4f5",
                "reference": "cd0871b3975fb7fc44d11314fd1ee20925fce4f5",
                "shasum": ""
            },
            "require": {
                "php": "^7.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.1.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Provides functionality to handle HHVM/PHP environments",
            "homepage": "http://www.github.com/sebastianbergmann/environment",
            "keywords": [
                "Xdebug",
                "environment",
                "hhvm"
            ],
            "time": "2017-07-01T08:51:00+00:00"
        },
        {
            "name": "sebastian/exporter",
            "version": "3.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/exporter.git",
                "reference": "234199f4528de6d12aaa58b612e98f7d36adb937"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/exporter/zipball/234199f4528de6d12aaa58b612e98f7d36adb937",
                "reference": "234199f4528de6d12aaa58b612e98f7d36adb937",
                "shasum": ""
            },
            "require": {
                "php": "^7.0",
                "sebastian/recursion-context": "^3.0"
            },
            "require-dev": {
                "ext-mbstring": "*",
                "phpunit/phpunit": "^6.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.1.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Jeff Welch",
                    "email": "whatthejeff@gmail.com"
                },
                {
                    "name": "Volker Dusch",
                    "email": "github@wallbash.com"
                },
                {
                    "name": "Bernhard Schussek",
                    "email": "bschussek@2bepublished.at"
                },
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                },
                {
                    "name": "Adam Harvey",
                    "email": "aharvey@php.net"
                }
            ],
            "description": "Provides the functionality to export PHP variables for visualization",
            "homepage": "http://www.github.com/sebastianbergmann/exporter",
            "keywords": [
                "export",
                "exporter"
            ],
            "time": "2017-04-03T13:19:02+00:00"
        },
        {
            "name": "sebastian/global-state",
            "version": "2.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/global-state.git",
                "reference": "e8ba02eed7bbbb9e59e43dedd3dddeff4a56b0c4"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/global-state/zipball/e8ba02eed7bbbb9e59e43dedd3dddeff4a56b0c4",
                "reference": "e8ba02eed7bbbb9e59e43dedd3dddeff4a56b0c4",
                "shasum": ""
            },
            "require": {
                "php": "^7.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.0"
            },
            "suggest": {
                "ext-uopz": "*"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Snapshotting of global state",
            "homepage": "http://www.github.com/sebastianbergmann/global-state",
            "keywords": [
                "global state"
            ],
            "time": "2017-04-27T15:39:26+00:00"
        },
        {
            "name": "sebastian/object-enumerator",
            "version": "3.0.3",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/object-enumerator.git",
                "reference": "7cfd9e65d11ffb5af41198476395774d4c8a84c5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/7cfd9e65d11ffb5af41198476395774d4c8a84c5",
                "reference": "7cfd9e65d11ffb5af41198476395774d4c8a84c5",
                "shasum": ""
            },
            "require": {
                "php": "^7.0",
                "sebastian/object-reflector": "^1.1.1",
                "sebastian/recursion-context": "^3.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Traverses array structures and object graphs to enumerate all referenced objects",
            "homepage": "https://github.com/sebastianbergmann/object-enumerator/",
            "time": "2017-08-03T12:35:26+00:00"
        },
        {
            "name": "sebastian/object-reflector",
            "version": "1.1.1",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/object-reflector.git",
                "reference": "773f97c67f28de00d397be301821b06708fca0be"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/773f97c67f28de00d397be301821b06708fca0be",
                "reference": "773f97c67f28de00d397be301821b06708fca0be",
                "shasum": ""
            },
            "require": {
                "php": "^7.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.1-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Allows reflection of object attributes, including inherited and non-public ones",
            "homepage": "https://github.com/sebastianbergmann/object-reflector/",
            "time": "2017-03-29T09:07:27+00:00"
        },
        {
            "name": "sebastian/recursion-context",
            "version": "3.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/recursion-context.git",
                "reference": "5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8",
                "reference": "5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8",
                "shasum": ""
            },
            "require": {
                "php": "^7.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Jeff Welch",
                    "email": "whatthejeff@gmail.com"
                },
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                },
                {
                    "name": "Adam Harvey",
                    "email": "aharvey@php.net"
                }
            ],
            "description": "Provides functionality to recursively process PHP variables",
            "homepage": "http://www.github.com/sebastianbergmann/recursion-context",
            "time": "2017-03-03T06:23:57+00:00"
        },
        {
            "name": "sebastian/resource-operations",
            "version": "1.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/resource-operations.git",
                "reference": "ce990bb21759f94aeafd30209e8cfcdfa8bc3f52"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/ce990bb21759f94aeafd30209e8cfcdfa8bc3f52",
                "reference": "ce990bb21759f94aeafd30209e8cfcdfa8bc3f52",
                "shasum": ""
            },
            "require": {
                "php": ">=5.6.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Provides a list of PHP built-in functions that operate on resources",
            "homepage": "https://www.github.com/sebastianbergmann/resource-operations",
            "time": "2015-07-28T20:34:47+00:00"
        },
        {
            "name": "sebastian/version",
            "version": "2.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/version.git",
                "reference": "99732be0ddb3361e16ad77b68ba41efc8e979019"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/version/zipball/99732be0ddb3361e16ad77b68ba41efc8e979019",
                "reference": "99732be0ddb3361e16ad77b68ba41efc8e979019",
                "shasum": ""
            },
            "require": {
                "php": ">=5.6"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Library that helps with managing the version number of Git-hosted PHP projects",
            "homepage": "https://github.com/sebastianbergmann/version",
            "time": "2016-10-03T07:35:21+00:00"
        },
        {
            "name": "theseer/tokenizer",
            "version": "1.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/theseer/tokenizer.git",
                "reference": "cb2f008f3f05af2893a87208fe6a6c4985483f8b"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/theseer/tokenizer/zipball/cb2f008f3f05af2893a87208fe6a6c4985483f8b",
                "reference": "cb2f008f3f05af2893a87208fe6a6c4985483f8b",
                "shasum": ""
            },
            "require": {
                "ext-dom": "*",
                "ext-tokenizer": "*",
                "ext-xmlwriter": "*",
                "php": "^7.0"
            },
            "type": "library",
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Arne Blankerts",
                    "email": "arne@blankerts.de",
                    "role": "Developer"
                }
            ],
            "description": "A small library for converting tokenized PHP source code into XML and potentially other formats",
            "time": "2017-04-07T12:08:54+00:00"
        },
        {
            "name": "webmozart/assert",
            "version": "1.3.0",
            "source": {
                "type": "git",
                "url": "https://github.com/webmozart/assert.git",
                "reference": "0df1908962e7a3071564e857d86874dad1ef204a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/webmozart/assert/zipball/0df1908962e7a3071564e857d86874dad1ef204a",
                "reference": "0df1908962e7a3071564e857d86874dad1ef204a",
                "shasum": ""
            },
            "require": {
                "php": "^5.3.3 || ^7.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^4.6",
                "sebastian/version": "^1.0.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.3-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Webmozart\\Assert\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Bernhard Schussek",
                    "email": "bschussek@gmail.com"
                }
            ],
            "description": "Assertions to validate method input/output with nice error messages.",
            "keywords": [
                "assert",
                "check",
                "validate"
            ],
            "time": "2018-01-29T19:49:41+00:00"
        }
    ],
    "aliases": [],
    "minimum-stability": "dev",
    "stability-flags": [],
    "prefer-stable": true,
    "prefer-lowest": false,
    "platform": {
        "php": "^7.1.3"
    },
    "platform-dev": []
}
