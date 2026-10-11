.class Lcom/tencent/beacon/event/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/event/e;->c(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/open/EventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/event/EventBean;

.field final synthetic b:Lcom/tencent/beacon/event/e;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/event/e;Lcom/tencent/beacon/event/EventBean;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/a;->b:Lcom/tencent/beacon/event/e;

    iput-object p2, p0, Lcom/tencent/beacon/event/a;->a:Lcom/tencent/beacon/event/EventBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->b:Lcom/tencent/beacon/event/e;

    invoke-static {v0}, Lcom/tencent/beacon/event/e;->a(Lcom/tencent/beacon/event/e;)Lcom/tencent/beacon/event/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/event/a;->a:Lcom/tencent/beacon/event/EventBean;

    invoke-virtual {v1}, Lcom/tencent/beacon/event/EventBean;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/a/a;->a(I)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "[EventModule]"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/beacon/event/a;->a:Lcom/tencent/beacon/event/EventBean;

    invoke-virtual {v4}, Lcom/tencent/beacon/event/EventBean;->getEventType()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/beacon/event/c/d;->a(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " max db count!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "602"

    invoke-virtual {v0, v4, v3}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/beacon/event/a;->a:Lcom/tencent/beacon/event/EventBean;

    invoke-virtual {p0}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "event: %s. insert to DB false. reason: DB count max!"

    invoke-static {v2, v1, v0, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/event/a;->b:Lcom/tencent/beacon/event/e;

    invoke-static {v0}, Lcom/tencent/beacon/event/e;->a(Lcom/tencent/beacon/event/e;)Lcom/tencent/beacon/event/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/beacon/event/a;->a:Lcom/tencent/beacon/event/EventBean;

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/event/a/a;->a(Lcom/tencent/beacon/event/EventBean;)Z

    move-result v0

    iget-object v3, p0, Lcom/tencent/beacon/event/a;->a:Lcom/tencent/beacon/event/EventBean;

    invoke-virtual {v3}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "event: %s. insert to DB %s"

    invoke-static {v2, v1, v4, v3}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "insert success, resumedPollingReport."

    invoke-static {v2, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/beacon/event/a;->b:Lcom/tencent/beacon/event/e;

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/event/e;->a(I)V

    :cond_1
    return-void
.end method
