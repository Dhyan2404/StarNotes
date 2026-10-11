.class public Lcom/tencent/qmsp/oaid2/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/oaid2/l;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qmsp/oaid2/l;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/oaid2/l;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/l;->a(Lcom/tencent/qmsp/oaid2/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/j;->a(Landroid/content/Context;)Lcom/tencent/qmsp/oaid2/j$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-virtual {v0}, Lcom/tencent/qmsp/oaid2/j$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qmsp/oaid2/l;->a(Lcom/tencent/qmsp/oaid2/l;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/qmsp/oaid2/j$a;->b()Z

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/l;->b(Lcom/tencent/qmsp/oaid2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qmsp/oaid2/l;->a(Lcom/tencent/qmsp/oaid2/l;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/l;->d(Lcom/tencent/qmsp/oaid2/l;)Lcom/tencent/qmsp/oaid2/IVendorCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/l;->d(Lcom/tencent/qmsp/oaid2/l;)Lcom/tencent/qmsp/oaid2/IVendorCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v1}, Lcom/tencent/qmsp/oaid2/l;->c(Lcom/tencent/qmsp/oaid2/l;)Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v2}, Lcom/tencent/qmsp/oaid2/l;->a(Lcom/tencent/qmsp/oaid2/l;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qmsp/oaid2/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qmsp/oaid2/l;->b(Lcom/tencent/qmsp/oaid2/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v3}, Lcom/tencent/qmsp/oaid2/l;->b(Lcom/tencent/qmsp/oaid2/l;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/qmsp/oaid2/IVendorCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/l;->b(Lcom/tencent/qmsp/oaid2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qmsp/oaid2/l;->a(Lcom/tencent/qmsp/oaid2/l;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/l;->d(Lcom/tencent/qmsp/oaid2/l;)Lcom/tencent/qmsp/oaid2/IVendorCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/l;->d(Lcom/tencent/qmsp/oaid2/l;)Lcom/tencent/qmsp/oaid2/IVendorCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v1}, Lcom/tencent/qmsp/oaid2/l;->c(Lcom/tencent/qmsp/oaid2/l;)Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {v2}, Lcom/tencent/qmsp/oaid2/l;->a(Lcom/tencent/qmsp/oaid2/l;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qmsp/oaid2/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qmsp/oaid2/l;->b(Lcom/tencent/qmsp/oaid2/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/l$a;->a:Lcom/tencent/qmsp/oaid2/l;

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/l;->b(Lcom/tencent/qmsp/oaid2/l;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/tencent/qmsp/oaid2/IVendorCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
