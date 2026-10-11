.class public Lcom/tencent/qimei/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/e/d;

.field public final synthetic b:Lcom/tencent/qimei/o/d;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/o/d;Lcom/tencent/qimei/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/o/a;->b:Lcom/tencent/qimei/o/d;

    iput-object p2, p0, Lcom/tencent/qimei/o/a;->a:Lcom/tencent/qimei/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/o/a;->b:Lcom/tencent/qimei/o/d;

    invoke-static {v0}, Lcom/tencent/qimei/o/d;->a(Lcom/tencent/qimei/o/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v1, "is_first"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/l/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/o/a;->b:Lcom/tencent/qimei/o/d;

    invoke-static {v1}, Lcom/tencent/qimei/o/d;->a(Lcom/tencent/qimei/o/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/ac/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/o/a;->b:Lcom/tencent/qimei/o/d;

    iget-object p0, p0, Lcom/tencent/qimei/o/a;->a:Lcom/tencent/qimei/e/d;

    invoke-static {v0, p0}, Lcom/tencent/qimei/o/d;->a(Lcom/tencent/qimei/o/d;Lcom/tencent/qimei/e/d;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/qimei/o/a;->a:Lcom/tencent/qimei/e/d;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/tencent/qimei/e/d;->a(I)V

    return-void
.end method
