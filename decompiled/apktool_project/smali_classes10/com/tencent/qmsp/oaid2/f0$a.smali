.class public Lcom/tencent/qmsp/oaid2/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/oaid2/f0;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qmsp/oaid2/f0;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/oaid2/f0;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/f0$a;->a:Lcom/tencent/qmsp/oaid2/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/f0$a;->a:Lcom/tencent/qmsp/oaid2/f0;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/f0;->a(Lcom/tencent/qmsp/oaid2/f0;)Lcom/tencent/qmsp/oaid2/IVendorCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/f0$a;->a:Lcom/tencent/qmsp/oaid2/f0;

    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/f0;->a(Lcom/tencent/qmsp/oaid2/f0;)Lcom/tencent/qmsp/oaid2/IVendorCallback;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qmsp/oaid2/e0;->a()Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/qmsp/oaid2/f0$a;->a:Lcom/tencent/qmsp/oaid2/f0;

    invoke-static {v2}, Lcom/tencent/qmsp/oaid2/f0;->b(Lcom/tencent/qmsp/oaid2/f0;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qmsp/oaid2/e0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qmsp/oaid2/f0$a;->a:Lcom/tencent/qmsp/oaid2/f0;

    invoke-static {v3}, Lcom/tencent/qmsp/oaid2/f0;->b(Lcom/tencent/qmsp/oaid2/f0;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qmsp/oaid2/e0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/qmsp/oaid2/IVendorCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qmsp/oaid2/f0$a;->a:Lcom/tencent/qmsp/oaid2/f0;

    invoke-static {v1}, Lcom/tencent/qmsp/oaid2/f0;->a(Lcom/tencent/qmsp/oaid2/f0;)Lcom/tencent/qmsp/oaid2/IVendorCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/f0$a;->a:Lcom/tencent/qmsp/oaid2/f0;

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/f0;->a(Lcom/tencent/qmsp/oaid2/f0;)Lcom/tencent/qmsp/oaid2/IVendorCallback;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "null"

    invoke-interface {p0, v1, v2, v2}, Lcom/tencent/qmsp/oaid2/IVendorCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
