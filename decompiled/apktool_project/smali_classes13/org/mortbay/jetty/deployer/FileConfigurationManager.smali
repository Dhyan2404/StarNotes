.class public Lorg/mortbay/jetty/deployer/FileConfigurationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/deployer/ConfigurationManager;


# instance fields
.field public a:Lorg/mortbay/resource/Resource;

.field public b:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->b:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->b:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->b:Ljava/util/Properties;

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->a:Lorg/mortbay/resource/Resource;

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->a()V

    iget-object p0, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->b:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/deployer/FileConfigurationManager;->a:Lorg/mortbay/resource/Resource;

    return-void
.end method
