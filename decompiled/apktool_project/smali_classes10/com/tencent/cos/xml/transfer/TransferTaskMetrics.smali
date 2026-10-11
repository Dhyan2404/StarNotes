.class public Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private completeTime:J

.field connectAddress:Ljava/net/InetAddress;

.field domain:Ljava/lang/String;

.field private firstProgressCallbackTime:J

.field private firstProgressTookTime:J

.field private progressTime:J

.field size:J

.field private startTime:J

.field private tookTime:J

.field private waitTookTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->startTime:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->progressTime:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->firstProgressCallbackTime:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->completeTime:J

    return-void
.end method

.method private tookTime(J)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->startTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public getConnectAddress()Ljava/net/InetAddress;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstProgressTookTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->firstProgressTookTime:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->size:J

    return-wide v0
.end method

.method public getTookTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->tookTime:J

    return-wide v0
.end method

.method public getWaitTookTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->waitTookTime:J

    return-wide v0
.end method

.method public onComplete()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->completeTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->tookTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->tookTime:J

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->progressTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->tookTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->waitTookTime:J

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->firstProgressCallbackTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->tookTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->firstProgressTookTime:J

    return-void
.end method

.method public onFirstProgressCallback()V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->firstProgressCallbackTime:J

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->progressTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->firstProgressCallbackTime:J

    :cond_0
    return-void
.end method

.method public onInProgress()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->progressTime:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->firstProgressCallbackTime:J

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->startTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransferTaskMetrics{domain=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", connectAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->tookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", waitTookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->waitTookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", firstProgressTookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->firstProgressTookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
