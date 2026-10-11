.class public final Lio/opencensus/trace/export/d;
.super Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/opencensus/trace/Status$CanonicalCode;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/opencensus/trace/Status$CanonicalCode;I)V
    .locals 0
    .param p2    # Lio/opencensus/trace/Status$CanonicalCode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/opencensus/trace/export/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/opencensus/trace/export/d;->b:Lio/opencensus/trace/Status$CanonicalCode;

    iput p3, p0, Lio/opencensus/trace/export/d;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null spanName"

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
    instance-of v1, p1, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;

    iget-object v1, p0, Lio/opencensus/trace/export/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;->getSpanName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/export/d;->b:Lio/opencensus/trace/Status$CanonicalCode;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;->getCanonicalCode()Lio/opencensus/trace/Status$CanonicalCode;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;->getCanonicalCode()Lio/opencensus/trace/Status$CanonicalCode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget p0, p0, Lio/opencensus/trace/export/d;->c:I

    invoke-virtual {p1}, Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;->getMaxSpansToReturn()I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public getCanonicalCode()Lio/opencensus/trace/Status$CanonicalCode;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/opencensus/trace/export/d;->b:Lio/opencensus/trace/Status$CanonicalCode;

    return-object p0
.end method

.method public getMaxSpansToReturn()I
    .locals 0

    iget p0, p0, Lio/opencensus/trace/export/d;->c:I

    return p0
.end method

.method public getSpanName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/export/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/opencensus/trace/export/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/trace/export/d;->b:Lio/opencensus/trace/Status$CanonicalCode;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lio/opencensus/trace/export/d;->c:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorFilter{spanName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", canonicalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/export/d;->b:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSpansToReturn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/opencensus/trace/export/d;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
