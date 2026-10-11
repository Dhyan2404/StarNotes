.class public Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/call/e<",
        "Lcom/tencent/beacon/event/immediate/BeaconTransferResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/beacon/event/e;

.field private b:Lcom/tencent/beacon/event/EventBean;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/event/e;Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->a:Lcom/tencent/beacon/event/e;

    iput-object p2, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->b:Lcom/tencent/beacon/event/EventBean;

    iput-object p3, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/base/util/b;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->d:J

    return-void
.end method

.method private a(Lcom/tencent/beacon/base/net/d;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/d;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[BeaconImmediateReportCallback]"

    invoke-static {v2, v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/beacon/base/net/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/beacon/base/net/d;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/beacon/base/net/d;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->a:Lcom/tencent/beacon/event/e;

    iget-object v0, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->b:Lcom/tencent/beacon/event/EventBean;

    iget-object p0, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/tencent/beacon/event/e;->a(Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/tencent/beacon/event/immediate/BeaconTransferResult;)V
    .locals 7

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/tencent/beacon/base/net/d;

    sget-object v0, Lcom/tencent/beacon/base/net/RequestType;->LONG_CONNECTION:Lcom/tencent/beacon/base/net/RequestType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "response fail! result is null"

    const-string v3, "462"

    invoke-direct {p1, v0, v3, v1, v2}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->a(Lcom/tencent/beacon/base/net/d;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->getBizCode()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->b:Lcom/tencent/beacon/event/EventBean;

    invoke-virtual {v2}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->c:Ljava/lang/String;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[BeaconImmediateReportCallback]"

    const-string v3, "result=%s, eventName=%s , logID=%s"

    invoke-static {v2, v3, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "response fail! result = %s"

    invoke-static {v1, v0}, Lcom/tencent/beacon/base/util/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/tencent/beacon/base/net/d;

    sget-object v2, Lcom/tencent/beacon/base/net/RequestType;->LONG_CONNECTION:Lcom/tencent/beacon/base/net/RequestType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->getCode()I

    move-result p1

    const-string v3, "463"

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->a(Lcom/tencent/beacon/base/net/d;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->getBizBuffer()[B

    move-result-object v0

    .line 10
    new-instance v1, Lcom/tencent/beacon/pack/ResponsePackageV2;

    invoke-direct {v1}, Lcom/tencent/beacon/pack/ResponsePackageV2;-><init>()V

    .line 11
    :try_start_0
    new-instance v2, Lcom/tencent/beacon/pack/a;

    invoke-direct {v2, v0}, Lcom/tencent/beacon/pack/a;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/pack/ResponsePackageV2;->readFrom(Lcom/tencent/beacon/pack/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-wide p0, p0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->d:J

    iget-wide v2, v1, Lcom/tencent/beacon/pack/AbstractResponseCommon;->serverTime:J

    iget-object v0, v1, Lcom/tencent/beacon/pack/AbstractResponseCommon;->srcGatewayIp:Ljava/lang/String;

    invoke-static {p0, p1, v2, v3, v0}, Lcom/tencent/beacon/base/net/b/d;->a(JJLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 13
    invoke-static {v6}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 14
    new-instance v0, Lcom/tencent/beacon/base/net/d;

    sget-object v1, Lcom/tencent/beacon/base/net/RequestType;->LONG_CONNECTION:Lcom/tencent/beacon/base/net/RequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;->getCode()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v3, "463"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->a(Lcom/tencent/beacon/base/net/d;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/beacon/event/immediate/BeaconTransferResult;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;->onResponse(Lcom/tencent/beacon/event/immediate/BeaconTransferResult;)V

    return-void
.end method
