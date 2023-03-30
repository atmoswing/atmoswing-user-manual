��    �      l  �   �      �  ,   �  D   �  @   +  [   l  �   �  W   L  t  �       +   *  W   V     �  .   �  �  �  �   �     `     w     �     �     �  T   �  D   1  6   v  �   �  �   5  z   �  �   D  ]     �   u  )   �     (     F  p   S  �   �  @   Q  0   �  n   �  l   2     �     �  1   �  &   �           9     H  f   T  w  �  �   3  �   �  _   �       :     #   N  �   r          "     *     =  /   I     y      �  H   �     �        �      	   �   !   �   .   �   *   !  L   9!  �   �!  h   4"  H   �"  5   �"  '   #  R   D#  S   �#     �#  �  �#  �   �%  ;   ~&     �&  ?   �&  �   '  D   �'  X   �'     I(  p   Z(  n  �(    :*  x  @+  2   �,    �,  �   �-  �  p.  8   ,0     e0  )   �0  "   �0  9   �0  �   
1  d   �1  �   :2  �   �2  -   m3  k   �3      4     (4     .4     F4  6   Z4     �4  �   �5  /  S6  B   �7  )   �7  G   �7  .   88  %   g8  /   �8     �8     �8     �8  
   �8  	   �8     9     9  
   !9  	   ,9     69  !   B9  5   d9  D   �9  I   �9  !   ):  *   K:  9   v:  *   �:  .  �:  :   
<  ^   E<  G   �<  i   �<  �   V=  ]   >  �  _>     E@  0   W@  [   �@     �@  =   A  /  @A  �   pC  !   ID     kD     �D     �D     �D  c   �D  Z   9E  K   �E  �   �E  �   sF  �   !G  �   �G  �   �H  �   BI  2   �I     +J     JJ  �   WJ  �   �J  E   �K  8   �K  v   L  �   �L  $   'M     LM  6   \M  2   �M     �M     �M     �M  �   N  �  �N  �   ~P  �   &Q  x   R     �R  \   �R  1   �R  �   /S     T     T  !   %T     GT  8   UT     �T  %   �T  ]   �T  $   %U  	   JU  �   TU     !V  /   .V  @   ^V  @   �V  g   �V  �   HW  �   X  h   �X  F   -Y  8   tY  [   �Y  _   	Z     iZ  �  wZ    k\  <   �]     �]  E   �]  �   %^  D   �^  n   _     �_  �   �_  �  0`  J  �a  �  !c  7   e  :  De  �   f  �  "g  <   i     Wi  <   vi  $   �i  H   �i  �   !j  �   k  �   �k  �   Vl  4   m  w   Bm  (   �m     �m  $   �m  .   n  4   Cn  U  xn  �   �o  I  �p  F   r  4   Vr  S   �r  A   �r  9   !s  6   [s     �s     �s     �s  
   �s  	   �s     �s     �s  
   �s  	   t     t  )   t  @   At  U   �t  R   �t  +   +u  .   Wu  A   �u  *   �u         S   T       2       �   K   @   
          {   V   k   <          �   i                  q   &              w   U   �   F   j       z   E          x       P   |   5   	   �   G   3   %          #   �      s   _   !       �   h          r   c   7   D   g   l          B      ?       J       -           I   ,   =   \   a                /       $   ]       ~      p           6           R   o   [   n   u       b      :                     �       y             v       m               '   }   �           >   X   `           ^   +   4   d           e   )                  M   �   8      ;   0   O   Q   Y   L   *       Z      �   C      9          A   f   t   1      N   "          (      W               H             �   .    :ref:`A predictand database <predictand-db>` :ref:`A predictors archive (e.g. a reanalysis dataset) <reanalyses>` :ref:`Operational predictors from NWP outputs <data-forecaster>` :ref:`Parameters files defining the properties of the method. <parameters-file-forecaster>` A **synthetic xml file** can also be generated (optional) to ease the integration of synthetic data on a web platform, for example. A Docker image is available on DockerHub: https://hub.docker.com/r/atmoswing/forecaster A batch file can be provided to the GUI or the CLI. It contains the data and export paths as well as the analog methods to be applied (defined themselves in the xml parameter files). Automatic tasks can thus execute the Forecaster successively with different options, for example, for different regions. The results can be saved in different directories, or the same ones. Advanced options Allow multiple instances of the Forecaster. Allow multithreading - allows a gain in performance for the calculations (recommended). Batch file properties Batch file to use for the forecast (full path) By default, the Forecaster processes the latest available forecast. However, it can also process a forecast for a given day in the past, provided the NWP outputs are available locally or remotely, or it can be executed to process the last x days. These options can also be executed once a day by a task manager to fill eventual gaps in the previous days. If the forecasts are already present, no computing resources are used. Choose the date from the calendar and the time below. When the software is started, the date and time are set to the current values. The |icon_update| icon allows updating to the current values. Command line interface Configure the forecaster Content 'analog_dates' Content 'time_properties' Define the list of methods Define the list of methods to be performed automatically (also in command line mode) Different directories must be specified for operational forecasting: Different options can control the software's behavior: Directory containing the archive predictors: predictor describing the candidate situations (for example :ref:`reanalyses<reanalyses>`). Directory containing the parameters files: contains the :ref:`xml parameters files (defining by the method parameters)<parameters-file-forecaster>` Directory containing the predictand DB: contains the :ref:`NetCDF file generated from the predictand data<predictand-db>`. Directory to save downloaded real-time predictors: the operational NWP model outputs. Subdirectories are automatically created for each date according to a year/month/day structure (respectively \\ on Windows). Directory to save the forecast exports (xml): location where the synthesis xml file is saved. Directory to save the forecast outputs (NetCDF): location where the results are stored. Subdirectories are also generated for each date. Displays the help of command-line options Displays the software version Docker image Enable or disable the reactivity of the graphical interface. This option must always be enabled for regular use. Errors and warnings - some warnings help to be vigilant in case of problems. However, there might be warnings even during regular operation. Errors only - recommended as long as everything goes as planned. Example of a parameters file for the Forecaster: For example, on Windows, the command can be (don't forget to allow Docker desktop to access the desired disk): For the operational forecasting, two predictor datasets are needed: the NWP outputs and the archive dataset: Forecaster parameters file Full example Get it with: ``docker pull atmoswing/forecaster`` Graphical User Interface (GUI) options Graphical user interface Internet proxy Log options Log preferences control the display of the log window and the level (importance) of reported messages: Maximum number of previous time steps if the download fails - number of attempts on data issued earlier if the desired data cannot be downloaded; this number must be greater than 2 to ensure proper operation of the Forecaster. Indeed, the latest NWP outputs are never instantly accessible, but after a certain delay. In this case, the most recent available data must be used. Maximum number of threads - to be chosen according to the computer's CPU. The software automatically proposes the optimal number of threads for the computer in use. Maximum parallel requests number - parallel requests reduce the download time. However, be careful not to use too many requests (5 being sufficient), at the risk of being excluded from the data provider. Multithreaded - as long as the computer has at least two processors. It is the fastest version. Multithreading Options for automatic predictor download. The choices are: Options for using multiple threads: Options to control the behavior of the interface and its means of communication with the user. Saves calculation time by disabling dialog boxes. The choices are: Or, on Linux: Outputs Predictor download Preferences Process the latest forecast or for a given date Processing options Proxy activation - if necessary. Proxy properties - the proxy address, port, the user name, and password. Proxy user and password Requirements Restrict downloads to needed lead times (enabled by default) - will only download the data needed to process the forecast (skipping unused time steps). Root node Run forecast for a specified date Run forecast for the given number of past days Run forecast for the latest available data Set the log level (0: minimum, 1: errors, 2: warnings (default), 3: verbose) Silent - no dialog box is displayed. The user must, therefore, keep an eye on the log window to detect any error. This option is only useful for very intensive calculations. Some paths automatically defined according to the OS: working directory, log file, and preferences file. Some reference values (e.g., precipitation for different return periods) Some station metadata (ID, name, coordinates, height) Standard - recommended for regular use. Standard - this option is slower than the previous one as it uses a single thread. Start the forecast calculation by clicking on the |icon_run_s| icon in the toolbar. The Forecaster The Forecaster allows processing an analog method based on the latest available NWP outputs or for a given date. The real-time forecast calculation can be performed by a standard computer without specific resources. The forecast can be executed on demand through a graphical user interface (GUI) or can be automated through the use of a command-line interface (CLI). Both aspects are explained hereafter. The Forecaster also has a command-line interface, which makes it possible to automate forecasts on a server. A scheduled task can then be added on a server (ex: Task Scheduler on Windows or Cron task on Linux). The options are as follows: The Forecaster manual is divided into the following topics: The Forecaster needs: The Forecaster produces compressed **NetCDF files** containing: The ``<time_properties>`` property has no ``<time_array_target>`` element, but a ``<lead_time_days>`` element listing the lead times (in days) to process. The ``target`` property of the root node needs to be ``forecaster``. The advanced options are automatically configured and usually do not need to be changed. The analog dates The content of ``<analog_dates>`` is mostly similar to the basic parameters file structure. The differences are: The docker container for AtmoSwing Forecaster uses the same options than the `command line interface` (to the exception of the ``--config`` option). However, different directories need to be mounted in the docker container to allow AtmoSwing accessing the data and saving outputs. The necessary directories are (along with the proposed path in the docker container): The files are saved in a date-based directory structure (for example, 2019/04/23). The Viewer follows the same rules to look for new forecasts automatically. The output directory can be synchronized by means of a file-sharing client to distribute the forecasts. The list of analog methods can be completed, or methods can be deleted. A method here is a specific parameterization of an analog method optimal for a lead time or a region. It is represented in the graphical user interface by choice of a parameters file. An entry can be removed with the |icon_close| icon, and new ones can be added using the |icon_plus| icon below the list. The number of analogs for the different lead times The parameters files for the Forecaster are based on the :ref:`generic parameters file for AtmoSwing<parameters-file>`, but has some specific elements for the operational forecasting as detailed below. A `full example`_ is provided at the bottom of the page. The preferences frame can be opened from the menu Options / Preferences of the main interface or with a button from the toolbar. The processed analog methods are those listed in the lower half of the interface. The methods can differ in terms of structure or parameters, for example, to be adapted for a subregion. The methods are executed one after the other. A |icon_bullet_yellow| icon means that the model is being processed, |icon_bullet_green| that the calculations have been successfully performed and |icon_bullet_red| that the forecast has failed for this method. The proxy configuration contains the following elements: The target dates (lead times) The toolbar allows the following actions: The values of the analogy criteria The values of the predictand for the different lead times Then, the batch file needs to contain the mounted directories in the docker container. If you changed the target directories above, you need to adapt them below as well. The batch file should look like: There is one file per variant of the analog method containing data for all stations of the database. These options influence how the search for analogs is performed, which has no impact on the results, only on the calculation time. The choices are as follows: This section contains the documentation for AtmoSwing Forecaster. This document can also be downloaded as a pdf or epub using the bottom left menu. This tool allows to do the following actions: Threads priority - allows defining the priority of the threads in competition with other ongoing processes. To perform a forecast, one must: Usage Use proxy on given port User specific paths Verbose - a bit more verbose than the Standard option. Verbose - all operations are reported, which is an unnecessary amount of information during regular operation. As a result, important messages might be hidden in a large number of messages. This option is only useful to identify where AtmoSwing is failing. When the list of methods has been modified and should be kept as default, it is necessary to save it (menu 'File / Save batch file'); otherwise, the list will be reset at the software restart. ``<analogs_number>``: The number of analogs to extract is not a single number as in the generic parameters file, but one value has to be provided for each lead time. The number of analogs to extract can thus increase with the lead time to take into account the increasing uncertainty of the NWP outputs. ``<archive_data_id>``: Name of the variable in the archive dataset ``<archive_dataset_id>``: Archive dataset ``<realtime_data_id>``: Name of the variable in the NWP outputs dataset ``<realtime_dataset_id>``: NWP outputs dataset config and log files: ``/app/config`` exports (forecasts synthesis): ``/app/exports`` icon_bullet_green icon_bullet_red icon_bullet_yellow icon_close icon_plus icon_preferences icon_run icon_run_s icon_stop icon_update parameters files: ``/app/params`` predictands: ``/app/predictands`` -> can be read-only predictors archives: ``/app/predictors/archive`` -> can be read-only predictors realtime (eventually downloaded): ``/app/predictors/realtime`` resulting files: ``/app/results`` |icon_preferences| Define the preferences. |icon_run| Run the forecast for the chosen date and time. |icon_stop| Stop the current calculations. Project-Id-Version: AtmoSwing 2.1
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-03-30 11:38+0200
Last-Translator: 
Language-Team: 
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Poedit 3.2.2
 :ref:`Une base de données de predictands <predictand-db>` :ref:`Une archive de prédicteurs (par exemple un jeu de données de réanalyse) <reanalyses>` :ref:`Prédicteurs prévus à partir des sorties NWP <data-forecaster>` :ref:`Fichiers de paramètres définissant les propriétés de la méthode. <parameters-file-forecaster>` Un **fichier xml synthétique** peut également être généré (facultatif) pour faciliter l'intégration des données synthétiques sur une plateforme web, par exemple. Une image Docker est disponible sur DockerHub : https://hub.docker.com/r/atmoswing/forecaster Un fichier batch peut être fourni à l'interface graphique (GUI) ou à la ligne de commande (CLI). Il contient les chemins des données et d'exportation ainsi que les méthodes d'analogues à appliquer (définies dans les fichiers de paramètres xml). Des tâches automatiques peuvent ainsi exécuter successivement le Forecaster avec différentes options, par exemple pour différentes régions. Les résultats peuvent être optionellement sauvegardés dans différents répertoires. Options avancées Autoriser les instances multiples du Forecaster. Autoriser le multithreading - permet un gain de performance pour les calculs (recommandé). Propriétés du fichier batch Fichier batch à utiliser pour la prévision (chemin complet) Par défaut, le Forecaster traite la dernière prévision disponible. Cependant, il peut également calculer une prévision pour un jour donné dans le passé, à condition que les sorties PNT (NWP) soient disponibles localement ou à distance, ou il peut être exécuté pour traiter les x derniers jours. Ces options peuvent également être exécutées une fois par jour par un gestionnaire de tâches pour combler d'éventuelles lacunes dans les jours précédents. Si les prévisions sont déjà présentes, aucune ressource informatique n'est utilisée. Choisir la date dans le calendrier et l'heure en dessous. Au démarrage du logiciel, la date et l'heure sont réglées sur les valeurs actuelles. L'icône |icon_update| permet de mettre à jour les valeurs actuelles. Interface de la ligne de commande Configurer le Forecaster Contenu 'analog_dates' Contenu 'time_properties' Définir la liste des méthodes Définir la liste des méthodes à exécuter automatiquement (également en mode ligne de commande) Différents répertoires doivent être spécifiés pour les prévisions opérationnelles : Différentes options permettent de contrôler le comportement du logiciel : Répertoire contenant les archives de prédicteurs : prédicteur décrivant les situations candidates (par exemple :ref:`reanalyses<reanalyses>`). Répertoire contenant les fichiers de paramètres : contient les :ref:`fichiers de paramètres xml (définis par les paramètres de la méthode)<parameters-file-forecaster>` Répertoire contenant la base de données des prédictands : contient le :ref:`fichier NetCDF généré à partir des données des prédictands<predictand-db>`. Répertoire pour enregistrer les variables prédicteurs prévues : les sorties du modèle PNT (NWP) opérationnel. Des sous-répertoires sont automatiquement créés pour chaque date selon une structure année/mois/jour (respectivement \\ sous Windows). Répertoire pour sauvegarder les exportations de prévisions (xml) : emplacement où le fichier xml de synthèse est sauvegardé. Répertoire pour sauvegarder les sorties de la prévision (NetCDF) : emplacement où les résultats sont stockés. Des sous-répertoires sont également générés pour chaque date. Affiche l'aide des options de la ligne de commande Affiche la version du logiciel Image Docker Activer ou désactiver la réactivité de l'interface graphique. Cette option doit toujours être activée pour une utilisation régulière. Erreurs et avertissements - certains avertissements permettent d'être vigilant en cas de problème. Cependant, il peut y avoir des avertissements même pendant un fonctionnement normal. Erreurs uniquement - recommandé tant que tout se passe comme prévu. Exemple d'un fichier de paramètres pour le Forecaster : Par exemple, sous Windows, la commande peut être (n'oubliez pas d'autoriser Docker à accéder au disque souhaité) : Pour la prévision opérationnelle, deux ensembles de données prédicteurs sont nécessaires : les sorties de la PNT et les données d'archive : Fichier de paramètres du Forecaster Exemple complet Obtenez-le avec : ``docker pull atmoswing/forecaster`` Options de l'interface utilisateur graphique (GUI) Interface utilisateur graphique Proxy Internet Options du journal (log) Les préférences de journal contrôlent l'affichage de la fenêtre de journal et le niveau (importance) des messages rapportés : Nombre maximum de pas de temps antérieurs en cas d'échec du téléchargement - nombre de tentatives sur des données émises précédemment si les données souhaitées ne peuvent être téléchargées ; ce nombre doit être supérieur à 2 pour assurer le bon fonctionnement du Forecaster. En effet, les dernières sorties PNT (NWP) ne sont jamais accessibles instantanément, mais après un certain délai. Dans ce cas, les données disponibles les plus récentes doivent être utilisées. Nombre maximal de threads - à choisir en fonction du CPU de l'ordinateur. Le logiciel propose automatiquement le nombre optimal de threads pour l'ordinateur utilisé. Nombre maximum de requêtes parallèles - les requêtes parallèles réduisent le temps de téléchargement. Attention toutefois à ne pas utiliser trop de requêtes (5 étant suffisantes), au risque d'être exclu du fournisseur de données. Multithreaded - pour autant que l'ordinateur possède au moins deux processeurs. Il s'agit de la version la plus rapide. Multithreading Options pour le téléchargement automatique des prédicteurs. Les choix sont les suivants : Options pour l'utilisation de plusieurs threads : Options permettant de contrôler le comportement de l'interface et ses moyens de communication avec l'utilisateur. Permet de gagner du temps de calcul en désactivant les boîtes de dialogue. Les choix sont les suivants : Ou, sur Linux : Sorties Téléchargement des prédicteurs Préférences Traiter la dernière prévision ou pour une date donnée Options de calculs Activation du proxy - si nécessaire. Propriétés du proxy - l'adresse du proxy, le port, le nom d'utilisateur et le mot de passe. Utilisateur et mot de passe du proxy Exigences Limiter les téléchargements aux échéances nécessaires (activée par défaut) - ne téléchargera que les données nécessaires au calcul de la prévision (en ignorant les échéances non utilisées). Nœud racine Exécuter les prévisions pour une date donnée Exécuter les prévisions pour le nombre donné de jours passés Exécuter la prévision pour les dernières données disponibles Définir le niveau du journal (0 : minimum, 1 : erreurs, 2 : avertissements (par défaut), 3 : verbeux) Silencieux - aucune boîte de dialogue n'est affichée. L'utilisateur doit donc garder un œil sur la fenêtre de journal pour détecter toute erreur. Cette option n'est utile que pour les calculs très intensifs. Certains chemins sont définis automatiquement en fonction du système d'exploitation : le répertoire de travail, le fichier journal et le fichier de préférences. Quelques valeurs de référence (par exemple, les précipitations pour différentes périodes de retour) Quelques métadonnées de la station (ID, nom, coordonnées, altitude) Standard - recommandé pour une utilisation régulière. Standard - cette option est plus lente que la précédente car elle utilise un seul thread. Lancez le calcul de la prévision en cliquant sur l'icône |icon_run_s| dans la barre d'outils. Le Forecaster Le Forecaster permet de calculer une méthode d'analogues basée sur les dernières sorties PNT (NWP) disponibles ou pour une date donnée. Le calcul de la prévision en temps réel peut être effectué par un ordinateur standard sans ressources spécifiques. La prévision peut être exécutée à la demande par le biais d'une interface utilisateur graphique (GUI) ou peut être automatisée par l'utilisation d'une interface de ligne de commande (CLI). Ces deux aspects sont expliqués ci-après. Le Forecaster dispose également d'une interface en ligne de commande, qui permet d'automatiser les prévisions sur un serveur. Une tâche planifiée peut alors être ajoutée sur un serveur (ex : Task Scheduler sous Windows ou tâche Cron sous Linux). Les options sont les suivantes : Le manuel du Forecaster est divisé en plusieurs rubriques : Le Forecaster a besoin : Le Forecaster produit des **fichiers NetCDF** compressés contenant : La propriété ``<time_properties>`` n'a pas d'élément ``<time_array_target>``, mais un élément ``<lead_time_days>`` listant les échéances (en jours) à calculer. La propriété ``target`` du noeud racine doit être ``forecaster``. Les options avancées sont configurées automatiquement et n'ont généralement pas besoin d'être modifiées. Les dates analogues Le contenu de ``<analog_dates>`` est en grande partie similaire à la structure du fichier des paramètres de base. Les différences sont les suivantes : Le conteneur docker pour AtmoSwing Forecaster utilise les mêmes options que l'interface en lignes de commande (à l'exception de l'option `--config`). Cependant, différents répertoires doivent être montés dans le conteneur docker pour permettre à AtmoSwing d'accéder aux données et de sauvegarder les résultats. Les répertoires nécessaires sont les suivants (avec le chemin proposé dans le conteneur docker) : Les fichiers sont enregistrés dans une structure de répertoire basée sur la date (par exemple, 2019/04/23). Le Viewer suit les mêmes règles pour rechercher automatiquement les nouvelles prévisions. Le répertoire de sortie peut être synchronisé à l'aide d'un client de partage de fichiers pour distribuer les prévisions. La liste des méthodes d'analogues peut être complétée, ou des méthodes peuvent être supprimées. Une méthode est ici un paramétrage spécifique d'une méthode d'analogue optimale pour une échéance ou une région. Elle est représentée dans l'interface graphique par le choix d'un fichier de paramètres. Une entrée peut être supprimée à l'aide de l'icône |icon_close|, et de nouvelles entrées peuvent être ajoutées à l'aide de l'icône |icon_plus| située sous la liste. Le nombre d'analogues pour les différentes échéances Les fichiers de paramètres pour le Forecaster sont basés sur le :ref:`fichier de paramètres de base pour AtmoSwing<parameters-file>`, mais comporte quelques éléments spécifiques pour la prévision opérationnelle comme détaillé ci-dessous. Un :ref:`exemple complet<Full example>` est fourni en bas de page. La fenêtre des préférences peut être ouvert à partir du menu Options / Préférences de l'interface principale ou à l'aide d'un bouton de la barre d'outils. Les méthodes d'analogues traitées sont celles listées dans la moitié inférieure de l'interface. Les méthodes peuvent différer en termes de structure ou de paramètres, par exemple pour être adaptées à une sous-région. Les méthodes sont exécutées l'une après l'autre. Une icône |icon_bullet_yellow| signifie que le modèle est en cours de calculs, |icon_bullet_green| que les calculs ont été effectués avec succès et |icon_bullet_red| que la prévision a échoué pour cette méthode. La configuration du proxy contient les éléments suivants : Les dates cibles (échéances) La barre d'outils permet d'effectuer les actions suivantes : Les valeurs des critères d'analogie Les valeurs du prédicand pour les différentes échéances d'exécution Ensuite, le fichier batch doit contenir les répertoires montés dans le conteneur docker. Si vous avez modifié les répertoires cibles ci-dessus, vous devez également les adapter ci-dessous. Le fichier batch doit ressembler à ça : Il existe un fichier par variante de la méthode des analogues contenant les données de toutes les stations de la base de données. Ces options influencent la manière dont la recherche d'analogues est effectuée, ce qui n'a aucun impact sur les résultats, mais uniquement sur le temps de calcul. Les choix sont les suivants : Cette section contient la documentation relative à AtmoSwing Forecaster. Ce document peut également être téléchargé au format pdf ou epub en utilisant le menu en bas à gauche. Cet outil permet d'effectuer les actions suivantes : Priorité des threads - permet de définir la priorité des threads en compétition avec les autres processus en cours. Pour effectuer une prévision, il faut : Utilisation Utiliser le proxy sur le port donné Chemins d'accès spécifiques à l'utilisateur Verbose - un peu plus verbeux que l'option Standard. Verbose - toutes les opérations sont signalées, ce qui représente une quantité inutile d’informations lors d’une opération régulière. Par conséquent, des messages importants peuvent être cachés dans un grand nombre de messages. Cette option n’est utile que pour identifier les endroits où AtmoSwing rencontre des problèmes. Lorsque la liste des méthodes a été modifiée et qu'elle doit être utilisée par défaut, il est nécessaire de la sauvegarder (menu 'Fichier / Enregistrer le fichier batch') ; sinon, la liste sera réinitialisée au redémarrage du logiciel. ``<analogs_number>`` : Le nombre d'analogues à extraire n'est pas un nombre unique comme dans le fichier de paramètres de base, mais une valeur doit être fournie pour chaque échéance. Le nombre d'analogues à extraire peut donc augmenter avec l'échéance pour tenir compte de l'incertitude croissante des sorties de la PNT. ``<archive_data_id>`` : Nom de la variable dans les données d'archive ``<archive_dataset_id>`` : Jeu de données d'archive ``<realtime_data_id>`` : Nom de la variable dans le jeu de données des sorties PNT ``<realtime_dataset_id>`` : Jeu de données des sorties PNT (NWP) fichiers de configuration et de journal : ``/app/config`` exports (synthèse des prévisions) : ``/app/exports`` icon_bullet_green icon_bullet_red icon_bullet_yellow icon_close icon_plus icon_preferences icon_run icon_run_s icon_stop icon_update fichiers de paramètres : ``/app/params`` predictands : ``app/predictands`` -> peut être en lecture seule archives des prédicteurs : `/app/predictors/archive`` -> peut être en lecture seule predictors realtime (éventuellement téléchargé) : ``/app/predictors/realtime`` les fichiers résultants : ``/app/results`` |icon_preferences| Définir les préférences. |icon_run| Lancer la prévision pour la date et l'heure choisies. |icon_stop| Arrêter les calculs en cours. 