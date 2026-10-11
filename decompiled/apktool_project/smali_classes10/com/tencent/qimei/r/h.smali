.class public Lcom/tencent/qimei/r/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/r/l;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/r/l;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/tencent/qimei/m/d;->a()Lcom/tencent/qimei/m/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v1}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/m/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qimei/j/b;->a()Lcom/tencent/qimei/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v1}, Lcom/tencent/qimei/r/l;->b(Lcom/tencent/qimei/r/l;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/j/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/qimei/j/b;->a()Lcom/tencent/qimei/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v1}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qimei/j/b;->a(Ljava/lang/String;Lcom/tencent/qimei/j/c;)V

    iget-object v0, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/ad/e;->a(Ljava/lang/String;)Lcom/tencent/qimei/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v1}, Lcom/tencent/qimei/r/l;->b(Lcom/tencent/qimei/r/l;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qimei/ad/e;->i:Landroid/content/Context;

    iput-object v0, v0, Lcom/tencent/qimei/ad/e;->j:Lcom/tencent/qimei/ad/a;

    iget-object v0, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    iget-object v0, v0, Lcom/tencent/qimei/aa/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aa/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/c;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/qimei/aa/c;->d:Lcom/tencent/qimei/aa/f;

    iput-object v1, v2, Lcom/tencent/qimei/aa/f;->d:Lcom/tencent/qimei/aa/g;

    invoke-virtual {v2}, Lcom/tencent/qimei/aa/f;->a()V

    iget-object v1, v0, Lcom/tencent/qimei/aa/c;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "start Strategy request task(appKey: %s)"

    const-string v3, "QM"

    invoke-static {v3, v2, v1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/qimei/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/c;->b()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/tencent/qimei/aa/c;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "no network,cancel strategy request(appKey: %s)"

    invoke-static {v3, v2, v1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/tencent/qimei/j/b;->a()Lcom/tencent/qimei/j/b;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/qimei/aa/c;->c:Ljava/lang/String;

    new-instance v3, Lcom/tencent/qimei/aa/b;

    invoke-direct {v3, v0}, Lcom/tencent/qimei/aa/b;-><init>(Lcom/tencent/qimei/aa/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/j/b;->a(Ljava/lang/String;Lcom/tencent/qimei/j/c;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDK_INIT \uff5c STRATEGY"

    const-string v2, " initialization finished "

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qimei/r/b;->h:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qimei/r/b;->a()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qimei/r/b;->h:Z

    :goto_1
    iget-object v0, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/t/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/r/n;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/n;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/qimei/r/n;->f:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/tencent/qimei/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/tencent/qimei/r/h;->a:Lcom/tencent/qimei/r/l;

    invoke-static {p0}, Lcom/tencent/qimei/r/l;->c(Lcom/tencent/qimei/r/l;)V

    return-void
.end method
