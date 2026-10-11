.class public Lorg/apache/logging/log4j/util/Activator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osgi/framework/BundleActivator;
.implements Lorg/osgi/framework/SynchronousBundleListener;


# static fields
.field public static final b:Ljava/lang/SecurityManager;

.field public static final c:Lorg/apache/logging/log4j/Logger;


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/Activator;->b:Ljava/lang/SecurityManager;

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/Activator;->c:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/Permission;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "permission"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/util/Activator;->b:Ljava/lang/SecurityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Lorg/osgi/framework/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundle"
        }
    .end annotation

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/osgi/framework/AdminPermission;

    const-string v1, "resource"

    invoke-direct {v0, p1, v1}, Lorg/osgi/framework/AdminPermission;-><init>(Lorg/osgi/framework/Bundle;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Activator;->a(Ljava/security/Permission;)V

    new-instance v0, Lorg/osgi/framework/AdaptPermission;

    const-class v1, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adapt"

    invoke-direct {v0, v1, p1, v2}, Lorg/osgi/framework/AdaptPermission;-><init>(Ljava/lang/String;Lorg/osgi/framework/Bundle;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Activator;->a(Ljava/security/Permission;)V

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getBundleContext()Lorg/osgi/framework/BundleContext;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/logging/log4j/util/Activator;->c:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Bundle {} has no context (state={}), skipping loading provider"

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/util/Activator;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-class v1, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-interface {p1, v1}, Lorg/osgi/framework/Bundle;->adapt(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/util/Activator;->c(Lorg/osgi/framework/BundleContext;Lorg/osgi/framework/wiring/BundleWiring;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/apache/logging/log4j/util/Activator;->c:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Problem checking bundle {} for Log4j 2 provider."

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, Lorg/apache/logging/log4j/util/Activator;->c:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Cannot access bundle [{}] contents. Ignoring."

    invoke-interface {p1}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bundleChanged(Lorg/osgi/framework/BundleEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/Activator;->b(Lorg/osgi/framework/Bundle;)V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Activator;->e()V

    :goto_0
    return-void
.end method

.method public final c(Lorg/osgi/framework/BundleContext;Lorg/osgi/framework/wiring/BundleWiring;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bundleContext",
            "bundleWiring"
        }
    .end annotation

    :try_start_0
    const-class p0, Lorg/apache/logging/log4j/spi/Provider;

    const-string v0, "(APIVersion>=2.6.0)"

    invoke-interface {p1, p0, v0}, Lorg/osgi/framework/BundleContext;->getServiceReferences(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osgi/framework/ServiceReference;

    invoke-interface {p1, v1}, Lorg/osgi/framework/BundleContext;->getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/Provider;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/Provider;->getPriority()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/Provider;->getPriority()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/apache/logging/log4j/util/ProviderUtil;->addProvider(Lorg/apache/logging/log4j/spi/Provider;)V
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/logging/log4j/util/Activator;->c:Lorg/apache/logging/log4j/Logger;

    const-string v0, "Invalid service filter: (APIVersion>=2.6.0)"

    invoke-interface {p1, v0, p0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    const-string p0, "log4j-provider.properties"

    const/4 p1, 0x0

    const-string v0, "META-INF"

    invoke-interface {p2, v0, p0, p1}, Lorg/osgi/framework/wiring/BundleWiring;->findEntries(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    invoke-interface {p2}, Lorg/osgi/framework/wiring/BundleWiring;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/util/ProviderUtil;->loadProvider(Ljava/net/URL;Ljava/lang/ClassLoader;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final d(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "state"
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/16 p0, 0x8

    if-eq p1, p0, :cond_2

    const/16 p0, 0x10

    if-eq p1, p0, :cond_1

    const/16 p0, 0x20

    if-eq p1, p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ACTIVE"

    return-object p0

    :cond_1
    const-string p0, "STOPPING"

    return-object p0

    :cond_2
    const-string p0, "STARTING"

    return-object p0

    :cond_3
    const-string p0, "RESOLVED"

    return-object p0

    :cond_4
    const-string p0, "INSTALLED"

    return-object p0

    :cond_5
    const-string p0, "UNINSTALLED"

    return-object p0
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/logging/log4j/util/Activator;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->PROVIDERS:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/Activator;->a:Z

    :cond_0
    return-void
.end method

.method public start(Lorg/osgi/framework/BundleContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundleContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/util/ProviderUtil;->STARTUP_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/Activator;->a:Z

    invoke-interface {p1}, Lorg/osgi/framework/BundleContext;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    const-class v1, Lorg/osgi/framework/wiring/BundleWiring;

    invoke-interface {v0, v1}, Lorg/osgi/framework/Bundle;->adapt(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osgi/framework/wiring/BundleWiring;

    const-class v1, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osgi/framework/wiring/BundleWiring;->getRequiredWires(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osgi/framework/wiring/BundleWire;

    invoke-interface {v1}, Lorg/osgi/framework/wiring/BundleWire;->getProviderWiring()Lorg/osgi/framework/wiring/BundleWiring;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/logging/log4j/util/Activator;->c(Lorg/osgi/framework/BundleContext;Lorg/osgi/framework/wiring/BundleWiring;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lorg/osgi/framework/BundleContext;->addBundleListener(Lorg/osgi/framework/BundleListener;)V

    invoke-interface {p1}, Lorg/osgi/framework/BundleContext;->getBundles()[Lorg/osgi/framework/Bundle;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/util/Activator;->b(Lorg/osgi/framework/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Activator;->e()V

    return-void
.end method

.method public stop(Lorg/osgi/framework/BundleContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bundleContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p0}, Lorg/osgi/framework/BundleContext;->removeBundleListener(Lorg/osgi/framework/BundleListener;)V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Activator;->e()V

    return-void
.end method
