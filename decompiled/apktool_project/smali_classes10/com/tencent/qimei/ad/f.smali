.class public Lcom/tencent/qimei/ad/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Lcom/tencent/qimei/ad/g;

.field public final d:Lcom/tencent/qimei/m/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ad/f;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/tencent/qimei/ad/f;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/qimei/ad/f;->c:Lcom/tencent/qimei/ad/g;

    new-instance p1, Lcom/tencent/qimei/m/f;

    const/16 v1, 0x7530

    invoke-direct {p1, v0, v1}, Lcom/tencent/qimei/m/f;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/tencent/qimei/ad/f;->d:Lcom/tencent/qimei/m/f;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/qimei/ad/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/qimei/ad/f;->c:Lcom/tencent/qimei/ad/g;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/ad/f;->b:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/ad/f;->d:Lcom/tencent/qimei/m/f;

    invoke-virtual {p0}, Lcom/tencent/qimei/m/f;->b()V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/qimei/ad/g;

    iget-object v1, p0, Lcom/tencent/qimei/ad/f;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/tencent/qimei/ad/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/ad/f;->c:Lcom/tencent/qimei/ad/g;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/qimei/ad/f;->d:Lcom/tencent/qimei/m/f;

    invoke-virtual {p0}, Lcom/tencent/qimei/m/f;->a()V

    return-void
.end method
