.class public Lcom/bumptech/glide/load/engine/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final e:Lcom/bumptech/glide/request/ResourceCallback;

.field public final synthetic f:Lcom/bumptech/glide/load/engine/d;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/d;Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/d$b;->f:Lcom/bumptech/glide/load/engine/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/d$b;->e:Lcom/bumptech/glide/request/ResourceCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d$b;->e:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-interface {v0}, Lcom/bumptech/glide/request/ResourceCallback;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/d$b;->f:Lcom/bumptech/glide/load/engine/d;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/d$b;->f:Lcom/bumptech/glide/load/engine/d;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/d;->e:Lcom/bumptech/glide/load/engine/d$e;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/d$b;->e:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/d$e;->b(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/d$b;->f:Lcom/bumptech/glide/load/engine/d;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/d;->z:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/e;->a()V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/d$b;->f:Lcom/bumptech/glide/load/engine/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/d$b;->e:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/d;->d(Lcom/bumptech/glide/request/ResourceCallback;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/d$b;->f:Lcom/bumptech/glide/load/engine/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/d$b;->e:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/d;->p(Lcom/bumptech/glide/request/ResourceCallback;)V

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/d$b;->f:Lcom/bumptech/glide/load/engine/d;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/d;->f()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
