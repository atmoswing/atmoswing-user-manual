��    �      t  �   �      �  ,   �  D   �  @   ;  [   |  W   �  t  0     �  +   �  W   �     :  .   P  �    �   )     �               3     M  T   h  D   �  6     �   9  �   �  z   U  �   �  a   �  �     )   �     �     �  p   �  �   T  @   �  0   "  l   S     �     �     �  1   �  &   *     Q  T   j     �     �     �     �  f   �  �   \  _        a  �  p  #   2  �   V     �             /        O      b  H   �     �     �  	   �  !   �  .     *   L  L   w  �   �  �   r   I   !  h   O!  H   �!  5   "  '   7"  R   _"  S   �"     #  �  #  �   �$  ;   �%     �%  ?   �%  �   +&  D   �&  X   '     d'  p   u'    �'  �  �(    �+  k   �,  x  -  2   �.    �.  �   �/  �  s0  �  q2  8   -4  q   f4     �4  )   �4  "    5  9   C5  �   }5  d   H6  �   �6  �   L7  -   �7  k   8      z8     �8     �8     �8  6   �8     9  �   :  /  �:  B   �;  )   9<  G   c<  .   �<     �<     �<     �<  
   =     =  	   '=  	   1=  	   ;=     E=     V=  
   _=  	   j=     t=     �=  *   �=  9   �=  *   �=  I  >  :   g?  ^   �?  M   @  i   O@  ]   �@  �  A     �B  0   C  [   =C     �C  =   �C  /  �C  �   %F     �F     G     6G     MG     gG  c   �G  Z   �G  K   FH  �   �H  �   &I  �   �I  �   uJ  �   sK  �   �K  0   �L     �L      M  �   M  �   �M  E   UN  8   �N  �   �N  $   fO     �O     �O  6   �O  2   �O     P  e   9P     �P     �P     �P     �P  �   �P  �   hQ  x   R     �R  H  �R  1   �T  �   U     �U  !   �U     V  8   )V     bV  %   uV  ]   �V  $   �V  	   W     (W  /   5W  @   eW  @   �W  g   �W  �   OX  �   %Y  Z   �Y  �   KZ  h   �Z  F   Z[  8   �[  [   �[  _   6\     �\  �  �\    �^  <   �_     �_  E   `  �   R`  D   �`  n   @a     �a  �   �a  A  ]b  -  �c  J  �f  �   h  �  �h  7   �j  <  �j  �   �k  t  �l  �  :o  <   2q  �   oq     �q  <   r  $   Or  H   tr  �   �r  �   �s  �   .t  �   �t  4   �u  w   �u  (   Vv     v  $   �v  .   �v  4   �v  U  w  �   jx  I  ay  F   �z  4   �z  S   '{  A   {{     �{     �{     �{  
   �{     �{  	   
|  	   |  	   |     (|     9|  
   B|  	   M|     W|     c|  .   p|  A   �|  *   �|     \   S   T       2           K   ?   	              V       ;          '   m              �   a   $                  U   d   D   n       X   C   
           u   P   ~   5          E   3             "   Z      w   b       I   �   l          v   g       B   k              @      >       J       /           4   ,   <   ^   e            �   9   |   #          �      t   F       6   �      R   s   ]   r   y   �   f      -   p                  �       {             z       q       _       %   �   �   Y       =   +   c       �   x   *   .   h           i   (                  M       7      :   1   O   Q   `   L   )       [          A      8          }   j       o   �   N   !           &      W       G       H             �   0    :ref:`A predictand database <predictand-db>` :ref:`A predictors archive (e.g. a reanalysis dataset) <reanalyses>` :ref:`Operational predictors from NWP outputs <data-forecaster>` :ref:`Parameters files defining the properties of the method. <parameters-file-forecaster>` A Docker image is available on DockerHub: https://hub.docker.com/r/atmoswing/forecaster A batch file can be provided to the GUI or the CLI. It contains the data and export paths as well as the analog methods to be applied (defined themselves in the xml parameter files). Automatic tasks can thus execute the Forecaster successively with different options, for example, for different regions. The results can be saved in different directories, or the same ones. Advanced options Allow multiple instances of the Forecaster. Allow multithreading - allows a gain in performance for the calculations (recommended). Batch file properties Batch file to use for the forecast (full path) By default, the Forecaster processes the latest available forecast. However, it can also process a forecast for a given day in the past, provided the NWP outputs are available locally or remotely, or it can be executed to process the last x days. These options can also be executed once a day by a task manager to fill eventual gaps in the previous days. If the forecasts are already present, no computing resources are used. Choose the date from the calendar and the time below. When the software is started, the date and time are set to the current values. The |icon_update| icon allows updating to the current values. Command line interface Configure the forecaster Content 'analog_dates' Content 'time_properties' Define the list of methods Define the list of methods to be performed automatically (also in command line mode) Different directories must be specified for operational forecasting: Different options can control the software's behavior: Directory containing the archive predictors: predictor describing the candidate situations (for example :ref:`reanalyses<reanalyses>`). Directory containing the parameters files: contains the :ref:`xml parameters files (defining by the method parameters)<parameters-file-forecaster>` Directory containing the predictand DB: contains the :ref:`NetCDF file generated from the predictand data<predictand-db>`. Directory to save downloaded real-time predictors: the operational NWP model outputs. Subdirectories are automatically created for each date according to a year/month/day structure (respectively \\ on Windows). Directory to save the forecast exports (xml/csv): location where the synthesis xml file is saved. Directory to save the forecast outputs (NetCDF): location where the results are stored. Subdirectories are also generated for each date. Displays the help of command-line options Displays the software version Docker image Enable or disable the reactivity of the graphical interface. This option must always be enabled for regular use. Errors and warnings - some warnings help to be vigilant in case of problems. However, there might be warnings even during regular operation. Errors only - recommended as long as everything goes as planned. Example of a parameters file for the Forecaster: For the operational forecasting, two predictor datasets are needed: the NWP outputs and the archive dataset: Forecaster parameters file Full example General options Get it with: ``docker pull atmoswing/forecaster`` Graphical User Interface (GUI) options Graphical user interface In addition, the export format can be selected (for example, full XML or small CSV). Internet proxy Language Libraries options Log options Log preferences control the display of the log window and the level (importance) of reported messages: Maximum number of threads - to be chosen according to the computer's CPU. The software automatically proposes the optimal number of threads for the computer in use. Multithreaded - as long as the computer has at least two processors. It is the fastest version. Multithreading Options for automatic predictor download. The "maximum number of previous time steps if the download fails" corresponds to the number of attempts to retrieve data issued earlier if the desired data cannot be downloaded; this number must be greater than 2 to ensure proper operation of the Forecaster. Indeed, the latest NWP outputs are never instantly accessible, but after a certain delay. In this case, the most recent available data must be used. Options for using multiple threads: Options to control the behavior of the interface and its means of communication with the user. Saves calculation time by disabling dialog boxes. The choices are: Outputs Predictor download Preferences Process the latest forecast or for a given date Processing options Proxy activation - if necessary. Proxy properties - the proxy address, port, the user name, and password. Proxy user and password Requirements Root node Run forecast for a specified date Run forecast for the given number of past days Run forecast for the latest available data Set the log level (0: minimum, 1: errors, 2: warnings (default), 3: verbose) Silent - no dialog box is displayed. The user must, therefore, keep an eye on the log window to detect any error. This option is only useful for very intensive calculations. Some **exports** can also be generated (e.g. synthetic xml or csv files) to ease the integration of synthetic data on a web platform, for example. Some information about the predictors used along with the spatial windows Some paths automatically defined according to the OS: working directory, log file, and preferences file. Some reference values (e.g., precipitation for different return periods) Some station metadata (ID, name, coordinates, height) Standard - recommended for regular use. Standard - this option is slower than the previous one as it uses a single thread. Start the forecast calculation by clicking on the |icon_run_s| icon in the toolbar. The Forecaster The Forecaster allows processing an analog method based on the latest available NWP outputs or for a given date. The real-time forecast calculation can be performed by a standard computer without specific resources. The forecast can be executed on demand through a graphical user interface (GUI) or can be automated through the use of a command-line interface (CLI). Both aspects are explained hereafter. The Forecaster also has a command-line interface, which makes it possible to automate forecasts on a server. A scheduled task can then be added on a server (ex: Task Scheduler on Windows or Cron task on Linux). The options are as follows: The Forecaster manual is divided into the following topics: The Forecaster needs: The Forecaster produces compressed **NetCDF files** containing: The ``<time_properties>`` property has no ``<time_array_target>`` element, but a ``<lead_time_days>`` element listing the lead times (in days) to process. The ``target`` property of the root node needs to be ``forecaster``. The advanced options are automatically configured and usually do not need to be changed. The analog dates The content of ``<analog_dates>`` is mostly similar to the basic parameters file structure. The differences are: The docker container for AtmoSwing Forecaster uses the same options than the `command line interface` (to the exception of the ``--config`` option). However, different directories need to be mounted in the docker container to allow AtmoSwing accessing the data and saving outputs. The entries can be edited by clicking on the |icon_edit| icon. A dialog box appears to set the parameters file name (only the name, not the full path). The parameters file must be located in the directory defined in the preferences. It is an XML file that can be edited with a text editor. The structure of the file is described in the :ref:`parameters file section <parameters-file-forecaster>`. If the file is not found, the |icon_warning| icon is shown. The |icon_info| icon allows displaying the description of the parameters file in a tooltip. The |icon_details| icon allows displaying the content of the parameters file in a new frame (the content cannot be edited). The files are saved in a date-based directory structure (for example, 2019/04/23). The Viewer follows the same rules to look for new forecasts automatically. The output directory can be synchronized by means of a file-sharing client to distribute the forecasts. The language can be changed from the drop-down list. The change is effective after restarting the software. The list of analog methods can be completed, or methods can be deleted. A method here is a specific parameterization of an analog method optimal for a lead time or a region. It is represented in the graphical user interface by choice of a parameters file. An entry can be removed with the |icon_close| icon, and new ones can be added using the |icon_plus| icon below the list. The number of analogs for the different lead times The parameters files for the Forecaster are based on the :ref:`generic parameters file for AtmoSwing<parameters-file>`, but has some specific elements for the operational forecasting as detailed below. A :ref:`full example<Full example>` is provided at the bottom of the page. The path to the ecCodes definitions can be specified. These files are used to decode the GRIB files. The default path is automatically set during installation. The preferences frame can be opened from the menu Options / Preferences of the main interface or with a button from the toolbar. The options related to the batch file are saved in the batch file itself, while the other options are saved in the user preferences file. The preferences are saved when the software is closed. The preferences are automatically loaded when the software is started. AtmoSwing will first look for a preference file in the same directory as the executable, then in the user directory. The processed analog methods are those listed in the lower half of the interface. The methods can differ in terms of structure or parameters, for example, to be adapted for a subregion. The methods are executed one after the other. A |icon_bullet_yellow| icon means that the model is being processed, |icon_bullet_green| that the calculations have been successfully performed and |icon_bullet_red| that the forecast has failed for this method. The proxy configuration contains the following elements: The recommended way to use the docker container is to create a docker-compose file. An example is provided below: The target dates (lead times) The toolbar allows the following actions: The values of the analogy criteria The values of the predictand for the different lead times Then, the batch file needs to contain the mounted directories in the docker container. If you changed the target directories above, you need to adapt them below as well. The batch file should look like: There is one file per variant of the analog method containing data for all stations of the database. These options influence how the search for analogs is performed, which has no impact on the results, only on the calculation time. The choices are as follows: This section contains the documentation for AtmoSwing Forecaster. This document can also be downloaded as a pdf or epub using the bottom left menu. This tool allows to do the following actions: Threads priority - allows defining the priority of the threads in competition with other ongoing processes. To perform a forecast, one must: Usage Use proxy on given port User specific paths Verbose - a bit more verbose than the Standard option. Verbose - all operations are reported, which is an unnecessary amount of information during regular operation. As a result, important messages might be hidden in a large number of messages. This option is only useful to identify where AtmoSwing is failing. When the list of methods has been modified and should be kept as default, it is necessary to save it (menu 'File / Save batch file'); otherwise, the list will be reset at the software restart. ``<analogs_number>``: The number of analogs to extract is not a single number as in the generic parameters file, but one value has to be provided for each lead time. The number of analogs to extract can thus increase with the lead time to take into account the increasing uncertainty of the NWP outputs. ``<archive_data_id>``: Name of the variable in the archive dataset ``<archive_dataset_id>``: Archive dataset ``<realtime_data_id>``: Name of the variable in the NWP outputs dataset ``<realtime_dataset_id>``: NWP outputs dataset icon_bullet_green icon_bullet_red icon_bullet_yellow icon_close icon_details icon_edit icon_info icon_plus icon_preferences icon_run icon_run_s icon_stop icon_update icon_warning |icon_preferences| Define the preferences. |icon_run| Run the forecast for the chosen date and time. |icon_stop| Stop the current calculations. Project-Id-Version: AtmoSwing 2.1
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-07-10 12:20+0200
Last-Translator: 
Language-Team: 
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
Generated-By: Babel 2.11.0
X-Generator: Poedit 3.3.2
 :ref:`Une base de données de predictands <predictand-db>` :ref:`Une archive de prédicteurs (par exemple un jeu de données de réanalyse) <reanalyses>` :ref:`Prédicteurs prévus à partir des sorties PNT (NWP) <data-forecaster>` :ref:`Fichiers de paramètres définissant les propriétés de la méthode. <parameters-file-forecaster>` Une image Docker est disponible sur DockerHub : https://hub.docker.com/r/atmoswing/forecaster Un fichier batch peut être fourni à l'interface graphique (GUI) ou en ligne de commande (CLI). Il contient les chemins des données et d'exportation ainsi que les méthodes d'analogues à appliquer (définies dans les fichiers de paramètres xml). Des tâches automatiques peuvent ainsi exécuter successivement le Forecaster avec différentes options, par exemple pour différentes régions. Les résultats peuvent être optionellement sauvegardés dans différents répertoires. Options avancées Autoriser les instances multiples du Forecaster. Autoriser le multithreading - permet un gain de performance pour les calculs (recommandé). Propriétés du fichier batch Fichier batch à utiliser pour la prévision (chemin complet) Par défaut, le Forecaster traite la dernière prévision disponible. Cependant, il peut également calculer une prévision pour un jour donné dans le passé, à condition que les sorties PNT (NWP) soient disponibles localement ou à distance, ou il peut être exécuté pour traiter les x derniers jours. Ces options peuvent également être exécutées une fois par jour par un gestionnaire de tâches pour combler d'éventuelles lacunes dans les jours précédents. Si les prévisions sont déjà présentes, aucune ressource informatique n'est utilisée. Choisir la date dans le calendrier et l'heure en dessous. Au démarrage du logiciel, la date et l'heure sont réglées sur les valeurs actuelles. L'icône |icon_update| permet de mettre à jour les valeurs actuelles. Interface en ligne de commande Configurer le Forecaster Contenu 'analog_dates' Contenu 'time_properties' Définir la liste des méthodes Définir la liste des méthodes à exécuter automatiquement (également en mode ligne de commande) Différents répertoires doivent être spécifiés pour les prévisions opérationnelles : Différentes options permettent de contrôler le comportement du logiciel : Répertoire contenant les archives de prédicteurs : prédicteur décrivant les situations candidates (par exemple :ref:`réanalyses<reanalyses>`). Répertoire contenant les fichiers de paramètres : contient les :ref:`fichiers de paramètres xml (définis par les paramètres de la méthode)<parameters-file-forecaster>` Répertoire contenant la base de données des prédictants : contient le :ref:`fichier NetCDF généré à partir des données des prédictants<predictand-db>`. Répertoire pour enregistrer les variables prédicteurs prévues : les sorties du modèle PNT (NWP) opérationnel. Des sous-répertoires sont automatiquement créés pour chaque date selon une structure année/mois/jour (respectivement \\ sous Windows). Répertoire pour enregistrer des exportations de prévisions (xml/csv) : emplacement où le fichier xml de synthèse est enregistré. Répertoire pour enregistrer les sorties de la prévision (NetCDF) : emplacement où les résultats sont stockés. Des sous-répertoires sont également générés pour chaque date. Afficher l'aide des options en ligne de commande Afficher la version du logiciel Image Docker Activer ou désactiver la réactivité de l'interface graphique. Cette option doit toujours être activée pour une utilisation régulière. Erreurs et avertissements - certains avertissements permettent d'être vigilant en cas de problème. Cependant, il peut y avoir des avertissements même pendant un fonctionnement normal. Erreurs uniquement - recommandé tant que tout se passe comme prévu. Exemple d'un fichier de paramètres pour le Forecaster : Pour la prévision opérationnelle, deux ensembles de données prédicteurs sont nécessaires : les sorties de la PNT et les données d'archive : Fichier de paramètres du Forecaster Exemple complet Options générales Obtenez-le avec : ``docker pull atmoswing/forecaster`` Options de l'interface utilisateur graphique (GUI) Interface utilisateur graphique En outre, le format d'exportation peut être sélectionné (par exemple, XML complet ou CSV réduit). Proxy Internet Langue Options des librairies Options du journal (log) Les préférences de journal contrôlent l'affichage de la fenêtre de journal et le niveau (importance) des messages rapportés : Nombre maximal de threads - à choisir en fonction du CPU de l'ordinateur. Le logiciel propose automatiquement le nombre optimal de threads pour l'ordinateur utilisé. Multithreaded - pour autant que l'ordinateur possède au moins deux processeurs. Il s'agit de la version la plus rapide. Multithreading Options pour le téléchargement automatique du prédicteur. Le "nombre maximum de pas de temps précédents si le téléchargement échoue" correspond au nombre de tentatives de récupération des données émises précédemment si les données souhaitées ne peuvent pas être téléchargées ; ce nombre doit être supérieur à 2 pour assurer le bon fonctionnement du Forecaster. En effet, les dernières sorties de la PNT ne sont jamais accessibles instantanément, mais après un certain délai. Dans ce cas, les données disponibles les plus récentes doivent être utilisées. Options pour l'utilisation de plusieurs threads : Options permettant de contrôler le comportement de l'interface et ses moyens de communication avec l'utilisateur. Permet de gagner du temps de calcul en désactivant les boîtes de dialogue. Les choix sont les suivants : Sorties Téléchargement des prédicteurs Préférences Traiter la dernière prévision ou pour une date donnée Options de calculs Activation du proxy - si nécessaire. Propriétés du proxy - l'adresse du proxy, le port, le nom d'utilisateur et le mot de passe. Utilisateur et mot de passe du proxy Exigences Nœud racine Exécuter les prévisions pour une date donnée Exécuter les prévisions pour le nombre donné de jours passés Exécuter la prévision pour les dernières données disponibles Définir le niveau du journal (0 : minimum, 1 : erreurs, 2 : avertissements (par défaut), 3 : verbeux) Silencieux - aucune boîte de dialogue n'est affichée. L'utilisateur doit donc garder un œil sur la fenêtre de journal pour détecter toute erreur. Cette option n'est utile que pour les calculs très intensifs. Certains **exports** peuvent également être générés (par exemple, des fichiers synthétiques xml ou csv) pour faciliter l'intégration de données synthétiques sur une plateforme web, par exemple. Quelques informations sur les prédicteurs utilisés ainsi que sur les fenêtres spatiales Certains chemins sont définis automatiquement en fonction du système d'exploitation : le répertoire de travail, le fichier journal et le fichier de préférences. Quelques valeurs de référence (par exemple, les précipitations pour différentes périodes de retour) Quelques métadonnées de la station (ID, nom, coordonnées, altitude) Standard - recommandé pour une utilisation régulière. Standard - cette option est plus lente que la précédente car elle utilise un seul thread. Lancez le calcul de la prévision en cliquant sur l'icône |icon_run_s| dans la barre d'outils. Le Forecaster Le Forecaster permet de calculer une méthode d'analogues basée sur les dernières sorties PNT (NWP) disponibles ou pour une date donnée. Le calcul de la prévision en temps réel peut être effectué par un ordinateur standard sans ressources spécifiques. La prévision peut être exécutée à la demande par le biais d'une interface utilisateur graphique (GUI) ou peut être automatisée par l'utilisation d'une interface en ligne de commande (CLI). Ces deux aspects sont expliqués ci-après. Le Forecaster dispose également d'une interface en ligne de commande, qui permet d'automatiser les prévisions sur un serveur. Une tâche planifiée peut alors être ajoutée sur un serveur (ex : Task Scheduler sous Windows ou tâche Cron sous Linux). Les options sont les suivantes : Le manuel du Forecaster est divisé en plusieurs rubriques : Le Forecaster a besoin : Le Forecaster produit des **fichiers NetCDF** compressés contenant : La propriété ``<time_properties>`` n'a pas d'élément ``<time_array_target>``, mais un élément ``<lead_time_days>`` listant les échéances (en jours) à calculer. La propriété ``target`` du nœud racine doit être ``forecaster``. Les options avancées sont configurées automatiquement et n'ont généralement pas besoin d'être modifiées. Les dates analogues Le contenu de ``<analog_dates>`` est en grande partie similaire à la structure du fichier des paramètres de base. Les différences sont les suivantes : Le conteneur docker pour AtmoSwing Forecaster utilise les mêmes options que l'interface en ligne de commande (à l'exception de l'option ``--config``). Cependant, différents répertoires doivent être montés dans le conteneur docker pour permettre à AtmoSwing d'accéder aux données et de sauvegarder les résultats. Les entrées peuvent être modifiées en cliquant sur l'icône |icon_edit|. Une boîte de dialogue apparaît pour définir le nom du fichier de paramètres (uniquement le nom, pas le chemin d'accès complet). Le fichier de paramètres doit être situé dans le répertoire défini dans les préférences. Il s'agit d'un fichier XML qui peut être édité avec un éditeur de texte. La structure du fichier est décrite dans la section :ref:`fichier de paramètres <parameters-file-forecaster>`. Si le fichier n'est pas trouvé, l'icône |icon_warning| est affichée. L'icône |icon_info| permet d'afficher la description du fichier de paramètres dans une info-bulle. L'icône |icon_details| permet d'afficher le contenu du fichier de paramètres dans une nouvelle fenêtre (le contenu ne peut pas être édité). Les fichiers sont enregistrés dans une structure de répertoire basée sur la date (par exemple, 2019/04/23). Le Viewer suit les mêmes règles pour rechercher automatiquement les nouvelles prévisions. Le répertoire de sortie peut être synchronisé à l'aide d'un client de partage de fichiers pour distribuer les prévisions. La langue peut être modifiée à partir de la liste déroulante. Le changement est effectif après le redémarrage du logiciel. La liste des méthodes d'analogues peut être complétée, ou des méthodes peuvent être supprimées. Une méthode est ici un paramétrage spécifique d'une méthode d'analogue optimale pour une échéance ou une région. Elle est représentée dans l'interface graphique par le choix d'un fichier de paramètres. Une entrée peut être supprimée à l'aide de l'icône |icon_close|, et de nouvelles entrées peuvent être ajoutées à l'aide de l'icône |icon_plus| située sous la liste. Le nombre d'analogues pour les différentes échéances Les fichiers de paramètres pour le Forecaster sont basés sur le :ref:`fichier de paramètres générique pour AtmoSwing<parameters-file>`, mais comportent des éléments spécifiques pour la prévision opérationnelle, comme détaillé ci-dessous. Un :ref:`exemple complet<Full example>` est fourni en bas de page. Le chemin d'accès aux définitions d'ecCodes peut être spécifié. Ces fichiers sont utilisés pour décoder les fichiers GRIB. Le chemin par défaut est automatiquement défini lors de l'installation. La fenêtre des préférences peut être ouvert à partir du menu Options / Préférences de l’interface principale ou à l’aide d’un bouton de la barre d’outils. Les options liées au fichier batch sont sauvegardées dans le fichier batch lui-même, tandis que les autres options sont sauvegardées dans le fichier de préférences de l'utilisateur. Les préférences sont sauvegardées à la fermeture du logiciel et sont automatiquement chargées au démarrage du logiciel. AtmoSwing cherchera d'abord un fichier de préférences dans le même répertoire que l'exécutable, puis dans le répertoire de l'utilisateur. Les méthodes d'analogues traitées sont celles listées dans la moitié inférieure de l'interface. Les méthodes peuvent différer en termes de structure ou de paramètres, par exemple pour être adaptées à une sous-région. Les méthodes sont exécutées l'une après l'autre. Une icône |icon_bullet_yellow| signifie que le modèle est en cours de calculs, |icon_bullet_green| que les calculs ont été effectués avec succès et |icon_bullet_red| que la prévision a échoué pour cette méthode. La configuration du proxy contient les éléments suivants : La manière recommandée d'utiliser le conteneur docker est de créer un fichier docker-compose. Un exemple est fourni ci-dessous : Les dates cibles (échéances) La barre d'outils permet d'effectuer les actions suivantes : Les valeurs des critères d'analogie Les valeurs du prédicand pour les différentes échéances d'exécution Ensuite, le fichier batch doit contenir les répertoires montés dans le conteneur docker. Si vous avez modifié les répertoires cibles ci-dessus, vous devez également les adapter ci-dessous. Le fichier batch doit ressembler à ça : Il existe un fichier par variante de la méthode des analogues contenant les données de toutes les stations de la base de données. Ces options influencent la manière dont la recherche d'analogues est effectuée, ce qui n'a aucun impact sur les résultats, mais uniquement sur le temps de calcul. Les choix sont les suivants : Cette section contient la documentation relative à AtmoSwing Forecaster. Ce document peut également être téléchargé au format pdf ou epub en utilisant le menu en bas à gauche. Cet outil permet d'effectuer les actions suivantes : Priorité des threads - permet de définir la priorité des threads en compétition avec les autres processus en cours. Pour effectuer une prévision, il faut : Utilisation Utiliser le proxy sur le port donné Chemins d'accès spécifiques à l'utilisateur Verbose - un peu plus verbeux que l'option Standard. Verbose - toutes les opérations sont signalées, ce qui représente une quantité inutile d’informations lors d’une opération régulière. Par conséquent, des messages importants peuvent être cachés dans un grand nombre de messages. Cette option n’est utile que pour identifier les endroits où AtmoSwing rencontre des problèmes. Lorsque la liste des méthodes a été modifiée et qu'elle doit être utilisée par défaut, il est nécessaire de la sauvegarder (menu 'Fichier / Enregistrer le fichier batch') ; sinon, la liste sera réinitialisée au redémarrage du logiciel. ``<analogs_number>`` : Le nombre d'analogues à extraire n'est pas un nombre unique comme dans le fichier de paramètres de base, mais une valeur doit être fournie pour chaque échéance. Le nombre d'analogues à extraire peut donc augmenter avec l'échéance pour tenir compte de l'incertitude croissante des sorties de la PNT. ``<archive_data_id>`` : Nom de la variable dans les données d'archive ``<archive_dataset_id>`` : Jeu de données d'archive ``<realtime_data_id>`` : Nom de la variable dans le jeu de données des sorties PNT ``<realtime_dataset_id>`` : Jeu de données des sorties PNT (NWP) icon_bullet_green icon_bullet_red icon_bullet_yellow icon_close icon_details icon_edit icon_info icon_plus icon_preferences icon_run icon_run_s icon_stop icon_update icon_warning |icon_preferences| Définir les préférences. |icon_run| Lancer la prévision pour la date et l'heure choisies. |icon_stop| Arrêter les calculs en cours. 