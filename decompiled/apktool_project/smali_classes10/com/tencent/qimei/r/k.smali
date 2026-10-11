.class public Lcom/tencent/qimei/r/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/sdk/IAsyncQimeiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/r/l;->n()V
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

    iput-object p1, p0, Lcom/tencent/qimei/r/k;->a:Lcom/tencent/qimei/r/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 3

    iget-object p0, p0, Lcom/tencent/qimei/r/k;->a:Lcom/tencent/qimei/r/l;

    invoke-static {p0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qimei/ad/e;->a(Ljava/lang/String;)Lcom/tencent/qimei/ad/e;

    move-result-object p0

    iget-object p1, p0, Lcom/tencent/qimei/ad/e;->i:Landroid/content/Context;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/tencent/qimei/ad/e;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/qimei/ac/b;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/qimei/e/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/tencent/qimei/ad/e;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/f/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/f/c;->b()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/tencent/qimei/ad/e;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/ac/b;->m()I

    move-result p1

    iput p1, p0, Lcom/tencent/qimei/ad/e;->e:I

    iget-object p1, p0, Lcom/tencent/qimei/ad/e;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/ac/b;->r()I

    move-result p1

    iput p1, p0, Lcom/tencent/qimei/ad/e;->d:I

    iget-object p1, p0, Lcom/tencent/qimei/ad/e;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/ac/b;->n()I

    move-result p1

    iput p1, p0, Lcom/tencent/qimei/ad/e;->f:I

    iget p1, p0, Lcom/tencent/qimei/ad/e;->d:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget p1, p0, Lcom/tencent/qimei/ad/e;->e:I

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-eqz p1, :cond_4

    sget-object p0, Lcom/tencent/qimei/ad/e;->a:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "hid close"

    invoke-static {p0, v0, p1}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/tencent/qimei/ad/e;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object p1

    iget v0, p0, Lcom/tencent/qimei/ad/e;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    new-instance v2, Lcom/tencent/qimei/ad/b;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/ad/b;-><init>(Lcom/tencent/qimei/ad/e;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/qimei/d/a;->a(JLjava/lang/Runnable;)V

    :goto_1
    return-void
.end method
