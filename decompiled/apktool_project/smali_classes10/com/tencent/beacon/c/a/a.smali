.class Lcom/tencent/beacon/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/c/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/c/a/c;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/c/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/c/a/a;->a:Lcom/tencent/beacon/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/tencent/beacon/a/c/e;->l()Lcom/tencent/beacon/a/c/e;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/beacon/c/a/a;->a:Lcom/tencent/beacon/c/a/c;

    invoke-static {v2}, Lcom/tencent/beacon/c/a/c;->a(Lcom/tencent/beacon/c/a/c;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/e;->q()Ljava/lang/String;

    move-result-object v0

    const-string v3, "A19"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/beacon/c/a/a;->a:Lcom/tencent/beacon/c/a/c;

    invoke-static {v0}, Lcom/tencent/beacon/c/a/c;->a(Lcom/tencent/beacon/c/a/c;)Ljava/util/Map;

    move-result-object v0

    sget-boolean v2, Lcom/tencent/beacon/a/c/b;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "Y"

    goto :goto_0

    :cond_0
    const-string v2, "N"

    :goto_0
    const-string v3, "A85"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/beacon/c/a/a;->a:Lcom/tencent/beacon/c/a/c;

    invoke-static {v0}, Lcom/tencent/beacon/c/a/c;->a(Lcom/tencent/beacon/c/a/c;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "A20"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/beacon/c/a/a;->a:Lcom/tencent/beacon/c/a/c;

    invoke-static {v0}, Lcom/tencent/beacon/c/a/c;->a(Lcom/tencent/beacon/c/a/c;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/f;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A69"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/beacon/c/a/a;->a:Lcom/tencent/beacon/c/a/c;

    invoke-static {v0}, Lcom/tencent/beacon/c/a/c;->b(Lcom/tencent/beacon/c/a/c;)Lcom/tencent/beacon/module/StatModule;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/beacon/c/a/a;->a:Lcom/tencent/beacon/c/a/c;

    invoke-static {p0}, Lcom/tencent/beacon/c/a/c;->a(Lcom/tencent/beacon/c/a/c;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/module/StatModule;->a(Ljava/util/Map;)Z

    return-void
.end method
