# Guide de configuration d'un NAS Synology    

## Créer un compte Quickconnect
<br>

Quickconnect permet de vous connecter à votre NAS Synology sur le cloud de Synology.
<br>
<br>

1. Allez sur le **Panneau de Configuration**

![ecran_principal](https://user-images.githubusercontent.com/39523323/107482090-86b59d80-6b7f-11eb-8e60-050757559ac9.png)

2. Allez sur **QuickConnect**

![panneau_de_configuration](https://user-images.githubusercontent.com/39523323/107479765-dbefb000-6b7b-11eb-9d09-e905daa79836.png)

3. Activez QuickConnect en cochant la case et en mettant un QuickConnect ID.

![quickconnect](https://user-images.githubusercontent.com/39523323/107479501-7996af80-6b7b-11eb-88fe-804c9ba2d145.png)

Désormais, vous pouvez vous connectez avec le lien qui est donné sur **DSM**.<br>
(Ex: `http://QuickConnect.to/Quickconnect_ID`)
<br>
<br>

## Rediriger les connexions HTTP vers HTTPS
<br>

1. Allez sur le **Panneau de Configuration**

![ecran_principal](https://user-images.githubusercontent.com/39523323/107482090-86b59d80-6b7f-11eb-8e60-050757559ac9.png)

2. Allez sur **Réseau**

![reseau](https://user-images.githubusercontent.com/39523323/107484554-e19cc400-6b82-11eb-8684-88b8538cd611.png)

3. Cliquez sur l'onglet **Paramètres de DSM** et cochez la case **Rédiriger automatiquement les connexion HTTP vers HTTPS pour le bureau DSM**

![https](https://user-images.githubusercontent.com/39523323/107501438-ace73780-6b97-11eb-9fc2-2f1004633e1f.png)

## Mettre en place en accès externe au NAS Synology

<br>

Ceci vous permet d'accéder à votre NAS Synology via le navigateur web.
<br>
<br>

1. Allez sur le **Panneau de Configuration**

![panneau_de_configuration](https://user-images.githubusercontent.com/39523323/107479765-dbefb000-6b7b-11eb-9d09-e905daa79836.png)

2. Allez sur **Accès Externe**

![acces_externe](https://user-images.githubusercontent.com/39523323/107496459-a48bfe00-6b91-11eb-91d2-a3dbe2a7d9b6.png)

3. Cliquez sur l'onglet **DDNS** et cliquez sur le bouton **Ajouter**

![activer_ddns](https://user-images.githubusercontent.com/39523323/107496472-a655c180-6b91-11eb-82c6-5451e2e886c9.png)

4. Cliquez sur la case **Activer la prise en charge DDNS** et choisissez le fournisseur de service (Je vous conseille le **Synology**) et le nom d'hôte.
Activer le **Heartbeat** pour que Synology vous envoie des notifications en cas d'interruption de la connexion.
Vous pouvez aussi configuré l'adresse externe, en cliquant sur le bouton **Configurer une IP externe**

![ajouter_ddns](https://user-images.githubusercontent.com/39523323/107496469-a655c180-6b91-11eb-8d33-6a532956820a.png)

5. Il faut que vous fassiez une **redirection de port sur votre routeur** pour que, depuis l'extérieur, vous atteignez le NAS.
Allez sur votre la page de configuration de votre fournisseur Internet (Ex: `192.168.1.1`) et redirigez un port de votre choix vers le port 5001 (celui du NAS dans votre réseau local)

6. Désormais, vous pouvez vous connectez au NAS Synology sur votre navigateur avec `https://nom_d'hôte:port`

## Mettre le NAS avec une IP statique
<br>

1. Allez sur le **panneau de configuration**

![ecran_principal](https://user-images.githubusercontent.com/39523323/107482090-86b59d80-6b7f-11eb-8e60-050757559ac9.png)

2. Allez sur **Réseau**

![reseau](https://user-images.githubusercontent.com/39523323/107484554-e19cc400-6b82-11eb-8684-88b8538cd611.png)

3. Cliquez sur l'onglet **Interface Réseau**

![interface_reseau](https://user-images.githubusercontent.com/39523323/107484817-40623d80-6b83-11eb-9b46-412aaa0bd7c8.png)

4. Cliquez sur le **LAN** que vous souhaité mettre une IP statique (Ceci est valable seulement si vous avez plusieurs interfaces réseau sur votre NAS Synology) et cliquez sur le bouton **Modifier**

![modifier](https://user-images.githubusercontent.com/39523323/107484831-448e5b00-6b83-11eb-87d0-74442f65160a.png)

5. Cliquez sur **Utiliser la configuration manuelle** et saisissez :
    * Adresse IP
    * Masque de sous réseau
    * Passerelle
    * DNS Server
<br>

![ip_statique](https://user-images.githubusercontent.com/39523323/107484849-48ba7880-6b83-11eb-8482-bc2dbd7b523a.png)

## Activer la double authentification pour un utilisateur

La double authentification permet à l'utilisateur de garantir que si son mot de passe est compromis, le pirate doit encore passer par une étape supplémentaire avant de s'y connecter
<br>
<br>

Si vous n'avez pas encore activer les notifications par email, faites-le avant d'activer la double authentification. Si c'est déjà fait, sautez directement au point 4.
<br>
1. Allez sur **Panneau de Configuration**

![ecran_principal](https://user-images.githubusercontent.com/39523323/107482090-86b59d80-6b7f-11eb-8e60-050757559ac9.png)

2. Allez sur **Notification**

![notification](https://user-images.githubusercontent.com/39523323/107514147-8fbb6480-6ba9-11eb-8a4c-04f7989dc9ea.png)

3. Cliquez sur l'onglet **E-mail**, cochez la case **Activer la notification par email** et saisissez :
  * L'adresse email du destinataire des notifications
  * Le sujet de l'email
  * Le fournisseur de service (si c'est un compte Gmail, Outlook ou une adresse email d'une entreprise) 
  <br>

 ![notification_email](https://user-images.githubusercontent.com/39523323/107512598-55e95e80-6ba7-11eb-94c8-aa0e5088e4a7.png)
<br>

4. Allez sur **Panneau de Configuration**

![panneau_de_configuration](https://user-images.githubusercontent.com/39523323/107479765-dbefb000-6b7b-11eb-9d09-e905daa79836.png)

5. Allez sur **Utilisateur**

![utilisateur](https://user-images.githubusercontent.com/39523323/107512872-b8daf580-6ba7-11eb-9dd6-1336aab514ba.png)

6. Cliquez sur l'onglet **Avancé** et activez la vérification en 2 étapes, en cochant la case **Appliquer la vérification en 2 étapes pour les utilisateurs suivants**.
Vous pouvez décider si seulement les adminis ont besoin de la double authentification ou tous les utilisateurs.

![activer_2a](https://user-images.githubusercontent.com/39523323/107512593-541f9b00-6ba7-11eb-902a-267668808f91.png)

7. Suivez l'assistant pour mettre en place la double authentification sur les utilisateurs
  * Mettre l'email du destinataire
  * Scannez le QR Code avec l'application de double authentification de votre choix. (Ex `Google Authenticator`)
  * Saisissez le code à 6 chiffres qui s'affiche sur l'application

## Activer le blocage d'un compte après 5 tentatives

Ceci permet d'éviter les attaques par force brute (essayer plusieurs fois plusieurs mots de passe jusqu'à avoir le bon mot de passe).
<br>
<br>

1. Allez sur **Panneau de Configuration**

![ecran_principal](https://user-images.githubusercontent.com/39523323/107482090-86b59d80-6b7f-11eb-8e60-050757559ac9.png)

2. Allez sur **Sécurité**

![securite](https://user-images.githubusercontent.com/39523323/107517153-a794e780-6bad-11eb-8c1c-c59104b8fc3d.png)

3. Cliquez sur l'onglet **Compte** et cochez la case **ACtiver le blocage auto**. Mettez les tentatives de connexion en combien de minutes vous désirez pour bloquer le compte.

![blocage_compte](https://user-images.githubusercontent.com/39523323/107517389-ff335300-6bad-11eb-8761-fb8a64114f8e.png)

## Activer les connexions via SSH

1. Allez sur le **Panneau de Configuration**

![ecran_principal](https://user-images.githubusercontent.com/39523323/107482090-86b59d80-6b7f-11eb-8e60-050757559ac9.png)

2. Allez sur **Terminal & SNMP** 

![ssh](https://user-images.githubusercontent.com/39523323/107518288-1d4d8300-6baf-11eb-927a-785e9956e3f9.png)

3. Cliquez sur l'onglet **Terminal**, cochez la case **Activer le service SSH** et **changer le port** par défaut (Ex: `22 vers 111`)

![activer_ssh](https://user-images.githubusercontent.com/39523323/107518793-b8465d00-6baf-11eb-9928-401fe5b88db9.png)

## Mettre en place en VPN OpenVPN

1. Allez sur **Centre de paquets** pour télécharger l'application VPN

![centre_de_paquets](https://user-images.githubusercontent.com/39523323/107520250-81714680-6bb1-11eb-9d0e-3d8816b8a127.png)

2. Ecrivez sur la barre de recherche le mot **vpn** et téléchargez l'application qu'il vous propose

![installer_application](https://user-images.githubusercontent.com/39523323/107520266-846c3700-6bb1-11eb-8d1a-bf3a9b187e8e.png)

3. Allez sur l'application, cliquez sur le menu **OpenVPN** et cochez la case **ACtiver le serveur OpenVPN**. 
Faites les changements nécessaires pour la configuration de votre VPN.

![activer_openvpn](https://user-images.githubusercontent.com/39523323/107520239-7e765600-6bb1-11eb-8118-d76f02391745.png)

4. Une fois terminer, cliquez sur le bouton **Exporter la configuration**. Un fichier contiendra la configuration `.ovpn` que vous devez modifier.
Pour modifier ce fichier, ouvrez-le avec un éditeur de texte (Ex: `vscode` ou `notepad++`).
Mettez votre IP privé et le port que vous avez mis sur  `remote YOUR_SERVER_IP port`

### Avant de mettre la configuration dans un client openvpn, il faut **additionner le port d'OpenVPN au parefeu** du NAS Synology et faire une redirection de port sur votre routeur.
  
5 Pour modifier le pare-feu, allez sur le **Panneau de configuration**

![ecran_principal](https://user-images.githubusercontent.com/39523323/107482090-86b59d80-6b7f-11eb-8e60-050757559ac9.png)

6 Allez sur **Sécurité**

![securite](https://user-images.githubusercontent.com/39523323/107517153-a794e780-6bad-11eb-8c1c-c59104b8fc3d.png)

7. Cliquez sur l'onglet **Pare-feu** et activez-le. Ensuite, cliquez sur le bouton **Modifier les règles**

![activer_pare_feu](https://user-images.githubusercontent.com/39523323/107520247-80d8b000-6bb1-11eb-8a07-d138c2eee16e.png)

8. Créer un nouveau profil 

![nouveau_profil](https://user-images.githubusercontent.com/39523323/107523450-0578fd80-6bb5-11eb-9585-b8518eaad4b5.png)

9. Cochez la case **Séléctionner dans une liste d'applications intégrées** et cliquez sur le bouton **Sélectionnez**

![selectionner_app](https://user-images.githubusercontent.com/39523323/107520269-846c3700-6bb1-11eb-9687-ed3872205b6e.png)

10. Cochez la case pour l'OpenVPN

![selectionner_port_openvpn](https://user-images.githubusercontent.com/39523323/107520270-8504cd80-6bb1-11eb-985f-c5eef2e839bb.png)

11. Assurez-vous que le **profil est activé**

12. Il faut que vous fassiez une **redirection de port sur votre routeur** pour que, depuis l'extérieur, vous atteignez le NAS.
Allez sur votre la page de configuration de votre fournisseur Internet (Ex: `192.168.1.1`) et redirigez le port que vous avez choisi au moment de créer le VPN vers le même port.

13. Désormais, vous pouvez mettre fichier `.ovpn` sur votre client OpenVPN





