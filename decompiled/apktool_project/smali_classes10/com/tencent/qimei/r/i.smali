.class public Lcom/tencent/qimei/r/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/e/d;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/r/l;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/r/l;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/r/i;->a:Lcom/tencent/qimei/r/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qimei/r/i;->a:Lcom/tencent/qimei/r/l;

    invoke-static {v0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OD initialization finished (appKey: %s)\uff0cresult:%s"

    const-string v1, "SDK_INIT"

    invoke-static {v1, v0, p1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/qimei/r/i;->a:Lcom/tencent/qimei/r/l;

    invoke-static {p1}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/f/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/f/c;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/qimei/r/i;->a:Lcom/tencent/qimei/r/l;

    invoke-virtual {p1}, Lcom/tencent/qimei/r/l;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "getToken fail, sdk not init!"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/r/n;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/n;

    move-result-object p1

    const-string v0, "1"

    iput-object v0, p1, Lcom/tencent/qimei/r/n;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/tencent/qimei/r/l;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qimei/r/n;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/r/n;->b()Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/qimei/r/i;->a:Lcom/tencent/qimei/r/l;

    invoke-static {p0}, Lcom/tencent/qimei/r/l;->d(Lcom/tencent/qimei/r/l;)V

    return-void
.end method
