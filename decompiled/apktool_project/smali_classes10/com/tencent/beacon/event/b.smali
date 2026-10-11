.class Lcom/tencent/beacon/event/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/event/e;->b(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)V
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

    iput-object p1, p0, Lcom/tencent/beacon/event/b;->c:Lcom/tencent/beacon/event/e;

    iput-object p2, p0, Lcom/tencent/beacon/event/b;->a:Lcom/tencent/beacon/event/EventBean;

    iput-object p3, p0, Lcom/tencent/beacon/event/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/event/b;->a:Lcom/tencent/beacon/event/EventBean;

    invoke-static {v0}, Lcom/tencent/beacon/event/c/d;->a(Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/pack/RequestPackageV2;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/event/open/BeaconReport;->getImmediateReport()Lcom/tencent/beacon/event/immediate/IBeaconImmediateReport;

    move-result-object v1

    new-instance v2, Lcom/tencent/beacon/event/immediate/Beacon2MsfTransferArgs;

    invoke-virtual {v0}, Lcom/tencent/beacon/pack/AbstractJceStruct;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/beacon/event/immediate/Beacon2MsfTransferArgs;-><init>([B)V

    new-instance v0, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;

    iget-object v3, p0, Lcom/tencent/beacon/event/b;->c:Lcom/tencent/beacon/event/e;

    iget-object v4, p0, Lcom/tencent/beacon/event/b;->a:Lcom/tencent/beacon/event/EventBean;

    iget-object v5, p0, Lcom/tencent/beacon/event/b;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;-><init>(Lcom/tencent/beacon/event/e;Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/tencent/beacon/event/immediate/IBeaconImmediateReport;->reportImmediate(Lcom/tencent/beacon/event/immediate/BeaconTransferArgs;Lcom/tencent/beacon/event/immediate/BeaconImmediateReportCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[immediate] report error!"

    invoke-static {v2, v1}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/beacon/event/b;->c:Lcom/tencent/beacon/event/e;

    iget-object v2, p0, Lcom/tencent/beacon/event/b;->a:Lcom/tencent/beacon/event/EventBean;

    iget-object p0, p0, Lcom/tencent/beacon/event/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/tencent/beacon/event/e;->a(Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object p0

    const-string v1, "515"

    const-string v2, "immediate report error!"

    invoke-virtual {p0, v1, v2, v0}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
