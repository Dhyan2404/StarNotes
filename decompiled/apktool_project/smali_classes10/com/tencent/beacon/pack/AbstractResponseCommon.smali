.class public abstract Lcom/tencent/beacon/pack/AbstractResponseCommon;
.super Lcom/tencent/beacon/pack/AbstractJceStruct;
.source "SourceFile"


# instance fields
.field public serverTime:J

.field public srcGatewayIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractJceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/pack/AbstractResponseCommon;->srcGatewayIp:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/beacon/pack/AbstractResponseCommon;->serverTime:J

    return-void
.end method
