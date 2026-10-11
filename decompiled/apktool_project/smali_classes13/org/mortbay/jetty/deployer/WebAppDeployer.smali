.class public Lorg/mortbay/jetty/deployer/WebAppDeployer;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"


# static fields
.field public static synthetic m:Ljava/lang/Class;

.field public static synthetic n:Ljava/lang/Class;


# instance fields
.field public e:Lorg/mortbay/jetty/HandlerContainer;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

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
.method public doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->scan()V

    return-void
.end method

.method public doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAllowDuplicates()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->k:Z

    return p0
.end method

.method public getConfigurationClasses()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->h:[Ljava/lang/String;

    return-object p0
.end method

.method public getContexts()Lorg/mortbay/jetty/HandlerContainer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->e:Lorg/mortbay/jetty/HandlerContainer;

    return-object p0
.end method

.method public getDefaultsDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getWebAppDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->f:Ljava/lang/String;

    return-object p0
.end method

.method public isExtract()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->i:Z

    return p0
.end method

.method public isParentLoaderPriority()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->j:Z

    return p0
.end method

.method public scan()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->e:Lorg/mortbay/jetty/HandlerContainer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->f:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz v1, :cond_12

    array-length v4, v1

    if-ge v3, v4, :cond_12

    aget-object v4, v1, v3

    const-string v5, "CVS/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "CVS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v0, v4}, Lorg/mortbay/resource/Resource;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".war"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".jar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_7

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_7

    :cond_3
    const-string v6, "root"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "/"

    if-nez v6, :cond_5

    const-string v6, "root/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    :goto_2
    move-object v4, v7

    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_6
    iget-boolean v6, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->k:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->e:Lorg/mortbay/jetty/HandlerContainer;

    sget-object v7, Lorg/mortbay/jetty/deployer/WebAppDeployer;->m:Ljava/lang/Class;

    if-nez v7, :cond_7

    const-string v7, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v7}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/deployer/WebAppDeployer;->m:Ljava/lang/Class;

    :cond_7
    invoke-interface {v6, v7}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v6

    move v7, v2

    :goto_4
    array-length v8, v6

    if-ge v7, v8, :cond_c

    aget-object v8, v6, v7

    check-cast v8, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v8}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_7

    :cond_8
    :try_start_0
    instance-of v9, v8, Lorg/mortbay/jetty/webapp/WebAppContext;

    if-eqz v9, :cond_9

    check-cast v8, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_9
    invoke-virtual {v8}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_b

    invoke-virtual {v5}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_b

    goto/16 :goto_7

    :catch_0
    move-exception v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    iget-object v6, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->e:Lorg/mortbay/jetty/HandlerContainer;

    instance-of v6, v6, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    if-eqz v6, :cond_e

    sget-object v6, Lorg/mortbay/jetty/deployer/WebAppDeployer;->n:Ljava/lang/Class;

    if-nez v6, :cond_d

    const-string v6, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v6}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/deployer/WebAppDeployer;->n:Ljava/lang/Class;

    :cond_d
    iget-object v7, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->e:Lorg/mortbay/jetty/HandlerContainer;

    check-cast v7, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v7}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_e

    :try_start_1
    iget-object v6, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->e:Lorg/mortbay/jetty/HandlerContainer;

    check-cast v6, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v6}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mortbay/jetty/webapp/WebAppContext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    new-instance v6, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-direct {v6}, Lorg/mortbay/jetty/webapp/WebAppContext;-><init>()V

    :goto_6
    invoke-virtual {v6, v4}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->h:[Ljava/lang/String;

    if-eqz v4, :cond_f

    invoke-virtual {v6, v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->setConfigurationClasses([Ljava/lang/String;)V

    :cond_f
    iget-object v4, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->g:Ljava/lang/String;

    if-eqz v4, :cond_10

    invoke-virtual {v6, v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->setDefaultsDescriptor(Ljava/lang/String;)V

    :cond_10
    iget-boolean v4, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->i:Z

    invoke-virtual {v6, v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->setExtractWAR(Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    iget-boolean v4, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->j:Z

    invoke-virtual {v6, v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->setParentLoaderPriority(Z)V

    iget-object v4, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->e:Lorg/mortbay/jetty/HandlerContainer;

    invoke-interface {v4, v6}, Lorg/mortbay/jetty/HandlerContainer;->addHandler(Lorg/mortbay/jetty/Handler;)V

    iget-object v4, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->e:Lorg/mortbay/jetty/HandlerContainer;

    invoke-interface {v4}, Lorg/mortbay/component/LifeCycle;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v6}, Lorg/mortbay/component/AbstractLifeCycle;->start()V

    :cond_11
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    return-void

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not directory webapps resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No such webapps resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No HandlerContainer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAllowDuplicates(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->k:Z

    return-void
.end method

.method public setConfigurationClasses([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->h:[Ljava/lang/String;

    return-void
.end method

.method public setContexts(Lorg/mortbay/jetty/HandlerContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->e:Lorg/mortbay/jetty/HandlerContainer;

    return-void
.end method

.method public setDefaultsDescriptor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->g:Ljava/lang/String;

    return-void
.end method

.method public setExtract(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->i:Z

    return-void
.end method

.method public setParentLoaderPriority(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->j:Z

    return-void
.end method

.method public setWebAppDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->f:Ljava/lang/String;

    return-void
.end method
