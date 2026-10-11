.class public final Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;,
        Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;
    }
.end annotation


# static fields
.field private static final CALLBACK_PATH:Ljava/lang/String; = "/Callback"

.field private static final LOCALHOST:Ljava/lang/String; = "localhost"


# instance fields
.field private final callbackPath:Ljava/lang/String;

.field code:Ljava/lang/String;

.field error:Ljava/lang/String;

.field private failureLandingPageUrl:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private port:I

.field private server:Lorg/mortbay/jetty/Server;

.field private successLandingPageUrl:Ljava/lang/String;

.field final waitUnlessSignaled:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v1, "localhost"

    const/4 v2, -0x1

    const-string v3, "/Callback"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v3, "/Callback"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    .line 5
    iput-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->host:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    .line 7
    iput-object p3, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->callbackPath:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->successLandingPageUrl:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->failureLandingPageUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->successLandingPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->failureLandingPageUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCallbackPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->callbackPath:Ljava/lang/String;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    return p0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/mortbay/jetty/Server;

    iget v1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {v0, v1}, Lorg/mortbay/jetty/Server;-><init>(I)V

    iput-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Connector;->setHost(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    new-instance v2, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;

    invoke-direct {v2, p0}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;-><init>(Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;)V

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/Server;->addHandler(Lorg/mortbay/jetty/Handler;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v1}, Lorg/mortbay/component/AbstractLifeCycle;->start()V

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getLocalPort()I

    move-result v0

    iput v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->port:I

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->callbackPath:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/api/client/util/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/api/client/util/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public waitForCode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    iget-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->code:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->error:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "User authorization failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
