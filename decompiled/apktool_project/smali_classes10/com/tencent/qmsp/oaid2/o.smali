.class public Lcom/tencent/qmsp/oaid2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qmsp/oaid2/b;
.implements Lcom/tencent/qmsp/oaid2/p$b;


# instance fields
.field public a:Lcom/tencent/qmsp/oaid2/p;

.field public b:Lcom/tencent/qmsp/oaid2/IVendorCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/tencent/qmsp/oaid2/o;->e()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/o;->a:Lcom/tencent/qmsp/oaid2/p;

    invoke-virtual {p0}, Lcom/tencent/qmsp/oaid2/p;->a()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public a(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/IVendorCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/qmsp/oaid2/o;->b:Lcom/tencent/qmsp/oaid2/IVendorCallback;

    .line 2
    new-instance p2, Lcom/tencent/qmsp/oaid2/p;

    invoke-direct {p2, p1, p0}, Lcom/tencent/qmsp/oaid2/p;-><init>(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/p$b;)V

    iput-object p2, p0, Lcom/tencent/qmsp/oaid2/o;->a:Lcom/tencent/qmsp/oaid2/p;

    return-void
.end method

.method public a(Lcom/tencent/qmsp/oaid2/p;)V
    .locals 3

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/o;->b:Lcom/tencent/qmsp/oaid2/IVendorCallback;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/tencent/qmsp/oaid2/o;->e()Z

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qmsp/oaid2/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qmsp/oaid2/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/qmsp/oaid2/IVendorCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/o;->b:Lcom/tencent/qmsp/oaid2/IVendorCallback;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    const-string v0, "null"

    .line 8
    invoke-interface {p0, p1, v0, v0}, Lcom/tencent/qmsp/oaid2/IVendorCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qmsp/oaid2/o;->e()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/o;->a:Lcom/tencent/qmsp/oaid2/p;

    invoke-virtual {p0}, Lcom/tencent/qmsp/oaid2/p;->c()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/o;->a:Lcom/tencent/qmsp/oaid2/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qmsp/oaid2/p;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/o;->a:Lcom/tencent/qmsp/oaid2/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qmsp/oaid2/p;->d()V

    :cond_0
    return-void
.end method
