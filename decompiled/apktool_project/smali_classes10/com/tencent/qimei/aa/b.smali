.class public Lcom/tencent/qimei/aa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/j/c;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/aa/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/aa/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/aa/b;->a:Lcom/tencent/qimei/aa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/aa/b;->a:Lcom/tencent/qimei/aa/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/aa/b;->a:Lcom/tencent/qimei/aa/c;

    invoke-virtual {v1}, Lcom/tencent/qimei/aa/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qimei/aa/b;->a:Lcom/tencent/qimei/aa/c;

    invoke-static {v1}, Lcom/tencent/qimei/aa/c;->a(Lcom/tencent/qimei/aa/c;)Lcom/tencent/qimei/aa/f;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/qimei/aa/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/tencent/qimei/aa/b;->a:Lcom/tencent/qimei/aa/c;

    invoke-static {p0}, Lcom/tencent/qimei/aa/c;->b(Lcom/tencent/qimei/aa/c;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public j()V
    .locals 0

    return-void
.end method
