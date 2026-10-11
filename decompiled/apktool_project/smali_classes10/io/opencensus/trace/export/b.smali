.class public final Lio/opencensus/trace/export/b;
.super Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;-><init>()V

    iput p1, p0, Lio/opencensus/trace/export/b;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;

    iget p0, p0, Lio/opencensus/trace/export/b;->a:I

    invoke-virtual {p1}, Lio/opencensus/trace/export/RunningSpanStore$PerSpanNameSummary;->getNumRunningSpans()I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getNumRunningSpans()I
    .locals 0

    iget p0, p0, Lio/opencensus/trace/export/b;->a:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0xf4243

    iget p0, p0, Lio/opencensus/trace/export/b;->a:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerSpanNameSummary{numRunningSpans="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/opencensus/trace/export/b;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
