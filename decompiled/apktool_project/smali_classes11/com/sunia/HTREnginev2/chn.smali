.class public final synthetic Lcom/sunia/HTREnginev2/chn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/chn;->e:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/chn;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/chn;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/chn;->e:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/chn;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/chn;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, p0, p1}, Lcom/sunia/HTREnginev2/dhn;->a(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
