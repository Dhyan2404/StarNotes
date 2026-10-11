.class public final Lcom/sunia/HTREnginev2/oie$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/oie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final e:Lio/opencensus/trace/Span;

.field public final f:Ljava/lang/Runnable;

.field public final g:Z


# direct methods
.method public constructor <init>(Lio/opencensus/trace/Span;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/oie$c;->e:Lio/opencensus/trace/Span;

    .line 4
    iput-object p2, p0, Lcom/sunia/HTREnginev2/oie$c;->f:Ljava/lang/Runnable;

    .line 5
    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/oie$c;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/Span;Ljava/lang/Runnable;ZLcom/sunia/HTREnginev2/oie$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/oie$c;-><init>(Lio/opencensus/trace/Span;Ljava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lio/opencensus/trace/unsafe/ContextHandleUtils;->currentContext()Lio/opencensus/trace/ContextHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/oie$c;->e:Lio/opencensus/trace/Span;

    invoke-static {v0, v1}, Lio/opencensus/trace/unsafe/ContextHandleUtils;->withValue(Lio/opencensus/trace/ContextHandle;Lio/opencensus/trace/Span;)Lio/opencensus/trace/ContextHandle;

    move-result-object v0

    invoke-interface {v0}, Lio/opencensus/trace/ContextHandle;->attach()Lio/opencensus/trace/ContextHandle;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/oie$c;->f:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lio/opencensus/trace/unsafe/ContextHandleUtils;->currentContext()Lio/opencensus/trace/ContextHandle;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/opencensus/trace/ContextHandle;->detach(Lio/opencensus/trace/ContextHandle;)V

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/oie$c;->g:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oie$c;->e:Lio/opencensus/trace/Span;

    invoke-virtual {p0}, Lio/opencensus/trace/Span;->end()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/sunia/HTREnginev2/oie$c;->e:Lio/opencensus/trace/Span;

    invoke-static {v2, v1}, Lcom/sunia/HTREnginev2/oie;->a(Lio/opencensus/trace/Span;Ljava/lang/Throwable;)V

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "unexpected"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {}, Lio/opencensus/trace/unsafe/ContextHandleUtils;->currentContext()Lio/opencensus/trace/ContextHandle;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/opencensus/trace/ContextHandle;->detach(Lio/opencensus/trace/ContextHandle;)V

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/oie$c;->g:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oie$c;->e:Lio/opencensus/trace/Span;

    invoke-virtual {p0}, Lio/opencensus/trace/Span;->end()V

    :cond_3
    throw v1
.end method
