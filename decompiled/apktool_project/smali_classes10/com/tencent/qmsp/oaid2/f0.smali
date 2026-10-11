.class public Lcom/tencent/qmsp/oaid2/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qmsp/oaid2/b;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tencent/qmsp/oaid2/IVendorCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/f0;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/f0;->b:Lcom/tencent/qmsp/oaid2/IVendorCallback;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qmsp/oaid2/f0;)Lcom/tencent/qmsp/oaid2/IVendorCallback;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/f0;->b:Lcom/tencent/qmsp/oaid2/IVendorCallback;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/qmsp/oaid2/f0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/f0;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/IVendorCallback;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/f0;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/tencent/qmsp/oaid2/f0;->b:Lcom/tencent/qmsp/oaid2/IVendorCallback;

    .line 5
    invoke-static {p1}, Lcom/tencent/qmsp/oaid2/e0;->c(Landroid/content/Context;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public e()Z
    .locals 0

    invoke-static {}, Lcom/tencent/qmsp/oaid2/e0;->a()Z

    move-result p0

    return p0
.end method

.method public j()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/qmsp/oaid2/f0$a;

    invoke-direct {v1, p0}, Lcom/tencent/qmsp/oaid2/f0$a;-><init>(Lcom/tencent/qmsp/oaid2/f0;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l()V
    .locals 0

    return-void
.end method
