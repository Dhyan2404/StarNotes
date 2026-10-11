.class public abstract Lcom/sunia/HTREnginev2/u3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lio/opencensus/contrib/http/HttpExtractor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/opencensus/contrib/http/HttpExtractor<",
            "TQ;TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/opencensus/contrib/http/HttpExtractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/contrib/http/HttpExtractor<",
            "TQ;TP;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "extractor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u3;->a:Lio/opencensus/contrib/http/HttpExtractor;

    return-void
.end method

.method public static d(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lio/opencensus/trace/AttributeValue;->stringAttributeValue(Ljava/lang/String;)Lio/opencensus/trace/AttributeValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/Span;->putAttribute(Ljava/lang/String;Lio/opencensus/trace/AttributeValue;)V

    :cond_0
    return-void
.end method

.method public static e(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;JJ)V
    .locals 0

    invoke-static {p3, p1, p2}, Lio/opencensus/trace/MessageEvent;->builder(Lio/opencensus/trace/MessageEvent$Type;J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lio/opencensus/trace/MessageEvent$Builder;->setUncompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Lio/opencensus/trace/MessageEvent$Builder;->setCompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/trace/MessageEvent$Builder;->build()Lio/opencensus/trace/MessageEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->addMessageEvent(Lio/opencensus/trace/MessageEvent;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/opencensus/trace/Span;Ljava/lang/Object;Lio/opencensus/contrib/http/HttpExtractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/Span;",
            "TQ;",
            "Lio/opencensus/contrib/http/HttpExtractor<",
            "TQ;TP;>;)V"
        }
    .end annotation

    invoke-virtual {p3, p2}, Lio/opencensus/contrib/http/HttpExtractor;->getUserAgent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.user_agent"

    invoke-static {p1, v0, p0}, Lcom/sunia/HTREnginev2/u3;->d(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "http.host"

    invoke-virtual {p3, p2}, Lio/opencensus/contrib/http/HttpExtractor;->getHost(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/sunia/HTREnginev2/u3;->d(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "http.method"

    invoke-virtual {p3, p2}, Lio/opencensus/contrib/http/HttpExtractor;->getMethod(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/sunia/HTREnginev2/u3;->d(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "http.path"

    invoke-virtual {p3, p2}, Lio/opencensus/contrib/http/HttpExtractor;->getPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/sunia/HTREnginev2/u3;->d(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "http.route"

    invoke-virtual {p3, p2}, Lio/opencensus/contrib/http/HttpExtractor;->getRoute(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/sunia/HTREnginev2/u3;->d(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "http.url"

    invoke-virtual {p3, p2}, Lio/opencensus/contrib/http/HttpExtractor;->getUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sunia/HTREnginev2/u3;->d(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lio/opencensus/trace/Span;Lio/opencensus/tags/TagContext;)Lio/opencensus/contrib/http/HttpRequestContext;
    .locals 0

    new-instance p0, Lio/opencensus/contrib/http/HttpRequestContext;

    invoke-direct {p0, p1, p2}, Lio/opencensus/contrib/http/HttpRequestContext;-><init>(Lio/opencensus/trace/Span;Lio/opencensus/tags/TagContext;)V

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Lio/opencensus/contrib/http/HttpExtractor;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;",
            "Lio/opencensus/contrib/http/HttpExtractor<",
            "TQ;TP;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lio/opencensus/contrib/http/HttpExtractor;->getPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public f(Lio/opencensus/trace/Span;ILjava/lang/Throwable;)V
    .locals 2
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lio/opencensus/trace/Span;->getOptions()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lio/opencensus/trace/Span$Options;->RECORD_EVENTS:Lio/opencensus/trace/Span$Options;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-long v0, p2

    invoke-static {v0, v1}, Lio/opencensus/trace/AttributeValue;->longAttributeValue(J)Lio/opencensus/trace/AttributeValue;

    move-result-object p0

    const-string v0, "http.status_code"

    invoke-virtual {p1, v0, p0}, Lio/opencensus/trace/Span;->putAttribute(Ljava/lang/String;Lio/opencensus/trace/AttributeValue;)V

    invoke-static {p2, p3}, Lio/opencensus/contrib/http/util/HttpTraceUtil;->parseResponseStatus(ILjava/lang/Throwable;)Lio/opencensus/trace/Status;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/opencensus/trace/Span;->setStatus(Lio/opencensus/trace/Status;)V

    :cond_0
    invoke-virtual {p1}, Lio/opencensus/trace/Span;->end()V

    return-void
.end method

.method public getSpanFromContext(Lio/opencensus/contrib/http/HttpRequestContext;)Lio/opencensus/trace/Span;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->b:Lio/opencensus/trace/Span;

    return-object p0
.end method

.method public final handleMessageReceived(Lio/opencensus/contrib/http/HttpRequestContext;J)V
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object p0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->b:Lio/opencensus/trace/Span;

    invoke-virtual {p0}, Lio/opencensus/trace/Span;->getOptions()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lio/opencensus/trace/Span$Options;->RECORD_EVENTS:Lio/opencensus/trace/Span$Options;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->b:Lio/opencensus/trace/Span;

    iget-object p0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v1

    sget-object v3, Lio/opencensus/trace/MessageEvent$Type;->RECEIVED:Lio/opencensus/trace/MessageEvent$Type;

    const-wide/16 v6, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sunia/HTREnginev2/u3;->e(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;JJ)V

    :cond_0
    return-void
.end method

.method public final handleMessageSent(Lio/opencensus/contrib/http/HttpRequestContext;J)V
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object p0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->b:Lio/opencensus/trace/Span;

    invoke-virtual {p0}, Lio/opencensus/trace/Span;->getOptions()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lio/opencensus/trace/Span$Options;->RECORD_EVENTS:Lio/opencensus/trace/Span$Options;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->b:Lio/opencensus/trace/Span;

    iget-object p0, p1, Lio/opencensus/contrib/http/HttpRequestContext;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v1

    sget-object v3, Lio/opencensus/trace/MessageEvent$Type;->SENT:Lio/opencensus/trace/MessageEvent$Type;

    const-wide/16 v6, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sunia/HTREnginev2/u3;->e(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;JJ)V

    :cond_0
    return-void
.end method
