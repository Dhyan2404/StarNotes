.class public Lcom/tencent/beacon/upload/TunnelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private channelID:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/tencent/beacon/upload/TunnelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/beacon/upload/TunnelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tencent/beacon/upload/TunnelInfo;->appKey:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/tencent/beacon/upload/TunnelInfo;->version:Ljava/lang/String;

    .line 6
    invoke-static {p3}, Lcom/tencent/beacon/event/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/upload/TunnelInfo;->channelID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/upload/TunnelInfo;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public getChannelID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/upload/TunnelInfo;->channelID:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/upload/TunnelInfo;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/upload/TunnelInfo;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setChannelID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/upload/TunnelInfo;->channelID:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/upload/TunnelInfo;->version:Ljava/lang/String;

    return-void
.end method
