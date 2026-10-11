.class public Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private requestReason:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private userIp:Ljava/lang/String;

.field private userProject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;
    .locals 1

    new-instance v0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;

    invoke-direct {v0, p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;-><init>(Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->requestReason:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public getUserIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userIp:Ljava/lang/String;

    return-object p0
.end method

.method public getUserProject()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userProject:Ljava/lang/String;

    return-object p0
.end method

.method public self()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
    .locals 0

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->self()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRequestReason(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->requestReason:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->self()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userAgent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->self()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userIp:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->self()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setUserProject(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->userProject:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;->self()Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer$Builder;

    move-result-object p0

    return-object p0
.end method
