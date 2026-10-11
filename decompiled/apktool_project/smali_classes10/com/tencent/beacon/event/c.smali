.class Lcom/tencent/beacon/event/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/event/e;->a(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/event/EventBean;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/beacon/event/e;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/event/e;Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/c;->c:Lcom/tencent/beacon/event/e;

    iput-object p2, p0, Lcom/tencent/beacon/event/c;->a:Lcom/tencent/beacon/event/EventBean;

    iput-object p3, p0, Lcom/tencent/beacon/event/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/open/BeaconReport;->getBeaconQuicReport()Lcom/tencent/beacon/event/quic/IBeaconQuicReport;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/event/quic/BeaconQuicReportCallback;

    iget-object v2, p0, Lcom/tencent/beacon/event/c;->c:Lcom/tencent/beacon/event/e;

    iget-object v3, p0, Lcom/tencent/beacon/event/c;->a:Lcom/tencent/beacon/event/EventBean;

    iget-object v4, p0, Lcom/tencent/beacon/event/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/beacon/event/quic/BeaconQuicReportCallback;-><init>(Lcom/tencent/beacon/event/e;Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/beacon/event/c;->a:Lcom/tencent/beacon/event/EventBean;

    invoke-static {v2}, Lcom/tencent/beacon/event/c/d;->a(Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/pack/RequestPackageV2;

    move-result-object v2

    invoke-static {}, Lcom/tencent/beacon/base/net/adapter/g;->a()Lcom/tencent/beacon/base/net/adapter/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/beacon/base/net/adapter/g;->a(Lcom/tencent/beacon/pack/RequestPackageV2;)[B

    move-result-object v2

    new-instance v3, Lcom/tencent/beacon/event/quic/QuicTransArgs;

    invoke-static {}, Lcom/tencent/beacon/base/net/b/b;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/beacon/event/c;->a:Lcom/tencent/beacon/event/EventBean;

    invoke-direct {v3, v4, v5, v2}, Lcom/tencent/beacon/event/quic/QuicTransArgs;-><init>(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;[B)V

    invoke-interface {v0, v3, v1}, Lcom/tencent/beacon/event/quic/IBeaconQuicReport;->reportByQuic(Lcom/tencent/beacon/event/quic/QuicTransArgs;Lcom/tencent/beacon/event/quic/BeaconQuicReportCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[quic] report error! msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/tencent/beacon/event/c;->c:Lcom/tencent/beacon/event/e;

    iget-object v3, p0, Lcom/tencent/beacon/event/c;->a:Lcom/tencent/beacon/event/EventBean;

    iget-object p0, p0, Lcom/tencent/beacon/event/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/tencent/beacon/event/e;->a(Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object p0

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/beacon/d/b;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "471"

    goto :goto_0

    :cond_0
    const-string v2, "474"

    :goto_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
