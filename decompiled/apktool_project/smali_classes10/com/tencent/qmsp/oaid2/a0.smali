.class public Lcom/tencent/qmsp/oaid2/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qmsp/oaid2/b;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/a0;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/y;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/IVendorCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/a0;->a:Landroid/content/Context;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/a0;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    invoke-static {}, Lcom/tencent/qmsp/oaid2/y;->a()Z

    move-result p0

    return p0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public l()V
    .locals 0

    return-void
.end method
