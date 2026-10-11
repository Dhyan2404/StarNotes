.class public final Lio/opencensus/metrics/export/h;
.super Lio/opencensus/metrics/export/Value$a;
.source "SourceFile"


# instance fields
.field public final a:Lio/opencensus/metrics/export/Distribution;


# direct methods
.method public constructor <init>(Lio/opencensus/metrics/export/Distribution;)V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/metrics/export/Value$a;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/opencensus/metrics/export/h;->a:Lio/opencensus/metrics/export/Distribution;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null value"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Lio/opencensus/metrics/export/Distribution;
    .locals 0

    iget-object p0, p0, Lio/opencensus/metrics/export/h;->a:Lio/opencensus/metrics/export/Distribution;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lio/opencensus/metrics/export/Value$a;

    if-eqz v0, :cond_1

    check-cast p1, Lio/opencensus/metrics/export/Value$a;

    iget-object p0, p0, Lio/opencensus/metrics/export/h;->a:Lio/opencensus/metrics/export/Distribution;

    invoke-virtual {p1}, Lio/opencensus/metrics/export/Value$a;->b()Lio/opencensus/metrics/export/Distribution;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object p0, p0, Lio/opencensus/metrics/export/h;->a:Lio/opencensus/metrics/export/Distribution;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const v0, 0xf4243

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueDistribution{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/opencensus/metrics/export/h;->a:Lio/opencensus/metrics/export/Distribution;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
