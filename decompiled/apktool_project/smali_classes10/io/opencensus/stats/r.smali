.class public final Lio/opencensus/stats/r;
.super Lio/opencensus/stats/ViewData;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final a:Lio/opencensus/stats/View;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Lio/opencensus/tags/TagValue;",
            ">;",
            "Lio/opencensus/stats/AggregationData;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lio/opencensus/stats/ViewData$AggregationWindowData;

.field public final d:Lio/opencensus/common/Timestamp;

.field public final e:Lio/opencensus/common/Timestamp;


# direct methods
.method public constructor <init>(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/stats/View;",
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Lio/opencensus/tags/TagValue;",
            ">;",
            "Lio/opencensus/stats/AggregationData;",
            ">;",
            "Lio/opencensus/stats/ViewData$AggregationWindowData;",
            "Lio/opencensus/common/Timestamp;",
            "Lio/opencensus/common/Timestamp;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/opencensus/stats/ViewData;-><init>()V

    if-eqz p1, :cond_4

    iput-object p1, p0, Lio/opencensus/stats/r;->a:Lio/opencensus/stats/View;

    if-eqz p2, :cond_3

    iput-object p2, p0, Lio/opencensus/stats/r;->b:Ljava/util/Map;

    if-eqz p3, :cond_2

    iput-object p3, p0, Lio/opencensus/stats/r;->c:Lio/opencensus/stats/ViewData$AggregationWindowData;

    if-eqz p4, :cond_1

    iput-object p4, p0, Lio/opencensus/stats/r;->d:Lio/opencensus/common/Timestamp;

    if-eqz p5, :cond_0

    iput-object p5, p0, Lio/opencensus/stats/r;->e:Lio/opencensus/common/Timestamp;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null end"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null start"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null windowData"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null aggregationMap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null view"

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
    instance-of v1, p1, Lio/opencensus/stats/ViewData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/stats/ViewData;

    iget-object v1, p0, Lio/opencensus/stats/r;->a:Lio/opencensus/stats/View;

    invoke-virtual {p1}, Lio/opencensus/stats/ViewData;->getView()Lio/opencensus/stats/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/opencensus/stats/r;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lio/opencensus/stats/ViewData;->getAggregationMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/opencensus/stats/r;->c:Lio/opencensus/stats/ViewData$AggregationWindowData;

    invoke-virtual {p1}, Lio/opencensus/stats/ViewData;->getWindowData()Lio/opencensus/stats/ViewData$AggregationWindowData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/opencensus/stats/r;->d:Lio/opencensus/common/Timestamp;

    invoke-virtual {p1}, Lio/opencensus/stats/ViewData;->getStart()Lio/opencensus/common/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lio/opencensus/stats/r;->e:Lio/opencensus/common/Timestamp;

    invoke-virtual {p1}, Lio/opencensus/stats/ViewData;->getEnd()Lio/opencensus/common/Timestamp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public getAggregationMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Lio/opencensus/tags/TagValue;",
            ">;",
            "Lio/opencensus/stats/AggregationData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/opencensus/stats/r;->b:Ljava/util/Map;

    return-object p0
.end method

.method public getEnd()Lio/opencensus/common/Timestamp;
    .locals 0

    iget-object p0, p0, Lio/opencensus/stats/r;->e:Lio/opencensus/common/Timestamp;

    return-object p0
.end method

.method public getStart()Lio/opencensus/common/Timestamp;
    .locals 0

    iget-object p0, p0, Lio/opencensus/stats/r;->d:Lio/opencensus/common/Timestamp;

    return-object p0
.end method

.method public getView()Lio/opencensus/stats/View;
    .locals 0

    iget-object p0, p0, Lio/opencensus/stats/r;->a:Lio/opencensus/stats/View;

    return-object p0
.end method

.method public getWindowData()Lio/opencensus/stats/ViewData$AggregationWindowData;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/opencensus/stats/r;->c:Lio/opencensus/stats/ViewData$AggregationWindowData;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/opencensus/stats/r;->a:Lio/opencensus/stats/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/stats/r;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/stats/r;->c:Lio/opencensus/stats/ViewData$AggregationWindowData;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/stats/r;->d:Lio/opencensus/common/Timestamp;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lio/opencensus/stats/r;->e:Lio/opencensus/common/Timestamp;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewData{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/stats/r;->a:Lio/opencensus/stats/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aggregationMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/stats/r;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/stats/r;->c:Lio/opencensus/stats/ViewData$AggregationWindowData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/stats/r;->d:Lio/opencensus/common/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/opencensus/stats/r;->e:Lio/opencensus/common/Timestamp;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
