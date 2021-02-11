# Guide pour configurer un NAS Synology

Le fichier [guide_nas_synology.md](https://github.com/strikerpt/syno_fsd/blob/master/guide_nas_synology.md#mettre-en-place-en-acc%C3%A8s-externe-au-nas-synology) permet de vous guider pour configurer votre NAS Synology.

Il contient :

* La création d'un compte Quickconnect
* La redirection des connexions HTTP vers HTTPS
* La mise en place d'un accès externe au NAS Synology
* La mise en place d'une IP statique pour le NAS
* L'activation de la double authentification pour les utilisateur
* L'activation du blocage d'un compte après 5 tentatives
* L'activation des connexions via SSH
* La mise en place d'un VPN OpenVPN
* La mise en place d'un domaine dans le NAS
* La mise en place de 3 conteneurs docker pour héberger un site web avec base de données

Il contient aussi un [dockerfile](https://github.com/strikerpt/syno_fsd/blob/master/dockerfile) et [docker-compose.yml](https://github.com/strikerpt/syno_fsd/blob/master/docker-compose.yml) si vous voudriez héberger un site web, avec une base de données, avec docker depuis le NAS Synology.
