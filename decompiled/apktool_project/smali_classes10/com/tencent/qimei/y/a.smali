.class public Lcom/tencent/qimei/y/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/y/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/tencent/qimei/y/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/y/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/qimei/y/b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/qimei/y/b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/tencent/qimei/y/b;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qimei/y/a;->b:Lcom/tencent/qimei/y/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/qimei/x/b;->a()Lcom/tencent/qimei/x/b;

    move-result-object v0

    const-string v1, "BizInfo"

    invoke-static {v1}, Lcom/tencent/qimei/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qimei/y/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/x/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/z/a;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/qimei/y/b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/qimei/y/b;

    iput-object v0, p0, Lcom/tencent/qimei/y/a;->b:Lcom/tencent/qimei/y/b;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/qimei/y/b;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/qimei/y/b;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/qimei/y/b;->f()V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/qimei/y/b;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
