.class public Lcom/tencent/qimei/j/a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/j/b;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/j/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/j/a;->a:Lcom/tencent/qimei/j/b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/tencent/qimei/j/a;->a:Lcom/tencent/qimei/j/b;

    invoke-static {p1}, Lcom/tencent/qimei/j/b;->a(Lcom/tencent/qimei/j/b;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/qimei/j/a;->a:Lcom/tencent/qimei/j/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/qimei/j/b;->a(Lcom/tencent/qimei/j/b;Z)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "QM"

    const-string v1, "current network switched to the available state"

    invoke-static {v0, v1, p1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/qimei/j/a;->a:Lcom/tencent/qimei/j/b;

    invoke-static {p0}, Lcom/tencent/qimei/j/b;->b(Lcom/tencent/qimei/j/b;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/tencent/qimei/j/a;->a:Lcom/tencent/qimei/j/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/qimei/j/b;->a(Lcom/tencent/qimei/j/b;Z)Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "QM"

    const-string v1, "current network lost"

    invoke-static {v0, v1, p1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/qimei/j/a;->a:Lcom/tencent/qimei/j/b;

    invoke-static {p0}, Lcom/tencent/qimei/j/b;->c(Lcom/tencent/qimei/j/b;)V

    return-void
.end method
