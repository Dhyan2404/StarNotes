.class public Lio/opencensus/contrib/http/HttpClientHandler;
.super Lcom/sunia/HTREnginev2/u3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sunia/HTREnginev2/u3<",
        "TQ;TP;>;"
    }
.end annotation


# instance fields
.field public final b:Lio/opencensus/trace/propagation/TextFormat$Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/opencensus/trace/propagation/TextFormat$Setter<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final c:Lio/opencensus/trace/propagation/TextFormat;

.field public final d:Lio/opencensus/trace/Tracer;

.field public final e:Lio/opencensus/stats/StatsRecorder;

.field public final f:Lio/opencensus/tags/Tagger;


# direct methods
.method public constructor <init>(Lio/opencensus/trace/Tracer;Lio/opencensus/contrib/http/HttpExtractor;Lio/opencensus/trace/propagation/TextFormat;Lio/opencensus/trace/propagation/TextFormat$Setter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/Tracer;",
            "Lio/opencensus/contrib/http/HttpExtractor<",
            "TQ;TP;>;",
            "Lio/opencensus/trace/propagation/TextFormat;",
            "Lio/opencensus/trace/propagation/TextFormat$Setter<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/u3;-><init>(Lio/opencensus/contrib/http/HttpExtractor;)V

    const-string p2, "setter"

    invoke-static {p4, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "textFormat"

    invoke-static {p3, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "tracer"

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lio/opencensus/contrib/http/HttpClientHandler;->b:Lio/opencensus/trace/propagation/TextFormat$Setter;

    iput-object p3, p0, Lio/opencensus/contrib/http/HttpClientHandler;->c:Lio/opencensus/trace/propagation/TextFormat;

    iput-object p1, p0, Lio/opencensus/contrib/http/HttpClientHandler;->d:Lio/opencensus/trace/Tracer;

    invoke-static {}, Lio/opencensus/stats/Stats;->getStatsRecorder()Lio/opencensus/stats/StatsRecorder;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/contrib/http/HttpClientHandler;->e:Lio/opencensus/stats/StatsRecorder;

    invoke-static {}, Lio/opencensus/tags/Tags;->getTagger()Lio/opencensus/tags/Tagger;

    move-result-object p1

    iput-object p1, p0, Lio/opencensus/contrib/http/HttpClientHandler;->f:Lio/opencensus/tags/Tagger;

    return-void
.end method


# virtual methods
.method public final g(Lio/opencensus/contrib/http/HttpRequestContext;Ljava/lang/Object;I)V
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/contrib/http/HttpRequestContext;",
            "TQ;I)V"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p1, Lio/opencensus/contrib/http/HttpRequestContext;->a:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-string v2, ""

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/u3;->a:Lio/opencensus/contrib/http/HttpExtractor;

    invoke-virtual {v3, p2}, Lio/opencensus/contrib/http/HttpExtractor;->getMethod(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez p2, :cond_1

    const-string p2, "null_request"

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sunia/HTREnginev2/u3;->a:Lio/opencensus/contrib/http/HttpExtractor;

    invoke-virtual {v4, p2}, Lio/opencensus/contrib/http/HttpExtractor;->getHost(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iget-object v4, p0, Lio/opencensus/contrib/http/HttpClientHandler;->f:Lio/opencensus/tags/Tagger;

    iget-object v5, p1, Lio/opencensus/contrib/http/HttpRequestContext;->g:Lio/opencensus/tags/TagContext;

    invoke-virtual {v4, v5}, Lio/opencensus/tags/Tagger;->toBuilder(Lio/opencensus/tags/TagContext;)Lio/opencensus/tags/TagContextBuilder;

    move-result-object v4

    sget-object v5, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_HOST:Lio/opencensus/tags/TagKey;

    if-nez p2, :cond_2

    const-string p2, "null_host"

    :cond_2
    invoke-static {p2}, Lio/opencensus/tags/TagValue;->create(Ljava/lang/String;)Lio/opencensus/tags/TagValue;

    move-result-object p2

    sget-object v6, Lio/opencensus/contrib/http/HttpRequestContext;->i:Lio/opencensus/tags/TagMetadata;

    invoke-virtual {v4, v5, p2, v6}, Lio/opencensus/tags/TagContextBuilder;->put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)Lio/opencensus/tags/TagContextBuilder;

    move-result-object p2

    sget-object v4, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_METHOD:Lio/opencensus/tags/TagKey;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-static {v2}, Lio/opencensus/tags/TagValue;->create(Ljava/lang/String;)Lio/opencensus/tags/TagValue;

    move-result-object v2

    invoke-virtual {p2, v4, v2, v6}, Lio/opencensus/tags/TagContextBuilder;->put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)Lio/opencensus/tags/TagContextBuilder;

    move-result-object p2

    sget-object v2, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_STATUS:Lio/opencensus/tags/TagKey;

    if-nez p3, :cond_4

    const-string p3, "error"

    goto :goto_3

    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-static {p3}, Lio/opencensus/tags/TagValue;->create(Ljava/lang/String;)Lio/opencensus/tags/TagValue;

    move-result-object p3

    invoke-virtual {p2, v2, p3, v6}, Lio/opencensus/tags/TagContextBuilder;->put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)Lio/opencensus/tags/TagContextBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lio/opencensus/tags/TagContextBuilder;->build()Lio/opencensus/tags/TagContext;

    move-result-object p2

    iget-object p0, p0, Lio/opencensus/contrib/http/HttpClientHandler;->e:Lio/opencensus/stats/StatsRecorder;

    invoke-virtual {p0}, Lio/opencensus/stats/StatsRecorder;->newMeasureMap()Lio/opencensus/stats/MeasureMap;

    move-result-object p0

    sget-object p3, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_ROUNDTRIP_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    invoke-virtual {p0, p3, v0, v1}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureDouble;D)Lio/opencensus/stats/MeasureMap;

    move-result-object p0

    sget-object p3, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_SENT_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    iget-object v0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, p3, v0, v1}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;

    move-result-object p0

    sget-object p3, Lio/opencensus/contrib/http/util/HttpMeasureConstants;->HTTP_CLIENT_RECEIVED_BYTES:Lio/opencensus/stats/Measure$MeasureLong;

    iget-object p1, p1, Lio/opencensus/contrib/http/HttpRequestContext;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, p3, v0, v1}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Lio/opencensus/stats/MeasureMap;->record(Lio/opencensus/tags/TagContext;)V

    return-void
.end method

.method public bridge synthetic getSpanFromContext(Lio/opencensus/contrib/http/HttpRequestContext;)Lio/opencensus/trace/Span;
    .locals 0

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/u3;->getSpanFromContext(Lio/opencensus/contrib/http/HttpRequestContext;)Lio/opencensus/trace/Span;

    move-result-object p0

    return-object p0
.end method

.method public handleEnd(Lio/opencensus/contrib/http/HttpRequestContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/contrib/http/HttpRequestContext;",
            "TQ;TP;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u3;->a:Lio/opencensus/contrib/http/HttpExtractor;

    invoke-virtual {v0, p3}, Lio/opencensus/contrib/http/HttpExtractor;->getStatusCode(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lio/opencensus/contrib/http/HttpClientHandler;->g(Lio/opencensus/contrib/http/HttpRequestContext;Ljava/lang/Object;I)V

    iget-object p1, p1, Lio/opencensus/contrib/http/HttpRequestContext;->b:Lio/opencensus/trace/Span;

    invoke-virtual {p0, p1, p3, p4}, Lcom/sunia/HTREnginev2/u3;->f(Lio/opencensus/trace/Span;ILjava/lang/Throwable;)V

    return-void
.end method

.method public handleStart(Lio/opencensus/trace/Span;Ljava/lang/Object;Ljava/lang/Object;)Lio/opencensus/contrib/http/HttpRequestContext;
    .locals 2
    .param p1    # Lio/opencensus/trace/Span;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/Span;",
            "TC;TQ;)",
            "Lio/opencensus/contrib/http/HttpRequestContext;"
        }
    .end annotation

    const-string v0, "carrier"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/opencensus/contrib/http/HttpClientHandler;->d:Lio/opencensus/trace/Tracer;

    invoke-virtual {p1}, Lio/opencensus/trace/Tracer;->getCurrentSpan()Lio/opencensus/trace/Span;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/u3;->a:Lio/opencensus/contrib/http/HttpExtractor;

    invoke-virtual {p0, p3, v0}, Lcom/sunia/HTREnginev2/u3;->c(Ljava/lang/Object;Lio/opencensus/contrib/http/HttpExtractor;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/opencensus/contrib/http/HttpClientHandler;->d:Lio/opencensus/trace/Tracer;

    invoke-virtual {v1, v0, p1}, Lio/opencensus/trace/Tracer;->spanBuilderWithExplicitParent(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/SpanBuilder;

    move-result-object p1

    sget-object v0, Lio/opencensus/trace/Span$Kind;->CLIENT:Lio/opencensus/trace/Span$Kind;

    invoke-virtual {p1, v0}, Lio/opencensus/trace/SpanBuilder;->setSpanKind(Lio/opencensus/trace/Span$Kind;)Lio/opencensus/trace/SpanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/trace/SpanBuilder;->startSpan()Lio/opencensus/trace/Span;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/trace/Span;->getOptions()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lio/opencensus/trace/Span$Options;->RECORD_EVENTS:Lio/opencensus/trace/Span$Options;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u3;->a:Lio/opencensus/contrib/http/HttpExtractor;

    invoke-virtual {p0, p1, p3, v0}, Lcom/sunia/HTREnginev2/u3;->a(Lio/opencensus/trace/Span;Ljava/lang/Object;Lio/opencensus/contrib/http/HttpExtractor;)V

    :cond_1
    invoke-virtual {p1}, Lio/opencensus/trace/Span;->getContext()Lio/opencensus/trace/SpanContext;

    move-result-object p3

    sget-object v0, Lio/opencensus/trace/SpanContext;->INVALID:Lio/opencensus/trace/SpanContext;

    invoke-virtual {p3, v0}, Lio/opencensus/trace/SpanContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/opencensus/contrib/http/HttpClientHandler;->c:Lio/opencensus/trace/propagation/TextFormat;

    iget-object v1, p0, Lio/opencensus/contrib/http/HttpClientHandler;->b:Lio/opencensus/trace/propagation/TextFormat$Setter;

    invoke-virtual {v0, p3, p2, v1}, Lio/opencensus/trace/propagation/TextFormat;->inject(Lio/opencensus/trace/SpanContext;Ljava/lang/Object;Lio/opencensus/trace/propagation/TextFormat$Setter;)V

    :cond_2
    iget-object p2, p0, Lio/opencensus/contrib/http/HttpClientHandler;->f:Lio/opencensus/tags/Tagger;

    invoke-virtual {p2}, Lio/opencensus/tags/Tagger;->getCurrentTagContext()Lio/opencensus/tags/TagContext;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/u3;->b(Lio/opencensus/trace/Span;Lio/opencensus/tags/TagContext;)Lio/opencensus/contrib/http/HttpRequestContext;

    move-result-object p0

    return-object p0
.end method
