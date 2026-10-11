.class public final Lcom/tencent/qimei/sdk/Qimei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 3
    invoke-direct {p0, v0, v0, v0}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0, v0, p1}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/tencent/qimei/sdk/Qimei;->b:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    iput-object p2, p0, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qimei/sdk/Qimei;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/qimei/sdk/Qimei;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/sdk/Qimei;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;

    return-void
.end method

.method public getQimei16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qimei/sdk/Qimei;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/ac/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/sdk/Qimei;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getQimei36()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qimei/sdk/Qimei;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/ac/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qimei/sdk/Qimei;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Q16:"

    invoke-static {v0}, Lcom/tencent/qimei/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/sdk/Qimei;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v1, "\nQ36:"

    invoke-static {v1}, Lcom/tencent/qimei/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
