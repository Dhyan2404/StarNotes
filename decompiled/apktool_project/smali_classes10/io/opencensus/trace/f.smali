.class public final Lio/opencensus/trace/f;
.super Lio/opencensus/trace/Link;
.source "SourceFile"


# instance fields
.field public final b:Lio/opencensus/trace/TraceId;

.field public final c:Lio/opencensus/trace/SpanId;

.field public final d:Lio/opencensus/trace/Link$Type;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/AttributeValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Lio/opencensus/trace/Link$Type;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/TraceId;",
            "Lio/opencensus/trace/SpanId;",
            "Lio/opencensus/trace/Link$Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/AttributeValue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/opencensus/trace/Link;-><init>()V

    if-eqz p1, :cond_3

    iput-object p1, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/TraceId;

    if-eqz p2, :cond_2

    iput-object p2, p0, Lio/opencensus/trace/f;->c:Lio/opencensus/trace/SpanId;

    if-eqz p3, :cond_1

    iput-object p3, p0, Lio/opencensus/trace/f;->d:Lio/opencensus/trace/Link$Type;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lio/opencensus/trace/f;->e:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null attributes"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null type"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null spanId"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null traceId"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/Link;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/trace/Link;

    iget-object v1, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/TraceId;

    invoke-virtual {p1}, Lio/opencensus/trace/Link;->getTraceId()Lio/opencensus/trace/TraceId;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/trace/TraceId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/opencensus/trace/f;->c:Lio/opencensus/trace/SpanId;

    invoke-virtual {p1}, Lio/opencensus/trace/Link;->getSpanId()Lio/opencensus/trace/SpanId;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/trace/SpanId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/opencensus/trace/f;->d:Lio/opencensus/trace/Link$Type;

    invoke-virtual {p1}, Lio/opencensus/trace/Link;->getType()Lio/opencensus/trace/Link$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lio/opencensus/trace/f;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lio/opencensus/trace/Link;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/trace/AttributeValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/opencensus/trace/f;->e:Ljava/util/Map;

    return-object p0
.end method

.method public getSpanId()Lio/opencensus/trace/SpanId;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/f;->c:Lio/opencensus/trace/SpanId;

    return-object p0
.end method

.method public getTraceId()Lio/opencensus/trace/TraceId;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/TraceId;

    return-object p0
.end method

.method public getType()Lio/opencensus/trace/Link$Type;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/f;->d:Lio/opencensus/trace/Link$Type;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/TraceId;

    invoke-virtual {v0}, Lio/opencensus/trace/TraceId;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/trace/f;->c:Lio/opencensus/trace/SpanId;

    invoke-virtual {v2}, Lio/opencensus/trace/SpanId;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/trace/f;->d:Lio/opencensus/trace/Link$Type;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lio/opencensus/trace/f;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link{traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/TraceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/f;->c:Lio/opencensus/trace/SpanId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/f;->d:Lio/opencensus/trace/Link$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/opencensus/trace/f;->e:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
