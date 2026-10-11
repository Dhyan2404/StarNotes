.class public Lbolts/Task$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lbolts/Task$f;


# direct methods
.method public constructor <init>(Lbolts/Task$f;)V
    .locals 0

    iput-object p1, p0, Lbolts/Task$f$a;->a:Lbolts/Task$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    iget-object v0, p0, Lbolts/Task$f$a;->a:Lbolts/Task$f;

    iget-object v0, v0, Lbolts/Task$f;->e:Lbolts/CancellationToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbolts/Task$f$a;->a:Lbolts/Task$f;

    iget-object p0, p0, Lbolts/Task$f;->f:Lbolts/TaskCompletionSource;

    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->setCancelled()V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lbolts/Task$f$a;->a:Lbolts/Task$f;

    iget-object p0, p0, Lbolts/Task$f;->f:Lbolts/TaskCompletionSource;

    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lbolts/Task$f$a;->a:Lbolts/Task$f;

    iget-object p0, p0, Lbolts/Task$f;->f:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lbolts/Task$f$a;->a:Lbolts/Task$f;

    iget-object p0, p0, Lbolts/Task$f;->f:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbolts/Task$f$a;->a(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
