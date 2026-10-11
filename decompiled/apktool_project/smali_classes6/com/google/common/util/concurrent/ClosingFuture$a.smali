.class public Lcom/google/common/util/concurrent/ClosingFuture$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture;->finishToValueAndCloser(Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;

.field public final synthetic f:Lcom/google/common/util/concurrent/ClosingFuture;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$a;->f:Lcom/google/common/util/concurrent/ClosingFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$a;->e:Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$a;->e:Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$a;->f:Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/ClosingFuture;->e(Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;Lcom/google/common/util/concurrent/ClosingFuture;)V

    return-void
.end method
