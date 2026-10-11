.class public Lcom/tencent/qimei/r/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/sdk/IAsyncQimeiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/r/l;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/r/l;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/r/l;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/r/j;->a:Lcom/tencent/qimei/r/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 10

    invoke-static {}, Lcom/tencent/qimei/j/b;->a()Lcom/tencent/qimei/j/b;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qimei/r/j;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qimei/j/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qimei/j/b;->a()Lcom/tencent/qimei/j/b;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qimei/r/j;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v0}, Lcom/tencent/qimei/r/l;->b(Lcom/tencent/qimei/r/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qimei/j/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/qimei/p/b;->a()Lcom/tencent/qimei/p/b;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qimei/r/j;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qimei/p/b;->a(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/tencent/qimei/r/j;->a:Lcom/tencent/qimei/r/l;

    invoke-static {p1}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/t/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/t/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/t/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p1, Lcom/tencent/qimei/t/a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Lcom/tencent/qimei/t/a;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p1, Lcom/tencent/qimei/t/a;->e:Z

    invoke-virtual {p1, v2}, Lcom/tencent/qimei/t/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/tencent/qimei/t/a;->d:Z

    invoke-virtual {p1, v2}, Lcom/tencent/qimei/t/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/tencent/qimei/t/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qimei/t/a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qimei/t/a;->g:Lcom/tencent/qimei/sdk/Qimei;

    if-nez v2, :cond_3

    new-instance v2, Lcom/tencent/qimei/sdk/Qimei;

    iget-object v3, p1, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;)V

    iput-object v2, p1, Lcom/tencent/qimei/t/a;->g:Lcom/tencent/qimei/sdk/Qimei;

    :cond_3
    new-instance v2, Lcom/tencent/qimei/y/a;

    iget-object v3, p1, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tencent/qimei/y/a;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/qimei/t/a;->g:Lcom/tencent/qimei/sdk/Qimei;

    invoke-virtual {v4}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p1, Lcom/tencent/qimei/t/a;->g:Lcom/tencent/qimei/sdk/Qimei;

    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/tencent/qimei/y/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tencent/qimei/y/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v7

    iget-object v8, v7, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v9, "p1"

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v8, "p2"

    invoke-interface {v4, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v7, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v4, "p4"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v7, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v4, "p5"

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, v7, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v4, "p3"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v7, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v2, "p6"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v7"

    const-string v1, "/report"

    invoke-virtual {v6, v7, p1, v3, v1}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qimei/e/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "CloneDetect"

    const-string v1, "%s, %s is clone\uff0ctype\uff1a%d"

    invoke-static {v0, v1, p1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p0, p0, Lcom/tencent/qimei/r/j;->a:Lcom/tencent/qimei/r/l;

    invoke-static {p0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qimei/v/e;->a(Ljava/lang/String;)Lcom/tencent/qimei/v/e;

    move-result-object p0

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object p1

    new-instance v0, Lcom/tencent/qimei/v/d;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/v/d;-><init>(Lcom/tencent/qimei/v/e;)V

    invoke-virtual {p1, v0}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/ac/b;->i()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/ac/b;->t()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v0

    int-to-long v1, p1

    new-instance p1, Lcom/tencent/qimei/v/e$a;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/tencent/qimei/v/e$a;-><init>(Lcom/tencent/qimei/v/e;Lcom/tencent/qimei/v/d;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/qimei/d/a;->a(JLjava/lang/Runnable;)V

    :goto_2
    return-void
.end method
