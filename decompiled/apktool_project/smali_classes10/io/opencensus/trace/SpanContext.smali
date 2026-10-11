.class public final Lio/opencensus/trace/SpanContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final INVALID:Lio/opencensus/trace/SpanContext;

.field public static final e:Lio/opencensus/trace/Tracestate;


# instance fields
.field public final a:Lio/opencensus/trace/TraceId;

.field public final b:Lio/opencensus/trace/SpanId;

.field public final c:Lio/opencensus/trace/TraceOptions;

.field public final d:Lio/opencensus/trace/Tracestate;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lio/opencensus/trace/Tracestate;->builder()Lio/opencensus/trace/Tracestate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/Tracestate$Builder;->build()Lio/opencensus/trace/Tracestate;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/SpanContext;->e:Lio/opencensus/trace/Tracestate;

    new-instance v1, Lio/opencensus/trace/SpanContext;

    sget-object v2, Lio/opencensus/trace/TraceId;->INVALID:Lio/opencensus/trace/TraceId;

    sget-object v3, Lio/opencensus/trace/SpanId;->INVALID:Lio/opencensus/trace/SpanId;

    sget-object v4, Lio/opencensus/trace/TraceOptions;->DEFAULT:Lio/opencensus/trace/TraceOptions;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/opencensus/trace/SpanContext;-><init>(Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Lio/opencensus/trace/TraceOptions;Lio/opencensus/trace/Tracestate;)V

    sput-object v1, Lio/opencensus/trace/SpanContext;->INVALID:Lio/opencensus/trace/SpanContext;

    return-void
.end method

.method public constructor <init>(Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Lio/opencensus/trace/TraceOptions;Lio/opencensus/trace/Tracestate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/opencensus/trace/SpanContext;->a:Lio/opencensus/trace/TraceId;

    iput-object p2, p0, Lio/opencensus/trace/SpanContext;->b:Lio/opencensus/trace/SpanId;

    iput-object p3, p0, Lio/opencensus/trace/SpanContext;->c:Lio/opencensus/trace/TraceOptions;

    iput-object p4, p0, Lio/opencensus/trace/SpanContext;->d:Lio/opencensus/trace/Tracestate;

    return-void
.end method

.method public static create(Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Lio/opencensus/trace/TraceOptions;)Lio/opencensus/trace/SpanContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/trace/SpanContext;->e:Lio/opencensus/trace/Tracestate;

    invoke-static {p0, p1, p2, v0}, Lio/opencensus/trace/SpanContext;->create(Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Lio/opencensus/trace/TraceOptions;Lio/opencensus/trace/Tracestate;)Lio/opencensus/trace/SpanContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Lio/opencensus/trace/TraceOptions;Lio/opencensus/trace/Tracestate;)Lio/opencensus/trace/SpanContext;
    .locals 1

    .line 2
    new-instance v0, Lio/opencensus/trace/SpanContext;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/opencensus/trace/SpanContext;-><init>(Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Lio/opencensus/trace/TraceOptions;Lio/opencensus/trace/Tracestate;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/SpanContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/opencensus/trace/SpanContext;

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->a:Lio/opencensus/trace/TraceId;

    iget-object v3, p1, Lio/opencensus/trace/SpanContext;->a:Lio/opencensus/trace/TraceId;

    invoke-virtual {v1, v3}, Lio/opencensus/trace/TraceId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->b:Lio/opencensus/trace/SpanId;

    iget-object v3, p1, Lio/opencensus/trace/SpanContext;->b:Lio/opencensus/trace/SpanId;

    invoke-virtual {v1, v3}, Lio/opencensus/trace/SpanId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lio/opencensus/trace/SpanContext;->c:Lio/opencensus/trace/TraceOptions;

    iget-object p1, p1, Lio/opencensus/trace/SpanContext;->c:Lio/opencensus/trace/TraceOptions;

    invoke-virtual {p0, p1}, Lio/opencensus/trace/TraceOptions;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getSpanId()Lio/opencensus/trace/SpanId;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/SpanContext;->b:Lio/opencensus/trace/SpanId;

    return-object p0
.end method

.method public getTraceId()Lio/opencensus/trace/TraceId;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/SpanContext;->a:Lio/opencensus/trace/TraceId;

    return-object p0
.end method

.method public getTraceOptions()Lio/opencensus/trace/TraceOptions;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/SpanContext;->c:Lio/opencensus/trace/TraceOptions;

    return-object p0
.end method

.method public getTracestate()Lio/opencensus/trace/Tracestate;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/SpanContext;->d:Lio/opencensus/trace/Tracestate;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/opencensus/trace/SpanContext;->a:Lio/opencensus/trace/TraceId;

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->b:Lio/opencensus/trace/SpanId;

    iget-object p0, p0, Lio/opencensus/trace/SpanContext;->c:Lio/opencensus/trace/TraceOptions;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/SpanContext;->a:Lio/opencensus/trace/TraceId;

    invoke-virtual {v0}, Lio/opencensus/trace/TraceId;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/opencensus/trace/SpanContext;->b:Lio/opencensus/trace/SpanId;

    invoke-virtual {p0}, Lio/opencensus/trace/SpanId;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanContext{traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->a:Lio/opencensus/trace/TraceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/SpanContext;->b:Lio/opencensus/trace/SpanId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", traceOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/opencensus/trace/SpanContext;->c:Lio/opencensus/trace/TraceOptions;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
