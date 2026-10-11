.class public final Lbolts/Task$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->c(Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lbolts/CancellationToken;

.field public final synthetic f:Lbolts/TaskCompletionSource;

.field public final synthetic g:Lbolts/Continuation;

.field public final synthetic h:Lbolts/Task;


# direct methods
.method public constructor <init>(Lbolts/CancellationToken;Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V
    .locals 0

    iput-object p1, p0, Lbolts/Task$f;->e:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$f;->f:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$f;->g:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$f;->h:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbolts/Task$f;->e:Lbolts/CancellationToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbolts/Task$f;->f:Lbolts/TaskCompletionSource;

    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->setCancelled()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbolts/Task$f;->g:Lbolts/Continuation;

    iget-object v1, p0, Lbolts/Task$f;->h:Lbolts/Task;

    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbolts/Task$f;->f:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lbolts/Task$f$a;

    invoke-direct {v1, p0}, Lbolts/Task$f$a;-><init>(Lbolts/Task$f;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lbolts/Task$f;->f:Lbolts/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    iget-object p0, p0, Lbolts/Task$f;->f:Lbolts/TaskCompletionSource;

    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->setCancelled()V

    :goto_0
    return-void
.end method
