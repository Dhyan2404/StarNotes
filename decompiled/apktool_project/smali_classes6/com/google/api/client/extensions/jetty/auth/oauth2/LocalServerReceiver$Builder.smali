.class public final Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private callbackPath:Ljava/lang/String;

.field private failureLandingPageUrl:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private port:I

.field private successLandingPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localhost"

    iput-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->host:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->port:I

    const-string v0, "/Callback"

    iput-object v0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->callbackPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;
    .locals 7

    new-instance v6, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    iget-object v1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->host:Ljava/lang/String;

    iget v2, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->port:I

    iget-object v3, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->callbackPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->successLandingPageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->failureLandingPageUrl:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public getCallbackPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->callbackPath:Ljava/lang/String;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->port:I

    return p0
.end method

.method public setCallbackPath(Ljava/lang/String;)Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->callbackPath:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public setLandingPages(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->successLandingPageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->failureLandingPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;
    .locals 0

    iput p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$Builder;->port:I

    return-object p0
.end method
