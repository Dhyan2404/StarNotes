.class public Lorg/mortbay/jetty/deployer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic e:Lorg/mortbay/jetty/deployer/ContextDeployer;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/deployer/ContextDeployer;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/deployer/a;->e:Lorg/mortbay/jetty/deployer/ContextDeployer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    :try_start_0
    const-string p1, ".xml"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    return p0
.end method
