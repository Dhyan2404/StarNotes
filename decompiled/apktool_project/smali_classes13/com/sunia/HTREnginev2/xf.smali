.class public Lcom/sunia/HTREnginev2/xf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/greenrobot/eventbus/Poster;


# instance fields
.field public final e:Lcom/sunia/HTREnginev2/a3l;

.field public final f:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xf;->f:Lorg/greenrobot/eventbus/EventBus;

    new-instance p1, Lcom/sunia/HTREnginev2/a3l;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/a3l;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xf;->e:Lcom/sunia/HTREnginev2/a3l;

    return-void
.end method


# virtual methods
.method public enqueue(Lcom/sunia/HTREnginev2/k5n;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/z2l;->a(Lcom/sunia/HTREnginev2/k5n;Ljava/lang/Object;)Lcom/sunia/HTREnginev2/z2l;

    move-result-object p1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/xf;->e:Lcom/sunia/HTREnginev2/a3l;

    invoke-virtual {p2, p1}, Lcom/sunia/HTREnginev2/a3l;->a(Lcom/sunia/HTREnginev2/z2l;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xf;->f:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBus;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xf;->e:Lcom/sunia/HTREnginev2/a3l;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/a3l;->b()Lcom/sunia/HTREnginev2/z2l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xf;->f:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->e(Lcom/sunia/HTREnginev2/z2l;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No pending post available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
