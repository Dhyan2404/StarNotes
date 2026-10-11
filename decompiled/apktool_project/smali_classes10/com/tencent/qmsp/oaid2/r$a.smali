.class public Lcom/tencent/qmsp/oaid2/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/oaid2/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tencent/qmsp/oaid2/s;

.field public final synthetic b:Lcom/tencent/qmsp/oaid2/r;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/oaid2/r;Lcom/tencent/qmsp/oaid2/r;Lcom/tencent/qmsp/oaid2/s;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/r$a;->b:Lcom/tencent/qmsp/oaid2/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/tencent/qmsp/oaid2/r$a;->a:Lcom/tencent/qmsp/oaid2/s;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/r$a;->b:Lcom/tencent/qmsp/oaid2/r;

    invoke-static {p2}, Lcom/tencent/qmsp/oaid2/q$a;->a(Landroid/os/IBinder;)Lcom/tencent/qmsp/oaid2/q;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/qmsp/oaid2/r;->a(Lcom/tencent/qmsp/oaid2/r;Lcom/tencent/qmsp/oaid2/q;)Lcom/tencent/qmsp/oaid2/q;

    new-instance p1, Lcom/tencent/qmsp/oaid2/t;

    iget-object p2, p0, Lcom/tencent/qmsp/oaid2/r$a;->b:Lcom/tencent/qmsp/oaid2/r;

    invoke-static {p2}, Lcom/tencent/qmsp/oaid2/r;->a(Lcom/tencent/qmsp/oaid2/r;)Lcom/tencent/qmsp/oaid2/q;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/r$a;->a:Lcom/tencent/qmsp/oaid2/s;

    invoke-direct {p1, p2, v0}, Lcom/tencent/qmsp/oaid2/t;-><init>(Lcom/tencent/qmsp/oaid2/q;Lcom/tencent/qmsp/oaid2/s;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/r$a;->b:Lcom/tencent/qmsp/oaid2/r;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/qmsp/oaid2/r;->a(Lcom/tencent/qmsp/oaid2/r;Lcom/tencent/qmsp/oaid2/q;)Lcom/tencent/qmsp/oaid2/q;

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/r$a;->b:Lcom/tencent/qmsp/oaid2/r;

    invoke-static {p0, v0}, Lcom/tencent/qmsp/oaid2/r;->a(Lcom/tencent/qmsp/oaid2/r;Lcom/tencent/qmsp/oaid2/q;)Lcom/tencent/qmsp/oaid2/q;

    return-void
.end method
