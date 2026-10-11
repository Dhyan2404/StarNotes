.class public abstract Lio/opencensus/trace/SpanBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/SpanBuilder$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setParentLinks(Ljava/util/List;)Lio/opencensus/trace/SpanBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/opencensus/trace/Span;",
            ">;)",
            "Lio/opencensus/trace/SpanBuilder;"
        }
    .end annotation
.end method

.method public abstract setRecordEvents(Z)Lio/opencensus/trace/SpanBuilder;
.end method

.method public abstract setSampler(Lio/opencensus/trace/Sampler;)Lio/opencensus/trace/SpanBuilder;
.end method

.method public setSpanKind(Lio/opencensus/trace/Span$Kind;)Lio/opencensus/trace/SpanBuilder;
    .locals 0
    .param p1    # Lio/opencensus/trace/Span$Kind;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-object p0
.end method

.method public final startScopedSpan()Lio/opencensus/common/Scope;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/MustBeClosed;
    .end annotation

    invoke-virtual {p0}, Lio/opencensus/trace/SpanBuilder;->startSpan()Lio/opencensus/trace/Span;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/oie;->d(Lio/opencensus/trace/Span;Z)Lio/opencensus/common/Scope;

    move-result-object p0

    return-object p0
.end method

.method public abstract startSpan()Lio/opencensus/trace/Span;
.end method

.method public final startSpanAndCall(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/opencensus/trace/SpanBuilder;->startSpan()Lio/opencensus/trace/Span;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/sunia/HTREnginev2/oie;->f(Lio/opencensus/trace/Span;ZLjava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final startSpanAndRun(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/trace/SpanBuilder;->startSpan()Lio/opencensus/trace/Span;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/sunia/HTREnginev2/oie;->e(Lio/opencensus/trace/Span;ZLjava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
