.class public Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/Scanner$DiscreteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/deployer/ContextDeployer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScannerListener"
.end annotation


# instance fields
.field public final synthetic a:Lorg/mortbay/jetty/deployer/ContextDeployer;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/deployer/ContextDeployer;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;->a:Lorg/mortbay/jetty/deployer/ContextDeployer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileAdded(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;->a:Lorg/mortbay/jetty/deployer/ContextDeployer;

    invoke-static {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->f(Lorg/mortbay/jetty/deployer/ContextDeployer;Ljava/lang/String;)V

    return-void
.end method

.method public fileChanged(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;->a:Lorg/mortbay/jetty/deployer/ContextDeployer;

    invoke-static {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->g(Lorg/mortbay/jetty/deployer/ContextDeployer;Ljava/lang/String;)V

    return-void
.end method

.method public fileRemoved(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/ContextDeployer$ScannerListener;->a:Lorg/mortbay/jetty/deployer/ContextDeployer;

    invoke-static {p0, p1}, Lorg/mortbay/jetty/deployer/ContextDeployer;->h(Lorg/mortbay/jetty/deployer/ContextDeployer;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "ContextDeployer$Scanner"

    return-object p0
.end method
