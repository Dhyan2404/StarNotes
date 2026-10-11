.class Lcom/tencent/beacon/module/StatModule$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/module/StatModule;->a(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/tencent/beacon/module/StatModule;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/module/StatModule;JLjava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/module/StatModule$2;->d:Lcom/tencent/beacon/module/StatModule;

    iput-wide p2, p0, Lcom/tencent/beacon/module/StatModule$2;->a:J

    iput-object p4, p0, Lcom/tencent/beacon/module/StatModule$2;->b:Ljava/lang/String;

    iput-wide p5, p0, Lcom/tencent/beacon/module/StatModule$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconEvent;->builder()Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/beacon/module/StatModule$2;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A110"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/module/StatModule$2;->b:Ljava/lang/String;

    const-string v2, "A111"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/beacon/module/StatModule$2;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "A112"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    const-string v0, "rqd_page_fgt"

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withCode(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    sget-object v0, Lcom/tencent/beacon/event/open/EventType;->REALTIME:Lcom/tencent/beacon/event/open/EventType;

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withType(Lcom/tencent/beacon/event/open/EventType;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/beacon/event/open/BeaconEvent;

    move-result-object p0

    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/event/open/BeaconReport;->report(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    return-void
.end method
