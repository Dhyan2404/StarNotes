.class public final Lcom/google/android/exoplayer2/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/HandlerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/a$b;
    }
.end annotation


# static fields
.field public static final b:I = 0x32

.field public static final c:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "messagePool"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/util/a;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/util/a$b;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->c(Lcom/google/android/exoplayer2/util/a$b;)V

    return-void
.end method

.method public static b()Lcom/google/android/exoplayer2/util/a$b;
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/util/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/util/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/a$b;-><init>(Lcom/google/android/exoplayer2/util/a$a;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/a$b;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c(Lcom/google/android/exoplayer2/util/a$b;)V
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/util/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public hasMessages(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/util/a;->b()Lcom/google/android/exoplayer2/util/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/google/android/exoplayer2/util/a$b;->c(Landroid/os/Message;Lcom/google/android/exoplayer2/util/a;)Lcom/google/android/exoplayer2/util/a$b;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 2

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/util/a;->b()Lcom/google/android/exoplayer2/util/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/google/android/exoplayer2/util/a$b;->c(Landroid/os/Message;Lcom/google/android/exoplayer2/util/a;)Lcom/google/android/exoplayer2/util/a$b;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 2
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-static {}, Lcom/google/android/exoplayer2/util/a;->b()Lcom/google/android/exoplayer2/util/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/google/android/exoplayer2/util/a$b;->c(Landroid/os/Message;Lcom/google/android/exoplayer2/util/a;)Lcom/google/android/exoplayer2/util/a$b;

    move-result-object p0

    return-object p0
.end method

.method public obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/google/android/exoplayer2/util/a;->b()Lcom/google/android/exoplayer2/util/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/google/android/exoplayer2/util/a$b;->c(Landroid/os/Message;Lcom/google/android/exoplayer2/util/a;)Lcom/google/android/exoplayer2/util/a$b;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMessages(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public sendEmptyMessage(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public sendEmptyMessageAtTime(IJ)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0
.end method

.method public sendEmptyMessageDelayed(II)Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0
.end method

.method public sendMessageAtFrontOfQueue(Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/util/a$b;

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/util/a$b;->b(Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method
