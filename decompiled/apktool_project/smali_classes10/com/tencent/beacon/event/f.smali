.class Lcom/tencent/beacon/event/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/event/g;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/tencent/beacon/event/g;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/event/g;J)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/event/f;->b:Lcom/tencent/beacon/event/g;

    iput-wide p2, p0, Lcom/tencent/beacon/event/f;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/beacon/event/f;->b:Lcom/tencent/beacon/event/g;

    invoke-static {v1}, Lcom/tencent/beacon/event/g;->a(Lcom/tencent/beacon/event/g;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/event/f;->b:Lcom/tencent/beacon/event/g;

    invoke-static {v1}, Lcom/tencent/beacon/event/g;->c(Lcom/tencent/beacon/event/g;)Lcom/tencent/beacon/event/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/beacon/event/f;->b:Lcom/tencent/beacon/event/g;

    invoke-static {v2}, Lcom/tencent/beacon/event/g;->b(Lcom/tencent/beacon/event/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/beacon/event/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/beacon/event/f;->b:Lcom/tencent/beacon/event/g;

    invoke-static {v1}, Lcom/tencent/beacon/event/g;->d(Lcom/tencent/beacon/event/g;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x4

    const-string v3, "delete: %s"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/beacon/event/f;->b:Lcom/tencent/beacon/event/g;

    invoke-static {v0}, Lcom/tencent/beacon/event/g;->e(Lcom/tencent/beacon/event/g;)Lcom/tencent/beacon/event/h;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/event/f;->b:Lcom/tencent/beacon/event/g;

    invoke-static {v1}, Lcom/tencent/beacon/event/g;->a(Lcom/tencent/beacon/event/g;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/h;->a(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/beacon/event/f;->b:Lcom/tencent/beacon/event/g;

    invoke-static {v0}, Lcom/tencent/beacon/event/g;->e(Lcom/tencent/beacon/event/g;)Lcom/tencent/beacon/event/h;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/beacon/event/f;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/event/h;->a(J)V

    return-void
.end method
