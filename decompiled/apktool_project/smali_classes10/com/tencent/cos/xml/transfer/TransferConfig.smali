.class public Lcom/tencent/cos/xml/transfer/TransferConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;
    }
.end annotation


# instance fields
.field protected divisionForCopy:J

.field protected divisionForUpload:J

.field private forceSimpleUpload:Z

.field protected sliceSizeForCopy:J

.field protected sliceSizeForUpload:J

.field private verifyCRC64:Z


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->verifyCRC64:Z

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;->access$000(Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->divisionForCopy:J

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;->access$100(Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->sliceSizeForCopy:J

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;->access$200(Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->divisionForUpload:J

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;->access$300(Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->sliceSizeForUpload:J

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;->access$400(Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->forceSimpleUpload:Z

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;->access$500(Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->verifyCRC64:Z

    return-void
.end method


# virtual methods
.method public getDivisionForCopy()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->divisionForCopy:J

    return-wide v0
.end method

.method public isForceSimpleUpload()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->forceSimpleUpload:Z

    return p0
.end method

.method public isVerifyCRC64()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/transfer/TransferConfig;->verifyCRC64:Z

    return p0
.end method
