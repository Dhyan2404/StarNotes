.class public Lorg/mortbay/jetty/deployer/ContextDeployer;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "ConfiguredDeployer"


# instance fields
.field public e:I

.field public f:Lorg/mortbay/util/Scanner;

.field public g:Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;

.field public h:Lorg/mortbay/resource/Resource;

.field public i:Ljava/util/Map;

.field public j:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

.field public k:Lorg/mortbay/jetty/deployer/ConfigurationManager;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->i:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->l:Z

    new-instance v0, Lorg/mortbay/util/Scanner;

    invoke-direct {v0}, Lorg/mortbay/util/Scanner;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    return-void
.end method

.method public static synthetic f(Lorg/mortbay/jetty/deployer/ContextDeployer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lorg/mortbay/jetty/deployer/ContextDeployer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lorg/mortbay/jetty/deployer/ContextDeployer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->l(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->h:Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->j:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mortbay/util/Scanner;->setScanDir(Ljava/io/File;)V

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->getScanInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setScanInterval(I)V

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    iget-boolean v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->l:Z

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setRecursive(Z)V

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    new-instance v1, Lorg/mortbay/jetty/deployer/a;

    invoke-direct {v1, p0}, Lorg/mortbay/jetty/deployer/a;-><init>(Lorg/mortbay/jetty/deployer/ContextDeployer;)V

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    new-instance v0, Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;-><init>(Lorg/mortbay/jetty/deployer/ContextDeployer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->g:Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/Scanner;->addListener(Lorg/mortbay/util/Scanner$Listener;)V

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0}, Lorg/mortbay/util/Scanner;->scan()V

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0}, Lorg/mortbay/util/Scanner;->start()V

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->j:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0, p0}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No context handler collection specified for deployer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No configuraition dir specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->g:Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->removeListener(Lorg/mortbay/util/Scanner$Listener;)V

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->f:Lorg/mortbay/util/Scanner;

    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->stop()V

    return-void
.end method

.method public getConfigurationDir()Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->h:Lorg/mortbay/resource/Resource;

    return-object p0
.end method

.method public getConfigurationManager()Lorg/mortbay/jetty/deployer/ConfigurationManager;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->k:Lorg/mortbay/jetty/deployer/ConfigurationManager;

    return-object p0
.end method

.method public getContexts()Lorg/mortbay/jetty/handler/ContextHandlerCollection;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->j:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    return-object p0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/ContextDeployer;->getConfigurationDir()Lorg/mortbay/resource/Resource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecursive()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->l:Z

    return p0
.end method

.method public getScanInterval()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->e:I

    return p0
.end method

.method public final i(Ljava/lang/String;)Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/mortbay/xml/XmlConfiguration;

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mortbay/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->j:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    const-string v2, "Server"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->k:Lorg/mortbay/jetty/deployer/ConfigurationManager;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/mortbay/jetty/deployer/ConfigurationManager;->getProperties()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {v0, p1}, Lorg/mortbay/xml/XmlConfiguration;->setProperties(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/handler/ContextHandler;

    return-object p0
.end method

.method public isRecursive()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->l:Z

    return p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->i(Ljava/lang/String;)Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Deploy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->j:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/handler/HandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->i:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->j:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->start()V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->l(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Undeploy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V

    iget-object v1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->j:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/handler/HandlerCollection;->removeHandler(Lorg/mortbay/jetty/Handler;)V

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setConfigurationDir(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->setConfigurationDir(Lorg/mortbay/resource/Resource;)V

    return-void
.end method

.method public setConfigurationDir(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->setConfigurationDir(Lorg/mortbay/resource/Resource;)V

    return-void
.end method

.method public setConfigurationDir(Lorg/mortbay/resource/Resource;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->h:Lorg/mortbay/resource/Resource;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change hot deploy dir after deployer start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConfigurationManager(Lorg/mortbay/jetty/deployer/ConfigurationManager;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->k:Lorg/mortbay/jetty/deployer/ConfigurationManager;

    return-void
.end method

.method public setContexts(Lorg/mortbay/jetty/handler/ContextHandlerCollection;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->j:Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set Contexts after deployer start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->setConfigurationDir(Ljava/lang/String;)V

    return-void
.end method

.method public setRecursive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->l:Z

    return-void
.end method

.method public setScanInterval(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change scan interval after deployer start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
