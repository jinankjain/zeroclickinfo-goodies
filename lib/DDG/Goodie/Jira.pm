package DDG::Goodie::Jira;
# ABSTRACT returns the URL of an Apache or Codehaus JIRA bug ticket according to its identifier

use DDG::Goodie;

zci is_cached => 1;
zci answer_type => 'jira';

primary_example_queries 'SOLR-4530';
secondary_example_queries 'IdentityHtmlMapper solr-4530';
description 'Track Apache and Codehaus JIRA bug tickets';
name 'Jira';
code_url 'https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/Jira.pm';
category 'programming';
topics 'programming';
attribution github => [ 'https://github.com/arroway', 'arroway'],
            twitter => ['http://twitter.com/steph_ouillon', 'steph_ouillon'];

# Referencing Apache JIRA project keys.
# reference: https://issues.apache.org/jira/secure/BrowseProjects.jspa#all
# A ticket identifier is formed by the key of the project and a number: KEY-NUMBER.
my $Apache_JIRA_keys = qr/ABDERA|ACCUMULO|ACE|ACL|ADDR|ADFFACES|AGILA|AIRAVATA|ALOIS|AMBARI|AMBER|AMQ|AMQCPP|AMQNET|ANAKIA|ANY23|APA|APACHECON|APLO|APOLLO|ARIES|ARMI|ASYNCWEB|ATTIC|ATTRIBUTES|AURORA|AUTOTAG|AVALON|AVNSHARP|AVRO|AWF|AXIOM|AXIS|AXIS2|AXIS2C|AXISCPP|BATCHEE|BATIK|BCEL|BEANUTILS|BEEHIVE|BETWIXT|BIGTOP|BLAZE|BLUESKY|BLUR|BOOKKEEPER|BSF|BUILDR|BVAL|CACTUS|CAMEL|CASSANDRA|CAY|CB|CELIX|CENTRAL|CHAIN|CHUKWA|CLEREZZA|CLI|CLIMATE|CLK|CLKE|CLOUDSTACK|CMIS|COCOON|COCOON3|CODEC|COLLECTIONS|COMDEV|COMMONSSITE|COMPRESS|CONFIGURATION|CONNECTORS|COUCHDB|CRUNCH|CSV|CTAKES|CURATOR|CXF|DAEMON|DATAFU|DAYTRADER|DBCP|DBF|DBUTILS|DDLUTILS|DELTASPIKE|DEPOT|DERBY|DIGESTER|DIR|DIRAPI|DIRECTMEMORY|DIRGROOVY|DIRKRB|DIRMINA|DIRNAMING|DIRSERVER|DIRSHARED|DIRSTUDIO|DIRTSEC|DISCOVERY|DISPATCH|DMAP|DORMANT|DOSGI|DRILL|DROIDS|DTACLOUD|DVSL|EASYANT|ECS|EL|EMAIL|EMPIREDB|ESCIMO|ESME|ETCH|EWS|EXEC|EXLBR|EXTCDI|EXTSCRIPT|EXTVAL|FALCON|FEDIZ|FEEDPARSER|FELIX|FILEUPLOAD|FLEX|FLUME|FOP|FOR|FORTRESS|FTPSERVER|FUNCTOR|GBUILD|GERONIMO|GERONIMODEVTOOLS|GIRAPH|GORA|GRFT|GSHELL|GUMP|HADOOP|HAMA|HARMONY|HBASE|HCATALOG|HDFS|HDT|HELIX|HERALDRY|HERMES|HISE|HIVE|HIVEMIND|HTTPASYNC|HTTPCLIENT|HTTPCORE|HTTPDRAFT|HUPA|IBATIS|IBATISNET|IMAGING|IMAP|IMPERIUS|INCUBATOR|INFRA|IO|ISIS|IVY|IVYDE|JACOB|JAMES|JAXME|JCI|JCLOUDS|JCR|JCRBENCH|JCRCL|JCRRMI|JCRSERVLET|JCRSITE|JCRTCK|JCRVLT|JCS|JDKIM|JDO|JELLY|JENA|JEXL|JS1|JS2|JSEC|JSIEVE|JSPF|JSPWIKI|JUDDI|JXPATH|KAFKA|KALUMET|KAND|KARAF|KATO|KI|KITTY|KNOX|LABS|LANG|LAUNCHER|LCN4C|LEGAL|LIBCLOUD|LOG4J2|LOG4NET|LOG4PHP|LOGCXX|LOGGING|LOKAHI|LUCENE|LUCENENET|LUCY|MAHOUT|MAILBOX|MAILET|MAPREDUCE|MARMOTTA|MASFRES|MATH|MAVIBOT|MESOS|METAMODEL|MFCOMMONS|MFHTML5|MIME4J|MIRAE|MODELER|MODPYTHON|MPOM|MPT|MRQL|MRUNIT|MTOMCAT|MUSE|MYFACES|MYFACESTEST|NEETHI|NET|NPANDAY|NUTCH|NUVEM|OAK|OCM|ODE|ODFTOOLKIT|OEP|OFBIZ|OGNL|OJB|OLINGO|OLIO|OLTU|ONAMI|OODT|OOZIE|OPENEJB|OPENJPA|OPENMEETINGS|OPENNLP|ORCHESTRA|ORP|OWB|PB|PDFBOX|PHOENIX|PHOTARK|PIG|PIVOT|PLANET|PLUTO|PNIX|PODLINGNAMESEARCH|POOL|PORTALS|PORTLETBRIDGE|POSTAGE|PRC|PRIMITIVES|PROTOCOLS|PROTON|PROVISIONR|PROXY|PYLUCENE|QPID|QPIDJMS|RAMPART|RAMPARTC|RAT|RAVE|RBATIS|RESOURCES|RIPPLE|RIVER|ROL|RUNTIME|S4|SAMZA|SAND|SANDBOX|SANDESHA2|SANDESHA2C|SANSELAN|SANTUARIO|SAVAN|SB|SCOUT|SCXML|SENTRY|SHALE|SHINDIG|SHIRO|SIRONA|SIS|SITE|SLING|SM|SMX4|SMX4KNL|SMX4NMR|SMXCOMP|SOAP|SOLR|SPARK|SQOOP|SSHD|STANBOL|STDCXX|STEVE|STOMP|STONEHENGE|STORM|STR|STRATOS|STREAMS|STUDIO|SYNAPSE|SYNCOPE|TAJO|TAP5|TAPESTRY|TASHI|TATPI|TENTACLES|TEVAL|TEXEN|TEZ|THRIFT|TIKA|TILES|TILESSB|TILESSHARED|TILESSHOW|TM|TOBAGO|TOMAHAWK|TOMEE|TOOLS|TORQUE|TORQUEOLD|TRANSACTION|TRANSPORTS|TRB|TREQ|TRINIDAD|TRIPLES|TS|TSIK|TST|TUSCANY|TWILL|UIMA|USERGRID|VALIDATOR|VCL|VELOCITY|VELOCITYSB|VELTOOLS|VFS|VXQUERY|VYSPER|WADI|WAVE|WEAVER|WHIRR|WHISKER|WICKET|WINK|WODEN|WOOKIE|WSCOMMONS|WSIF|WSRP4J|WSS|WW|XALANC|XALANJ|XAP|XBEAN|XERCESC|XERCESJ|XERCESP|XGC|XMLBEANS|XMLCOMMONS|XMLRPC|XMLSCHEMA|XW|YARN|YOKO|ZETACOMP|ZOOKEEPER/i;
my %Apache_JIRA_projects = ("ABDERA", "Abdera", "ACCUMULO", "Accumulo", "ACE", "ACE", "ACL", "ActiveCluster", "ADDR", "Addressing", "ADFFACES", "MyFaces ADF-Faces", "AGILA", " Agila", "AIRAVATA", "Airavata", "ALOIS", "ALOIS", "AMBARI", "Ambari", "AMBER", "Amber", "AMQ", "ActiveMQ", "AMQCPP", "ActiveMQ C++ Client", "AMQNET", "ActiveMQ .Net", "ANAKIA", "Anakia", "ANY23", "Apache Any23", "APA", "Portals Apps", "APACHECON", "Apachecon", "APLO", "ActiveMQ Apollo", "APOLLO", "WSRF", "ARIES", "Aries", "ARMI", "AltRMI", "ASYNCWEB", "Asyncweb", "ATTIC", "Attic", "ATTRIBUTES", "Commons Attributes", "AURORA", "Aurora", "AUTOTAG", "Tiles Autotag", "AVALON", "Avalon", "AVNSHARP", "Avalon Castle", "AVRO", "Avro", "AWF", "Apache AWF", "AXIOM", "Axiom", "AXIS", "Axis", "AXIS2", "Axis2", "AXIS2C", "Axis2-C", "AXISCPP", "Axis-C++", "BATCHEE", "BatchEE", "BATIK", "Batik", "BCEL", "Commons BCEL", "BEANUTILS", "Commons BeanUtils", "BEEHIVE", "Beehive", "BETWIXT", "Commons Betwixt", "BIGTOP", "Bigtop", "BLAZE", "ActiveRealTime", "BLUESKY", "Bluesky", "BLUR", "Apache Blur", "BOOKKEEPER", "Bookkeeper", "BSF", "Commons BSF", "BUILDR", "Buildr", "BVAL", "BVal", "CACTUS", "Cactus", "CAMEL", "Camel", "CASSANDRA", "Cassandra", "CAY", "Cayenne", "CB", "Apache Cordova", "CELIX", "Celix", "CENTRAL", "Avalon Metro Central", "CHAIN", "Commons Chain", "CHUKWA", "Chukwa", "CLEREZZA", "Clerezza", "CLI", "Commons CLI", "CLIMATE", "Apache Open Climate Workbench", "CLK", "Click", "CLKE", "Click Eclipse", "CLOUDSTACK", "CloudStack", "CMIS", "Chemistry", "COCOON", "Cocoon", "COCOON3", "Cocoon 3", "CODEC", "Commons Codec", "COLLECTIONS", "Commons Collections", "COMDEV", "Community Development", "COMMONSSITE", "Commons All", "COMPRESS", "Commons Compress", "CONFIGURATION", "Commons Configuration", "CONNECTORS", "ManifoldCF", "COUCHDB", "CouchDB", "CRUNCH", "Crunch", "CSV", "Commons CSV", "CTAKES", "cTAKES", "CURATOR", "Apache Curator", "CXF", "CXF", "DAEMON", "Commons Daemon", "DATAFU", "DataFu", "DAYTRADER", "DayTrader", "DBCP", "Commons Dbcp", "DBF", "DocBook Framework", "DBUTILS", "Commons DbUtils", "DDLUTILS", "DdlUtils", "DELTASPIKE", "DeltaSpike", "DEPOT", "Depot", "DERBY", "Derby", "DIGESTER", "Commons Digester", "DIR", "Directory", "DIRAPI", "Directory Client API", "DIRECTMEMORY", "Apache DirectMemory", "DIRGROOVY", "Directory Groovy LDAP", "DIRKRB", "Directory Kerberos", "DIRMINA", "MINA", "DIRNAMING", "Directory Naming", "DIRSERVER", "Directory ApacheDS", "DIRSHARED", "Directory Shared (Please use DIRAPI instead)", "DIRSTUDIO", "Directory Studio", "DIRTSEC", "Triplesec", "DISCOVERY", "Commons Discovery", "DISPATCH", "Qpid Dispatch", "DMAP", "DeviceMap", "DORMANT", "Commons Dormant", "DOSGI", "CXF Distributed OSGi", "DRILL", "Apache Drill", "DROIDS", "Droids", "DTACLOUD", "DeltaCloud", "DVSL", "Dvsl", "EASYANT", "EasyAnt", "ECS", "ECS", "EL", "Commons EL", "EMAIL", "Commons Email", "EMPIREDB", "Empire-DB", "ESCIMO", "eSCIMo ", "ESME", "Enterprise Social Messaging Environment (ESME)", "ETCH", "Etch", "EWS", "ews", "EXEC", "Commons Exec", "EXLBR", "Excalibur Components", "EXTCDI", "MyFaces CODI", "EXTSCRIPT", "MyFaces Extensions Scripting", "EXTVAL", "MyFaces Extensions Validator", "FALCON", "Falcon", "FEDIZ", "CXF-Fediz", "FEEDPARSER", "Commons FeedParser", "FELIX", "Felix", "FILEUPLOAD", "Commons FileUpload", "FLEX", "Apache Flex", "FLUME", "Flume", "FOP", "Fop", "FOR", "Forrest", "FORTRESS", "Excalibur Fortress", "FTPSERVER", "FtpServer", "FUNCTOR", "Commons Functor", "GBUILD", "GBuild", "GERONIMO", "Geronimo", "GERONIMODEVTOOLS", "Geronimo-Devtools", "GIRAPH", "Giraph", "GORA", "Apache Gora", "GRFT", "Graffito", "GSHELL", "GShell", "GUMP", "Gump", "HADOOP", "Hadoop Common", "HAMA", "Hama", "HARMONY", "Harmony", "HBASE", "HBase", "HCATALOG", "HCatalog", "HDFS", "Hadoop HDFS", "HDT", "Hadoop Development Tools", "HELIX", "Apache Helix", "HERALDRY", "Heraldry", "HERMES", "Pubscribe", "HISE", "HISE", "HIVE", "Hive", "HIVEMIND", "HiveMind", "HTTPASYNC", "HttpComponents HttpAsyncClient", "HTTPCLIENT", "HttpComponents HttpClient", "HTTPCORE", "HttpComponents HttpCore", "HTTPDRAFT", "Labs WebArch draft-fielding-http", "HUPA", "James Hupa", "IBATIS", "iBatis for Java [READ ONLY]", "IBATISNET", "iBatis for .NET", "IMAGING", "Commons Imaging", "IMAP", "James Imap", "IMPERIUS", "Imperius", "INCUBATOR", "Incubator", "INFRA", "Infrastructure", "IO", "Commons IO", "ISIS", "Isis", "IVY", "Ivy", "IVYDE", "IvyDE", "JACOB", "ODE JaCOb", "JAMES", "James Server", "JAXME", "JaxMe", "JCI", "Commons JCI", "JCLOUDS", "jclouds", "JCR", "Jackrabbit Content Repository", "JCRBENCH", "Jackrabbit JCR Benchmark", "JCRCL", "Jackrabbit JCR Classloader", "JCRRMI", "Jackrabbit JCR-RMI", "JCRSERVLET", "Jackrabbit JCR Servlets", "JCRSITE", "Jackrabbit Site", "JCRTCK", "Jackrabbit JCR Tests", "JCRVLT", "Jackrabbit FileVault", "JCS", "Commons JCS", "JDKIM", "James jDKIM", "JDO", "JDO", "JELLY", "Commons Jelly", "JENA", "Apache Jena", "JEXL", "Commons JEXL", "JS1", "Jetspeed", "JS2", "Jetspeed 2", "JSEC", "JSecurity", "JSIEVE", "James jSieve", "JSPF", "James jSPF", "JSPWIKI", "JSPWiki", "JUDDI", "jUDDI", "JXPATH", "Commons JXPath", "KAFKA", "Kafka", "KALUMET", "Kalumet", "KAND", "Kandula", "KARAF", "Karaf", "KATO", "Kato", "KI", "Ki", "KITTY", "Kitty", "KNOX", "Apache Knox", "LABS", "Labs", "LANG", "Commons Lang", "LAUNCHER", "Commons Launcher", "LCN4C", "Lucene4c", "LEGAL", "Legal Discuss", "LIBCLOUD", "Libcloud", "LOG4J2", "Log4j 2", "LOG4NET", "Log4net", "LOG4PHP", "Log4php", "LOGCXX", "Log4cxx", "LOGGING", "Commons Logging", "LOKAHI", "Lokahi", "LUCENE", "Lucene - Core", "LUCENENET", "Lucene.Net", "LUCY", "Lucy", "MAHOUT", "Mahout", "MAILBOX", "James Mailbox", "MAILET", "James Mailet", "MAPREDUCE", "Hadoop Map/Reduce", "MARMOTTA", "Marmotta", "MASFRES", "Apache Maven Resource Bundles", "MATH", "Commons Math", "MAVIBOT", "Mavibot", "MESOS", "Mesos", "METAMODEL", "Metamodel", "MFCOMMONS", "MyFaces Commons", "MFHTML5", "MyFaces HTML5 Component Library", "MIME4J", "James Mime4j", "MIRAE", "Mirae", "MODELER", "Commons Modeler", "MODPYTHON", "mod_python", "MPOM", "Maven POMs", "MPT", "James MPT", "MRQL", "MRQL", "MRUNIT", "MRUnit", "MTOMCAT", "Apache Tomcat Maven Plugin", "MUSE", "Muse", "MYFACES", "MyFaces Core", "MYFACESTEST", "MyFaces Test", "NEETHI", "Neethi", "NET", "Commons Net", "NPANDAY", "NPanday", "NUTCH", "Nutch", "NUVEM", "Nuvem", "OAK", "Jackrabbit Oak", "OCM", "Jackrabbit OCM", "ODE", "ODE", "ODFTOOLKIT", "ODF Toolkit", "OEP", "OpenEJB Eclipse Plugin", "OFBIZ", "OFBiz", "OGNL", "Commons OGNL", "OJB", "OJB", "OLINGO", "Olingo", "OLIO", "Olio", "OLTU", "Apache Oltu", "ONAMI", "Apache Onami", "OODT", "OODT", "OOZIE", "Oozie", "OPENEJB", "OpenEJB", "OPENJPA", "OpenJPA", "OPENMEETINGS", "Openmeetings", "OPENNLP", "OpenNLP", "ORCHESTRA", "MyFaces Orchestra", "ORP", "Open Relevance Project ", "OWB", "OpenWebBeans", "PB", "Portals Bridges", "PDFBOX", "PDFBox", "PHOENIX", "Phoenix", "PHOTARK", "PhotArk", "PIG", "Pig", "PIVOT", "Pivot", "PLANET", "Avalon Metro Planet", "PLUTO", "Pluto", "PNIX", "Avalon Phoenix", "PODLINGNAMESEARCH", "Podling Suitable Names Search", "POOL", "Commons Pool", "PORTALS", "Portals", "PORTLETBRIDGE", "MyFaces Portlet Bridge", "POSTAGE", "James Postage", "PRC", "Public Relations", "PRIMITIVES", "Commons Primitives", "PROTOCOLS", "James Protocols", "PROTON", "Qpid Proton", "PROVISIONR", "Provisionr", "PROXY", "Commons Proxy", "PYLUCENE", "PyLucene", "QPID", "Qpid", "QPIDJMS", "Qpid JMS", "RAMPART", "Rampart", "RAMPARTC", "Rampart/C", "RAT", "Apache Rat", "RAVE", "Rave", "RBATIS", "iBATIS for Ruby", "RESOURCES", "Commons Resources", "RIPPLE", "Apache Ripple", "RIVER", "River", "ROL", "Apache Roller", "RUNTIME", "Avalon Merlin Runtime", "S4", "Apache S4", "SAMZA", "Samza", "SAND", "Sandesha", "SANDBOX", "Commons Sandbox", "SANDESHA2", "Sandesha2", "SANDESHA2C", "Sandesha2/C", "SANSELAN", "Commons Sanselan", "SANTUARIO", "Santuario", "SAVAN", "Savan", "SB", "Struts Sandbox", "SCOUT", "Scout", "SCXML", "Commons SCXML", "SENTRY", "Sentry", "SHALE", "Shale", "SHINDIG", "Shindig", "SHIRO", "Shiro", "SIRONA", "Sirona", "SIS", "Spatial Information Systems", "SITE", "Struts Shared Resources", "SLING", "Sling", "SM", "ServiceMix", "SMX4", "ServiceMix 4", "SMX4KNL", "ServiceMix Kernel", "SMX4NMR", "ServiceMix NMR", "SMXCOMP", "ServiceMix Components", "SOAP", "SOAP", "SOLR", "Solr", "SPARK", "Spark", "SQOOP", "Sqoop", "SSHD", "MINA SSHD", "STANBOL", "Stanbol", "STDCXX", "C++ Standard Library", "STEVE", "Steve", "STOMP", "Stomp Specification", "STONEHENGE", "Stonehenge", "STORM", "Apache Storm (Incubating)", "STR", "Struts 1", "STRATOS", "Stratos", "STREAMS", "Streams", "STUDIO", "Avalon Merlin Studio", "SYNAPSE", "Synapse", "SYNCOPE", "Syncope", "TAJO", "Tajo", "TAP5", "Tapestry 5", "TAPESTRY", "Tapestry", "TASHI", "Tashi", "TATPI", "TomEE Arquillian Test Porting Initiative", "TENTACLES", "Apache Tentacles", "TEVAL", "Tiles Eval", "TEXEN", "Texen", "TEZ", "Apache Tez", "THRIFT", "Thrift", "TIKA", "Tika", "TILES", "Tiles", "TILESSB", "Tiles Sandbox", "TILESSHARED", "Tiles Shared Resources", "TILESSHOW", "Tiles Showcase", "TM", "BRAND", "TOBAGO", "MyFaces Tobago", "TOMAHAWK", "MyFaces Tomahawk", "TOMEE", "TomEE", "TOOLS", "Avalon Metro Tools", "TORQUE", "Torque", "TORQUEOLD", "Torque issues (old)", "TRANSACTION", "Commons Transaction", "TRANSPORTS", "Axis2 Transports", "TRB", "Turbine", "TREQ", "Tiles Request", "TRINIDAD", "MyFaces Trinidad", "TRIPLES", "TripleSoup", "TS", "Traffic Server", "TSIK", "TSIK", "TST", "Test Project", "TUSCANY", "Tuscany", "TWILL", "Apache Twill", "UIMA", "UIMA", "USERGRID", "Usergrid", "VALIDATOR", "Commons Validator", "VCL", "VCL", "VELOCITY", "Velocity", "VELOCITYSB", "Velocity Sandbox", "VELTOOLS", "Velocity Tools", "VFS", "Commons VFS", "VXQUERY", "VXQuery", "VYSPER", "VYSPER", "WADI", "WADI", "WAVE", "Wave", "WEAVER", "Commons Weaver", "WHIRR", "Whirr", "WHISKER", "Apache Whisker", "WICKET", "Wicket", "WINK", "Wink", "WODEN", "Woden", "WOOKIE", "Wookie", "WSCOMMONS", "WS-Commons", "WSIF", "Axis-WSIF", "WSRP4J", "WSRP4J", "WSS", "WSS4J", "WW", "Struts 2", "XALANC", "XalanC", "XALANJ", "XalanJ2", "XAP", "XAP", "XBEAN", "XBean", "XERCESC", "Xerces-C++", "XERCESJ", "Xerces2-J", "XERCESP", "Xerces-P", "XGC", "XMLGraphicsCommons", "XMLBEANS", "XMLBeans", "XMLCOMMONS", "XML Commons", "XMLRPC", "XML-RPC", "XMLSCHEMA", "XmlSchema", "XW", "XWork", "YARN", "Hadoop YARN", "YOKO", "Yoko - CORBA Server", "ZETACOMP", "Zeta Components", "ZOOKEEPER", "ZooKeeper");


# Referencing Codehaus JIRA project keys.
# reference: http://jira.codehaus.org/secure/BrowseProjects.jspa#all
# A ticket identifier is formed by the key of the project and a number: KEY-NUMBER.
my $Codehaus_JIRA_keys = qr/ACT|AGILIFIER|AJLIB|ANDROMDA|ANNOGEN|ANTOMOLOGY|APPINFO|ARCHETYPE|ASH|ATOMSERVER|AW|AWARE|AWN|BENJI|BERKANO|BLISSED|BOO|BP|BRUCE|BTM|CAKE|CARGO|CASTOR|CBUILDS|CHEN|CJCOOK|CLASSWORLDS|COCACHE|COM|CONSTELLATION|CONTINUUM|CUANTO|DACCO|DATAFORGE|DAVOS|DBUNIT|DC|DENTAKU|DFORMS|DH|DIMPLE|DISPL|DNA|DOXIA|DOXIASITETOOLS|DOXIATOOLS|DRONE|DROOLS|DROOLSDOTNET|DW|DYNJS|EASYMOCK|EASYOVF|EDUS|EINSTEIN|ENUNCIATE|EOB|ERA|ESPER|EUREKAJ|FABRICTHREE|FAQBOT|FCBK|FEST|FITWEB|FOCI|GABRIEL|GANT|GBEAN|GCIDE|GEB|GEMS|GENCORE|GEO|GEOBATCH|GEOS|GEOT|GEOTRACING|GFS|GFX|GLDP|GLOG|GMAVEN|GMAVENPLUS|GMOD|GP|GPARS|GRA|GRAILS|GRAILSPLUGINS|GRAPHPROC|GRECLIPSE|GREENMAIL|GREPO|GRIFFON|GROOVY|GRUPLE|GUESSENC|GUFF|GUMTREE|GWTOPENLAYERS|HAUS|HAUSMOB|HJ|HTCJ|HYDRACACHE|IDEACLEARCASE|IDEAJUNIT|IOKE|IUI|IVYNET|IZPACK|JACKSON|JANINO|JASKELL|JAVANCSS|JAVASIM|JAXBITTY|JAXEN|JBEHAVE|JBL|JCSP|JCT|JDBI|JDBM|JEDI|JEQUEL|JET|JETTISON|JETTY|JFDI|JGEOCODER|JIBE|JIBX|JMETERPLUGIN|JPARSEC|JR|JRUBY|JSDI|JSEC|JSQL|JSRCONCURRENCYMIRROR|JSTR|JTESTME|JTESTR|JTSTAND|JVALIDATIONS|JW|JXR|KEWLANG|KEYMG|KOLJA|LABSNG|LAREX|LINGO|LITHA|LIVETRIBE|LOGICABYSS|LOOM|MACR|MANIMALSNIFFER|MANT|MANTLR|MANTLRTHREE|MANTRUN|MANTTASKS|MAP|MAPFACES|MAPPASM|MARCH|MARCHETYPES|MARNET|MASPECTJ|MASSEMBLY|MAVEN|MAVENENTERPRISE|MAVENPROXY|MAVENUPLOAD|MAXISTOOLS|MBUILDHELPER|MBUILDNUM|MCASSANDRA|MCASTOR|MCHANGELOG|MCHANGES|MCHECKSTYLE|MCHRONOS|MCLEAN|MCLIRR|MCOBERTURA|MCOMATTR|MCOMPILER|MDBUNIT|MDEP|MDEPLOY|MDITA|MDOAP|MDOCCK|MDWEB|MEAR|MECLIPSE|MEJB|MEMMA|MENFORCER|MERCURY|META|METAPP|MEV|MEVENIDE|MEXEC|MFINDBUGS|MFIT|MFITNESSE|MGAE|MGPG|MGROOVY|MGWT|MHIBERNATE|MICRO|MICROMEETING|MIDDLEGEN|MIDEA|MIDLJ|MILYN|MINDEXER|MINGLYN|MINSTALL|MINVOKER|MJAR|MJARSIGNER|MJAVACC|MJAVADOC|MJAXB|MJBOSS|MJBOSSPACK|MJDEPEND|MJDIFF|MJNCSS|MJPOX|MJS|MJSIMP|MJSLINT|MJSPC|MKEYTOOL|MLATEX|MLICENSE|MLINKCHECK|MMLD|MMOCKRM|MNBMODULE|MNETBEANSFREEFORM|MNG|MNGBOOK|MNGECLIPSE|MNGFAQ|MNGIDEA|MNGSITE|MNGTEST|MOCKINJECT|MODELLO|MODFORJ|MOJO|MONE|MOPENJPA|MOUNCE|MPA|MPABBOT|MPANNOUNCEMENT|MPANT|MPANTLR|MPAPPSERVER|MPARTIFACT|MPASHKELON|MPASPECTJ|MPASPECTWERKZ|MPATCH|MPCALLER|MPCASTOR|MPCHANGELOG|MPCHANGES|MPCHECKSTYLE|MPCLEAN|MPCLOVER|MPCONSOLE|MPCRUISECONTROL|MPDASHBOARD|MPDEVACTIVITY|MPDF|MPDIST|MPDOCBOOK|MPEAR|MPECLIPSE|MPEJB|MPFAQ|MPFILEACTIVITY|MPGENAPP|MPGUMP|MPH|MPHIBERNATE|MPHTMLXDOC|MPIDEA|MPIR|MPJALOPY|MPJAR|MPJAVA|MPJAVACC|MPJAVADOC|MPJBOSS|MPJBUILDER|MPJCOVERAGE|MPJDEE|MPJDEPEND|MPJDEVELOPER|MPJDIFF|MPJEE|MPJELLYDOC|MPJETTY|MPJIRA|MPJNLP|MPJUNITDOCLET|MPJUNITREPORT|MPJXR|MPLATEX|MPLATKA|MPLICENSE|MPLINKCHECK|MPLUGIN|MPLUGINTESTING|MPMD|MPMODELLO|MPMULTICHANGES|MPMULTIPROJECT|MPNATIVE|MPNSIS|MPOM|MPPDF|MPPLUGIN|MPPMD|MPPOM|MPRAR|MPRELEASE|MPREPO|MPSCM|MPSHELL|MPSIMIAN|MPSITE|MPSOURCE|MPSTRUTS|MPTASKLIST|MPTEST|MPTJDO|MPUBERJAR|MPVDOCLET|MPWAR|MPWEBSERVER|MPWIZARD|MPXDOC|MRAR|MREACTOR|MRELEASE|MREPOSITORY|MRESOURCES|MRETRO|MRM|MRMIC|MRP|MRPM|MRRESOURCES|MSABLECC|MSANDBOX|MSCMCHGLOG|MSCMPUB|MSELENIUM|MSHADE|MSHARED|MSHITTY|MSITE|MSITESKIN|MSKINS|MSONAR|MSOURCES|MSQL|MSQLJ|MSR|MSTAGE|MSYSDEO|MTAGLIST|MTOMCAT|MTOOLCHAINS|MTRUEZIP|MULTIVERSE|MUNIX|MVEL|MVERIFIER|MVERSIONS|MVFLEX|MVNBLAME|MVNCONFSITE|MWAR|MWAS|MWEBLOGIC|MWEBMINI|MWEBSTART|MWEBTEST|MXMLBEANS|MYTIMES|NAN|NANO|NANOIOC|NANOPERSISTENCE|NANOREMOTING|NANOSANDBOX|NANOTOOLS|NANOWAR|NEO|NEST|NMAVEN|OAUTHSS|OORT|OPENEJB|OPENEMPI|OPENIM|OPENPIPELINE|OPENTCDB|OPENXMA|OSLO|OXFJORD|OXYD|PARANAMER|PASSERELLE|PERFFORJ|PERPETUUM|PHYSIOME|PICO|PICOBOOK|PICOPLUGINS|PICOUNIT|PININ|PLATYPUS|PLJ|PLX|PLXASRVR|PLXCOMP|PLXUTILS|POLYMAP|PREON|PROFICIO|PROM|PROPHIT|PRV|PSEUDOTRANS|PTOYS|PUZZLEGIS|QDOX|QIXWEB|QUAERE|QUILT|REDBACK|RUBYRULES|RVM|SCM|SCRUMTIME|SENRO|SERVICECONDUIT|SERVICESTUDIO|SETPOINT|SHOCKS|SIMJP|SIPO|SONAR|SONARANDRO|SONARCS|SONARIDE|SONARJAVA|SONARJNKNS|SONARJS|SONARPHP|SONARPLUGINS|SONARVS|SOT|SPICE|SQUIGGLE|SSSO|STAX|STAXMATE|STOMP|STORIES|SUREFIRE|SVNA|SVNJ|SWIBY|SWIZZLE|SXC|SYMMETRICDS|SYSUNIT|TEST|TESTDOX|TESTORIENTED|TIMTAM|TIX|TQL|TRAILS|TYNAMO|UDIG|UISPEC|UMP|VG|VIXTORY|WADI|WAFFLE|WAGON|WERKFLOW|WERKZ|WSTX|XB|XDASJ|XDOCLET|XDP|XEVPP|XFIRE|XHARNESS|XJB|XLITE|XPR|XSITE|XSTR|XTENLANG|XULUX|XWIRE|YAGLL|YAN|YFACES|YUMAFRAMEWORK|ZONEINFOTZ/i;
my %Codehaus_JIRA_projects = ("ACT", "Activiti", "AGILIFIER", "Agilifier", "AJLIB", "ajlib incubator", "ANDROMDA", "AndroMDA Model-Driven Architecture", "ANNOGEN", "Annogen", "ANTOMOLOGY", "Antomology", "APPINFO", "AppInfo", "ARCHETYPE", "Maven Archetype", "ASH", "Ashcroft", "ATOMSERVER", "AtomServer", "AW", "AspectWerkz", "AWARE", "AWare", "AWN", "adarwin", "BENJI", "Benji", "BERKANO", "Berkano", "BLISSED", "blissed", "BOO", "Boo", "BP", "backport175", "BRUCE", "Bruce", "BTM", "BTM", "CAKE", "Cake", "CARGO", "Cargo", "CASTOR", "castor", "CBUILDS", "Mojo's C Builds", "CHEN", "ChenilleKit", "CJCOOK", "Common Java Cookbook", "CLASSWORLDS", "classworlds", "COCACHE", "Coconut Cache", "COM", "Codehaus commons", "CONSTELLATION", "Constellation", "CONTINUUM", "Continuum", "CUANTO", "Cuanto", "DACCO", "DACCO", "DATAFORGE", "dataforge", "DAVOS", "Davos", "DBUNIT", "dbUnit", "DC", "DamageControl", "DENTAKU", "Dentaku", "DFORMS", "DForms", "DH", "Duck Hawk", "DIMPLE", "Dimple", "DISPL", "DisplayTag", "DNA", "dna", "DOXIA", "Maven Doxia", "DOXIASITETOOLS", "Maven Doxia Sitetools", "DOXIATOOLS", "Maven Doxia Tools", "DRONE", "Drone", "DROOLS", "drools-legacy", "DROOLSDOTNET", "DroolsDotNet", "DW", "domainWorkbench", "DYNJS", "dynjs", "EASYMOCK", "EasyMock", "EASYOVF", "easy OVF", "EDUS", "Eclipse Dynamic Update Server", "EINSTEIN", "Einstein", "ENUNCIATE", "Enunciate", "EOB", "Enterprise Object Broker", "ERA", "ERA", "ESPER", "Esper", "EUREKAJ", "EurekaJ", "FABRICTHREE", "Fabric3", "FAQBOT", "Faqbot", "FCBK", "FCBKComplete", "FEST", "FEST", "FITWEB", "Fitnesse Web", "FOCI", "Foci", "GABRIEL", "Gabriel", "GANT", "Gant", "GBEAN", "GBean", "GCIDE", "Groovy Commons IDE", "GEB", "Geb", "GEMS", "Gems", "GENCORE", "genCore", "GEO", "GeoAPI", "GEOBATCH", "GeoBatch", "GEOS", "GeoServer", "GEOT", "GeoTools", "GEOTRACING", "GeoTracing", "GFS", "Grails Flex Scaffold", "GFX", "GroovyFX", "GLDP", "Gldapo", "GLOG", "Grails Log", "GMAVEN", "GMaven", "GMAVENPLUS", "GMavenPlus", "GMOD", "Groovy Modules", "GP", "GParsec", "GPARS", "gpars (Groovy Parallel Systems)", "GRA", "Generama", "GRAILS", "Grails", "GRAILSPLUGINS", "Grails Plugins", "GRAPHPROC", "Graph Processor", "GRECLIPSE", "GRECLIPSE", "GREENMAIL", "GreenMail", "GREPO", "Generic Repository", "GRIFFON", "Griffon", "GROOVY", "groovy", "GRUPLE", "Gruple", "GUESSENC", "GuessEncoding", "GUFF", "Guff", "GUMTREE", "Gumtree", "GWTOPENLAYERS", "GWT OpenLayers plugin", "HAUS", "Haus Chores", "HAUSMOB", "Hausmob", "HJ", "Hyperjaxb3", "HTCJ", "HTTP Cache For Java", "HYDRACACHE", "Hydra Cache", "IDEACLEARCASE", "idea-clearcase-plugin", "IDEAJUNIT", "idea-junit-plugin", "IOKE", "Ioke", "IUI", "iUI Plugin", "IVYNET", "Ivy.NET", "IZPACK", "IzPack", "JACKSON", "Jackson JSON Processor", "JANINO", "Janino", "JASKELL", "Jaskell", "JAVANCSS", "JavaNCSS", "JAVASIM", "JavaSim", "JAXBITTY", "JAX-Bitty", "JAXEN", "jaxen", "JBEHAVE", "JBehave", "JBL", "JBloglines", "JCSP", "JCSP", "JCT", "JContainer", "JDBI", "jDBI", "JDBM", "jdbm", "JEDI", "Jedi", "JEQUEL", "JEQUEL", "JET", "JET", "JETTISON", "Jettison", "JETTY", "Jetty", "JFDI", "JFDI", "JGEOCODER", "JGeocoder - Free Java Geocoder", "JIBE", "jibe", "JIBX", "JiBX", "JMETERPLUGIN", "JMeter Plugin", "JPARSEC", "JParsec", "JR", "JRemoting", "JRUBY", "JRuby (please use github issues at http://bugs.jruby.org)", "JSDI", "JavaScript Dependency Injection", "JSEC", "JSecurity", "JSQL", "j4sql", "JSRCONCURRENCYMIRROR", "JSR166 Mirror", "JSTR", "JS Test Runner", "JTESTME", "JTestMe", "JTESTR", "JtestR", "JTSTAND", "jtstand", "JVALIDATIONS", "jvalidations", "JW", "JayWalker", "JXR", "Maven JXR", "KEWLANG", "kew", "KEYMG", "KeyMG", "KOLJA", "Kolja", "LABSNG", "Labs NG", "LAREX", "Larex", "LINGO", "Lingo", "LITHA", "Litha-Paint", "LIVETRIBE", "LiveTribe", "LOGICABYSS", "Logic Abyss", "LOOM", "loom", "MACR", "Maven ACR Plugin", "MANIMALSNIFFER", "Mojo's Animal Sniffer", "MANT", "Maven Ant Plugin", "MANTLR", "Mojo's Antlr Maven Plugin", "MANTLRTHREE", "Mojo's Antlr3 Maven Plugin", "MANTRUN", "Maven Antrun Plugin", "MANTTASKS", "Maven Ant Tasks", "MAP", "Community Mapbuilder", "MAPFACES", "MapFaces", "MAPPASM", "Mojo's AppAssembler Maven Plugin", "MARCH", "March", "MARCHETYPES", "Maven Archetype Bundles", "MARNET", "Marionette", "MASPECTJ", "Mojo's AspectJ Maven Plugin", "MASSEMBLY", "Maven Assembly Plugin", "MAVEN", "Maven 1", "MAVENENTERPRISE", "Maven Enterprise", "MAVENPROXY", "maven-proxy", "MAVENUPLOAD", "Maven Upload Requests", "MAXISTOOLS", "Mojo's Axis Tools Maven Plugin", "MBUILDHELPER", "Mojo's Build Helper Maven Plugin", "MBUILDNUM", "Mojo's Build Number Maven Plugin", "MCASSANDRA", "Mojo's Cassandra Maven Plugin", "MCASTOR", "Mojo's Castor Maven Plugin", "MCHANGELOG", "Maven Changelog Plugin", "MCHANGES", "Maven Changes Plugin", "MCHECKSTYLE", "Maven Checkstyle Plugin", "MCHRONOS", "Mojo's Chronos Maven Plugins", "MCLEAN", "Maven Clean Plugin", "MCLIRR", "Mojo's Clirr Maven Plugin", "MCOBERTURA", "Mojo's Cobertura Maven Plugin", "MCOMATTR", "Mojo's Commons Attributes Maven Plugin", "MCOMPILER", "Maven Compiler Plugin", "MDBUNIT", "Mojo's DbUnit Maven Plugin", "MDEP", "Maven Dependency Plugin", "MDEPLOY", "Maven Deploy Plugin", "MDITA", "Mojo's DITA Open Toolkit Maven Plugin", "MDOAP", "Maven DOAP Plugin", "MDOCCK", "Maven Documentation Checker Plugin", "MDWEB", "MDweb", "MEAR", "Maven Ear Plugin", "MECLIPSE", "Maven Eclipse Plugin", "MEJB", "Maven EJB Plugin", "MEMMA", "Mojo's EMMA Maven Plugin", "MENFORCER", "Maven Enforcer Plugin", "MERCURY", "Mercury (retired)", "META", "MetaClass", "METAPP", "Meta++", "MEV", "Maven Evangelism", "MEVENIDE", "mevenide", "MEXEC", "Mojo's Exec Maven Plugin", "MFINDBUGS", "Mojo's FindBugs Maven Plugin", "MFIT", "Mojo's FIT Maven Plugin", "MFITNESSE", "Mojo's Fitnesse Maven Plugin", "MGAE", "Mojo's GAE Maven Plugin", "MGPG", "Maven GPG Plugin", "MGROOVY", "GMaven (OLD... DO NOT USE)", "MGWT", "Mojo's GWT Maven Plugin", "MHIBERNATE", "Mojo's Hibernate3 Maven Plugin", "MICRO", "MicroContainer", "MICROMEETING", "MicroMeeting", "MIDDLEGEN", "middlegen3", "MIDEA", "Maven IDEA Plugin (RETIRED)", "MIDLJ", "Mojo's CORBA IDL Compiler Maven Plugin", "MILYN", "Milyn", "MINDEXER", "Maven Indexer", "MINGLYN", "Minglyn", "MINSTALL", "Maven Install Plugin", "MINVOKER", "Maven Invoker Plugin", "MJAR", "Maven JAR Plugin", "MJARSIGNER", "Maven Jar Signer Plugin", "MJAVACC", "Mojo's JavaCC Maven Plugin", "MJAVADOC", "Maven Javadoc Plugin", "MJAXB", "Mojo's JAXB-2 Maven Plugin", "MJBOSS", "Mojo's JBoss Maven Plugin", "MJBOSSPACK", "Mojo's JBoss Packaging Maven Plugin", "MJDEPEND", "Mojo's JDepend Maven Plugin", "MJDIFF", "Mojo's JDiff Maven Plugin", "MJNCSS", "Mojo's JavaNCSS Maven Plugin", "MJPOX", "Mojo's JPox Maven Plugin", "MJS", "Mojo's Javascript Tools", "MJSIMP", "Mojo's JavaScript Import Maven Plugin", "MJSLINT", "Mojo's JSLint Maven Plugin", "MJSPC", "Mojo's JSPC Maven Plugin", "MKEYTOOL", "Mojo's Keytool Maven Plugin", "MLATEX", "Mojo's Latex Maven Plugin", "MLICENSE", "Mojo's License Maven Plugin", "MLINKCHECK", "Maven Linkcheck Plugin", "MMLD", "Marmalade", "MMOCKRM", "Mojo's Mock Repository Manager", "MNBMODULE", "Mojo's NetBeans Module Maven Plugin", "MNETBEANSFREEFORM", "Mojo's Netbeans Freeform Maven Plugin (retired)", "MNG", "Maven 2 & 3", "MNGBOOK", "m2book", "MNGECLIPSE", "Maven Integration for Eclipse", "MNGFAQ", "Maven FAQ", "MNGIDEA", "Maven 2.x IDEA Integration", "MNGSITE", "Maven Project Web Site", "MNGTEST", "MNG Test", "MOCKINJECT", "MockInject", "MODELLO", "Modello", "MODFORJ", "Mod4j: Modeling for Java using Domain Specific Languages", "MOJO", "Mojo", "MONE", "Maven One Plugin (RETIRED)", "MOPENJPA", "Mojo's OpenJPA Maven Plugin", "MOUNCE", "Mojo's Ounce Maven Plugin", "MPA", "Maven Project Administration", "MPABBOT", "Maven 1.x Abbot Plugin", "MPANNOUNCEMENT", "Maven 1.x Announcement Plugin", "MPANT", "Maven 1.x Ant Plugin", "MPANTLR", "Maven 1.x Antlr Plugin", "MPAPPSERVER", "Maven 1.x AppServer Plugin", "MPARTIFACT", "Maven 1.x Artifact Plugin", "MPASHKELON", "Maven 1.x Ashkelon Plugin", "MPASPECTJ", "Maven 1.x AspectJ Plugin", "MPASPECTWERKZ", "Maven 1.x AspectWerkz Plugin", "MPATCH", "Maven Patch Plugin", "MPCALLER", "Maven 1.x Caller Plugin", "MPCASTOR", "Maven 1.x Castor Plugin", "MPCHANGELOG", "Maven 1.x Changelog Plugin", "MPCHANGES", "Maven 1.x Changes Plugin", "MPCHECKSTYLE", "Maven 1.x Checkstyle Plugin", "MPCLEAN", "Maven 1.x Clean Plugin", "MPCLOVER", "Maven 1.x Clover Plugin", "MPCONSOLE", "Maven 1.x Console Plugin", "MPCRUISECONTROL", "Maven 1.x CruiseControl Plugin", "MPDASHBOARD", "Maven 1.x Dashboard Plugin", "MPDEVACTIVITY", "Maven 1.x Developer Activity Plugin", "MPDF", "Maven PDF Plugin", "MPDIST", "Maven 1.x Distribution Plugin", "MPDOCBOOK", "Maven 1.x DocBook Plugin", "MPEAR", "Maven 1.x Ear Plugin", "MPECLIPSE", "Maven 1.x Eclipse Plugin", "MPEJB", "Maven 1.x EJB Plugin", "MPFAQ", "Maven 1.x FAQ Plugin", "MPFILEACTIVITY", "Maven 1.x File Activity Plugin", "MPGENAPP", "Maven 1.x Application Generation Plugin", "MPGUMP", "Maven 1.x Gump Plugin", "MPH", "Maven Help Plugin", "MPHIBERNATE", "Maven 1.x Hibernate Plugin", "MPHTMLXDOC", "Maven 1.x Html2XDoc Plugin", "MPIDEA", "Maven 1.x IDEA Plugin", "MPIR", "Maven Project Info Reports Plugin", "MPJALOPY", "Maven 1.x Jalopy Plugin", "MPJAR", "Maven 1.x Jar Plugin", "MPJAVA", "Maven 1.x Java Plugin", "MPJAVACC", "Maven 1.x JavaCC Plugin", "MPJAVADOC", "Maven 1.x Javadoc Plugin", "MPJBOSS", "Maven 1.x JBoss Plugin", "MPJBUILDER", "Maven 1.x JBuilder Plugin", "MPJCOVERAGE", "Maven 1.x JCoverage Plugin", "MPJDEE", "Maven 1.x JDEE Plugin", "MPJDEPEND", "Maven 1.x JDepend Plugin", "MPJDEVELOPER", "Maven 1.x JDeveloper Plugin", "MPJDIFF", "Maven 1.x JDiff Plugin", "MPJEE", "Maven 1.x J2EE Plugin", "MPJELLYDOC", "Maven 1.x JellyDoc Plugin", "MPJETTY", "Maven 1.x Jetty Plugin", "MPJIRA", "Maven 1.x JIRA Plugin", "MPJNLP", "Maven 1.x JNLP Plugin", "MPJUNITDOCLET", "Maven 1.x JUnitDoclet Plugin", "MPJUNITREPORT", "Maven 1.x JUnit Report Plugin", "MPJXR", "Maven 1.x JXR Plugin", "MPLATEX", "Maven 1.x Latex Plugin", "MPLATKA", "Maven 1.x Latka Plugin", "MPLICENSE", "Maven 1.x License Plugin", "MPLINKCHECK", "Maven 1.x LinkCheck Plugin", "MPLUGIN", "Maven Plugin Tools", "MPLUGINTESTING", "Maven Plugin Testing", "MPMD", "Maven PMD Plugin", "MPMODELLO", "Maven 1.x Modello Plugin", "MPMULTICHANGES", "Maven 1.x MultiChanges Plugin", "MPMULTIPROJECT", "Maven 1.x Multi-Project Plugin", "MPNATIVE", "Maven 1.x Native Plugin", "MPNSIS", "Maven 1.x NSIS Plugin", "MPOM", "Apache or Maven Parent POMs", "MPPDF", "Maven 1.x PDF Plugin", "MPPLUGIN", "Maven 1.x Plugin Plugin", "MPPMD", "Maven 1.x PMD Plugin", "MPPOM", "Maven 1.x POM Plugin", "MPRAR", "Maven 1.x RAR Plugin", "MPRELEASE", "Maven 1.x Release Plugin", "MPREPO", "Maven 1.x Repository Plugin", "MPSCM", "Maven 1.x SCM Plugin", "MPSHELL", "Maven 1.x Shell Plugin", "MPSIMIAN", "Maven 1.x Simian Plugin", "MPSITE", "Maven 1.x Site Plugin", "MPSOURCE", "Maven 1.x Source Plugin", "MPSTRUTS", "Maven 1.x Struts Plugin", "MPTASKLIST", "Maven 1.x Tasklist Plugin", "MPTEST", "Maven 1.x Test Plugin", "MPTJDO", "Maven 1.x TJDO Plugin", "MPUBERJAR", "Maven 1.x UberJar Plugin", "MPVDOCLET", "Maven 1.x VDoclet Plugin", "MPWAR", "Maven 1.x War Plugin", "MPWEBSERVER", "Maven 1.x Webserver Plugin", "MPWIZARD", "Maven 1.x Wizard Plugin", "MPXDOC", "Maven 1.x XDoc Plugin", "MRAR", "Maven Rar Plugin", "MREACTOR", "Maven Reactor Plugin (RETIRED)", "MRELEASE", "Maven Release Plugin", "MREPOSITORY", "Maven Repository Plugin", "MRESOURCES", "Maven Resources Plugin", "MRETRO", "Mojo's Retrotranslator Maven Plugin", "MRM", "Archiva", "MRMIC", "Mojo's RMIC Maven Plugin", "MRP", "Metacircular Research Platform", "MRPM", "Mojo's RPM Maven Plugin", "MRRESOURCES", "Maven Remote Resources Plugin", "MSABLECC", "Mojo's SableCC Maven Plugin", "MSANDBOX", "Maven Sandbox", "MSCMCHGLOG", "Mojo's SCM Changelog Maven Plugin", "MSCMPUB", "maven-scm-publish-plugin", "MSELENIUM", "Mojo's Selenium Maven Plugin", "MSHADE", "Maven Shade Plugin", "MSHARED", "Maven Shared Components", "MSHITTY", "Mojo's SHITTY Maven Plugin", "MSITE", "Maven Site Plugin", "MSITESKIN", "Mojo's SiteSkinner Maven Plugin", "MSKINS", "Maven Skins", "MSONAR", "Mojo's Sonar Maven Plugin", "MSOURCES", "Maven Source Plugin", "MSQL", "Mojo's SQL Maven Plugin", "MSQLJ", "Mojo's SQLJ Maven Plugin", "MSR", "Messenger", "MSTAGE", "Maven Stage Plugin", "MSYSDEO", "Mojo's Sysdeo Tomcat Maven Plugin", "MTAGLIST", "Mojo's Taglist Maven Plugin", "MTOMCAT", "Maven 2.x Tomcat Plugin", "MTOOLCHAINS", "Maven Toolchains Plugin", "MTRUEZIP", "Mojo's TrueZIP Maven Plugin", "MULTIVERSE", "Multiverse", "MUNIX", "Mojo's Unix Maven Plugin", "MVEL", "MVEL", "MVERIFIER", "Maven Verifier Plugin", "MVERSIONS", "Mojo's Versions Maven Plugin", "MVFLEX", "MVFLEX", "MVNBLAME", "maven blame plugin", "MVNCONFSITE", "maven confluence site plugin", "MWAR", "Maven WAR Plugin", "MWAS", "Mojo's WebSphere 6 Maven Plugin", "MWEBLOGIC", "Mojo's Maven plugin for WebLogic", "MWEBMINI", "Mojo's Web Minifier Maven Plugin", "MWEBSTART", "Mojo's Webstart Maven Plugin", "MWEBTEST", "Mojo's Webtest plugin", "MXMLBEANS", "Mojo's Xmlbeans Maven Plugin", "MYTIMES", "myTimes", "NAN", "nanning", "NANO", "NanoContainer", "NANOIOC", "NanoContainer IoC", "NANOPERSISTENCE", "NanoContainer Persistence", "NANOREMOTING", "NanoContainer Remoting", "NANOSANDBOX", "NanoContainer Sandbox", "NANOTOOLS", "NanoContainer Tools", "NANOWAR", "NanoContainer NanoWar", "NEO", "Neo", "NEST", "NEST", "NMAVEN", "NMaven (Retired)", "OAUTHSS", "OAuth for Spring Security", "OORT", "oort", "OPENEJB", "OpenEJB", "OPENEMPI", "Open Source Master Patient Index", "OPENIM", "OpenIM", "OPENPIPELINE", "OpenPipeline", "OPENTCDB", "OpenTCDB", "OPENXMA", "openXMA", "OSLO", "oslo", "OXFJORD", "oxfjord", "OXYD", "Oxyd", "PARANAMER", "Paranamer", "PASSERELLE", "Passerelle", "PERFFORJ", "Perf4J", "PERPETUUM", "Perpetuum", "PHYSIOME", "Physiome", "PICO", "PicoContainer", "PICOBOOK", "PicoContainer Book", "PICOPLUGINS", "PicoContainer Plugins", "PICOUNIT", "PicoUnit", "PININ", "Pinin", "PLATYPUS", "platypus", "PLJ", "PL-J", "PLX", "Plexus", "PLXASRVR", "Plexus Application Server", "PLXCOMP", "Plexus Components", "PLXUTILS", "Plexus Utils", "POLYMAP", "POLYMAP", "PREON", "Preon", "PROFICIO", "Proficio", "PROM", "Prometheus", "PROPHIT", "Prophit", "PRV", "prevayler", "PSEUDOTRANS", "Maven Pseudo L10n Plugin", "PTOYS", "ProxyToys", "PUZZLEGIS", "Puzzle GIS", "QDOX", "QDox", "QIXWEB", "qixweb", "QUAERE", "Quaere", "QUILT", "Quilt", "REDBACK", "Redback", "RUBYRULES", "Ruby Rules", "RVM", "RVM", "SCM", "Maven SCM", "SCRUMTIME", "Scrum Time", "SENRO", "Senro", "SERVICECONDUIT", "Service Conduit", "SERVICESTUDIO", "ServiceStudio", "SETPOINT", "SetPoint", "SHOCKS", "Shocks", "SIMJP", "Simple Java Profiler", "SIPO", "sippedout", "SONAR", "SonarQube", "SONARANDRO", "SonarQube Android", "SONARCS", "SonarQube C#", "SONARIDE", "SonarQube Eclipse", "SONARJAVA", "SonarQube Java", "SONARJNKNS", "SonarQube Jenkins", "SONARJS", "SonarQube JavaScript", "SONARPHP", "SonarQube PHP", "SONARPLUGINS", "SonarQube Plugins", "SONARVS", "Analysis Bootstrapper for Visual Studio Projects", "SOT", "Soter", "SPICE", "Spice", "SQUIGGLE", "Squiggle", "SSSO", "Simple SSO", "STAX", "StAX", "STAXMATE", "StaxMate", "STOMP", "Stomp", "STORIES", "Agile Stories", "SUREFIRE", "Maven Surefire", "SVNA", "Savana", "SVNJ", "SVN4J", "SWIBY", "Swiby ", "SWIZZLE", "Swizzle", "SXC", "Simple XML Compiler", "SYMMETRICDS", "SymmetricDS", "SYSUNIT", "sysunit", "TEST", "test", "TESTDOX", "TestDox", "TESTORIENTED", "Test-Oriented Development and Debugging", "TIMTAM", "TimTam", "TIX", "Timeindexing", "TQL", "TranQL", "TRAILS", "Trails", "TYNAMO", "Tynamo", "UDIG", "uDIG", "UISPEC", "UISpec4J", "UMP", "Unix Maven Plugin", "VG", "Java Vector Graphics", "VIXTORY", "Agile Requirements Management", "WADI", "WADI", "WAFFLE", "Waffle", "WAGON", "Maven Wagon", "WERKFLOW", "werkflow", "WERKZ", "werkz", "WSTX", "Woodstox", "XB", "XBean", "XDASJ", "xdas4j", "XDOCLET", "XDoclet 2", "XDP", "XDoclet 2 Plugins", "XEVPP", "XML Events Verbatim Pull-Push", "XFIRE", "XFire", "XHARNESS", "XHarness", "XJB", "XJB", "XLITE", "Xlite", "XPR", "xplanner", "XSITE", "XSite", "XSTR", "XStream", "XTENLANG", "X10", "XULUX", "xulux", "XWIRE", "XWire", "YAGLL", "Yagll", "YAN", "Yan", "YFACES", "YFaces", "YUMAFRAMEWORK", "yuma framework", "ZONEINFOTZ", "Zoneinfo TimeZone");


triggers query => qr/^(.*\s)*($Apache_JIRA_keys)\-([\d]{1,})\s*(.*)$|^(.*\s)*($Codehaus_JIRA_keys)\-([\d]{1,})\s*(.*)$/i;

handle query => sub {

    my $apacheKey = $2 || '';
    my $codehausKey = $6 || '';
    
    my $apacheTicketID = $3 || '';
    my $codehausTicketID = $7 || '';

    my $html_return = '';
 
	  # Dealing with the case where two projects on different bugtrackers have the same project key
    if ($apacheKey){
        my $uKey = uc $apacheKey;
        my $apacheTicket = $uKey . "-" . $apacheTicketID;
        my $apacheProject = $Apache_JIRA_projects{$uKey}; 
        $html_return .= qq($apacheProject (Apache JIRA Bugtracker): see ticket <a href="https://issues.apache.org/jira/browse/$apacheTicket">$apacheTicket</a>.);
        $html_return .= '<br>' if $codehausKey;
    }

    if ($codehausKey){
        my $uKey = uc $codehausKey;
        my $codehausTicket = uc $uKey . "-" . $codehausTicketID;
        my $codehausProject = $Codehaus_JIRA_projects{$uKey}; 

        $html_return .= qq($codehausProject (Codehaus JIRA Bugtracker): see ticket <a href="https://jira.codehaus.org/browse/$codehausTicket">$codehausTicket</a>.) if $codehausTicket;
    }

    return undef, html => $html_return if $html_return;
};

1;
