.class public Lorg/mortbay/jetty/webapp/TagLibConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# static fields
.field static synthetic class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;


# instance fields
.field _context:Lorg/mortbay/jetty/webapp/WebAppContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public configureClassLoader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public configureDefaults()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public configureWebApp()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, ": "

    const-string v3, "Could not instantiate listener "

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceAliases()Ljava/util/Map;

    move-result-object v0

    const-string v6, ".tld"

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceAliases()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "/WEB-INF/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    iget-object v8, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v8}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    :goto_1
    if-eqz v0, :cond_4

    array-length v9, v0

    if-ge v8, v9, :cond_4

    aget-object v9, v0, v8

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v9}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v9

    aget-object v10, v0, v8

    invoke-virtual {v9, v10}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    const-string v8, "org.mortbay.jetty.webapp.NoTLDJarPattern"

    invoke-virtual {v0, v8}, Lorg/mortbay/jetty/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v9, v0

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v10, v0

    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x1

    if-eqz v10, :cond_e

    instance-of v0, v10, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_d

    move-object v0, v10

    check-cast v0, Ljava/net/URLClassLoader;

    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v13

    if-eqz v13, :cond_d

    const/4 v14, 0x0

    :goto_4
    array-length v0, v13

    if-ge v14, v0, :cond_d

    aget-object v0, v13, v14

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v15, ".jar"

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    aget-object v0, v13, v14

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x2f

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    add-int/2addr v15, v12

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_7

    iget-object v15, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v15}, Lorg/mortbay/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "TLD search of {}"

    aget-object v15, v13, v14

    invoke-static {v0, v15}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    aget-object v0, v13, v14

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_a

    :cond_8
    :try_start_0
    new-instance v8, Ljava/util/jar/JarFile;

    invoke-direct {v8, v15}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/zip/ZipEntry;

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v7, "META-INF/"

    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "jar:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, v13, v14

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "!/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "TLD found {}"

    invoke-static {v7, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :cond_9
    move-object/from16 v17, v0

    :goto_6
    move-object/from16 v0, v17

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    const/4 v8, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    :goto_8
    :try_start_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Failed to read file: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_c

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    :cond_b
    throw v0

    :cond_c
    :goto_a
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v10}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v10

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_e
    new-instance v5, Lorg/mortbay/xml/XmlParser;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/mortbay/xml/XmlParser;-><init>(Z)V

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    const-string v7, "org.mortbay.jetty.webapp.TagLibConfiguration"

    if-nez v0, :cond_f

    invoke-static {v7}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :cond_f
    const-string v8, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd"

    invoke-static {v0, v8, v6}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    const-string v9, "web-jsptaglib_1_1.dtd"

    invoke-virtual {v5, v9, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_10

    invoke-static {v7}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :cond_10
    const-string v9, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd"

    invoke-static {v0, v9, v6}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    const-string v10, "web-jsptaglib_1_2.dtd"

    invoke-virtual {v5, v10, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_11

    invoke-static {v7}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :cond_11
    const-string v10, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd"

    invoke-static {v0, v10, v6}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    const-string v11, "web-jsptaglib_2_0.xsd"

    invoke-virtual {v5, v11, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_12

    invoke-static {v7}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :cond_12
    invoke-static {v0, v8, v6}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    const-string v8, "web-jsptaglibrary_1_1.dtd"

    invoke-virtual {v5, v8, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_13

    invoke-static {v7}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :cond_13
    invoke-static {v0, v9, v6}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    const-string v8, "web-jsptaglibrary_1_2.dtd"

    invoke-virtual {v5, v8, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    sget-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    if-nez v0, :cond_14

    invoke-static {v7}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->class$org$mortbay$jetty$webapp$TagLibConfiguration:Ljava/lang/Class;

    :cond_14
    invoke-static {v0, v10, v6}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    const-string v6, "web-jsptaglibrary_2_0.xsd"

    invoke-virtual {v5, v6, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v0, "/taglib/listener/listener-class"

    invoke-virtual {v5, v0}, Lorg/mortbay/xml/XmlParser;->setXpath(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/resource/Resource;

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_16

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "TLD="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_16
    :try_start_4
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/io/InputStream;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_2
    :try_start_5
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v6

    :goto_c
    if-nez v6, :cond_17

    const-string v6, "No TLD root in {}"

    invoke-static {v6, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    :cond_17
    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v6}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v0

    if-ge v7, v0, :cond_15

    invoke-virtual {v6, v7}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v8, :cond_19

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    const-string v8, "listener"

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const-string v8, "listener-class"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_6
    invoke-virtual {v0, v8, v10, v9}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "listener="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_18
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/mortbay/jetty/handler/ContextHandler;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    iget-object v11, v1, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->addEventListener(Ljava/util/EventListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    :try_start_8
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_4
    move-exception v0

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_f

    :cond_19
    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_d

    :catch_6
    move-exception v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_f
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_1a
    return-void
.end method

.method public deconfigureWebApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object p0
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/TagLibConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-void
.end method
