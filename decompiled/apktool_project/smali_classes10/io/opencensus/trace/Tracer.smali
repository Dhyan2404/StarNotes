.class public abstract Lio/opencensus/trace/Tracer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/Tracer$b;
    }
.end annotation


# static fields
.field public static final a:Lio/opencensus/trace/Tracer$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/opencensus/trace/Tracer$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/Tracer$b;-><init>(Lio/opencensus/trace/Tracer$a;)V

    sput-object v0, Lio/opencensus/trace/Tracer;->a:Lio/opencensus/trace/Tracer$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/opencensus/trace/Tracer;
    .locals 1

    sget-object v0, Lio/opencensus/trace/Tracer;->a:Lio/opencensus/trace/Tracer$b;

    return-object v0
.end method


# virtual methods
.method public final getCurrentSpan()Lio/opencensus/trace/Span;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/oie;->b()Lio/opencensus/trace/Span;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lio/opencensus/trace/BlankSpan;->INSTANCE:Lio/opencensus/trace/BlankSpan;

    :goto_0
    return-object p0
.end method

.method public final spanBuilder(Ljava/lang/String;)Lio/opencensus/trace/SpanBuilder;
    .locals 1

    invoke-static {}, Lcom/sunia/HTREnginev2/oie;->b()Lio/opencensus/trace/Span;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/opencensus/trace/Tracer;->spanBuilderWithExplicitParent(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/SpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public abstract spanBuilderWithExplicitParent(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/SpanBuilder;
    .param p2    # Lio/opencensus/trace/Span;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract spanBuilderWithRemoteParent(Ljava/lang/String;Lio/opencensus/trace/SpanContext;)Lio/opencensus/trace/SpanBuilder;
    .param p2    # Lio/opencensus/trace/SpanContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public final withSpan(Lio/opencensus/trace/Span;)Lio/opencensus/common/Scope;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/MustBeClosed;
    .end annotation

    const-string p0, "span"

    .line 1
    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/Span;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/oie;->d(Lio/opencensus/trace/Span;Z)Lio/opencensus/common/Scope;

    move-result-object p0

    return-object p0
.end method

.method public final withSpan(Lio/opencensus/trace/Span;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0, p2}, Lcom/sunia/HTREnginev2/oie;->e(Lio/opencensus/trace/Span;ZLjava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public final withSpan(Lio/opencensus/trace/Span;Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/trace/Span;",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)",
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 3
    invoke-static {p1, p0, p2}, Lcom/sunia/HTREnginev2/oie;->f(Lio/opencensus/trace/Span;ZLjava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p0

    return-object p0
.end method
