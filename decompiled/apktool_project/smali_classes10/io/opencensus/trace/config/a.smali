.class public final Lio/opencensus/trace/config/a;
.super Lio/opencensus/trace/config/TraceParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/config/a$b;
    }
.end annotation


# instance fields
.field public final g:Lio/opencensus/trace/Sampler;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Lio/opencensus/trace/Sampler;IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/config/TraceParams;-><init>()V

    .line 3
    iput-object p1, p0, Lio/opencensus/trace/config/a;->g:Lio/opencensus/trace/Sampler;

    .line 4
    iput p2, p0, Lio/opencensus/trace/config/a;->h:I

    .line 5
    iput p3, p0, Lio/opencensus/trace/config/a;->i:I

    .line 6
    iput p4, p0, Lio/opencensus/trace/config/a;->j:I

    .line 7
    iput p5, p0, Lio/opencensus/trace/config/a;->k:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/Sampler;IIIILio/opencensus/trace/config/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/opencensus/trace/config/a;-><init>(Lio/opencensus/trace/Sampler;IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/config/TraceParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/trace/config/TraceParams;

    iget-object v1, p0, Lio/opencensus/trace/config/a;->g:Lio/opencensus/trace/Sampler;

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getSampler()Lio/opencensus/trace/Sampler;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lio/opencensus/trace/config/a;->h:I

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfAttributes()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lio/opencensus/trace/config/a;->i:I

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfAnnotations()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lio/opencensus/trace/config/a;->j:I

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfMessageEvents()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget p0, p0, Lio/opencensus/trace/config/a;->k:I

    invoke-virtual {p1}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfLinks()I

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

.method public getMaxNumberOfAnnotations()I
    .locals 0

    iget p0, p0, Lio/opencensus/trace/config/a;->i:I

    return p0
.end method

.method public getMaxNumberOfAttributes()I
    .locals 0

    iget p0, p0, Lio/opencensus/trace/config/a;->h:I

    return p0
.end method

.method public getMaxNumberOfLinks()I
    .locals 0

    iget p0, p0, Lio/opencensus/trace/config/a;->k:I

    return p0
.end method

.method public getMaxNumberOfMessageEvents()I
    .locals 0

    iget p0, p0, Lio/opencensus/trace/config/a;->j:I

    return p0
.end method

.method public getSampler()Lio/opencensus/trace/Sampler;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/config/a;->g:Lio/opencensus/trace/Sampler;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/opencensus/trace/config/a;->g:Lio/opencensus/trace/Sampler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lio/opencensus/trace/config/a;->h:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lio/opencensus/trace/config/a;->i:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lio/opencensus/trace/config/a;->j:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lio/opencensus/trace/config/a;->k:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public toBuilder()Lio/opencensus/trace/config/TraceParams$Builder;
    .locals 2

    new-instance v0, Lio/opencensus/trace/config/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/opencensus/trace/config/a$b;-><init>(Lio/opencensus/trace/config/TraceParams;Lio/opencensus/trace/config/a$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TraceParams{sampler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/config/a;->g:Lio/opencensus/trace/Sampler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberOfAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/opencensus/trace/config/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberOfAnnotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/opencensus/trace/config/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberOfMessageEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/opencensus/trace/config/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberOfLinks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/opencensus/trace/config/a;->k:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
