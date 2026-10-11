.class public final Lio/opencensus/stats/q;
.super Lio/opencensus/stats/View;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final c:Lio/opencensus/stats/View$Name;

.field public final d:Ljava/lang/String;

.field public final e:Lio/opencensus/stats/Measure;

.field public final f:Lio/opencensus/stats/Aggregation;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/opencensus/tags/TagKey;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lio/opencensus/stats/View$AggregationWindow;


# direct methods
.method public constructor <init>(Lio/opencensus/stats/View$Name;Ljava/lang/String;Lio/opencensus/stats/Measure;Lio/opencensus/stats/Aggregation;Ljava/util/List;Lio/opencensus/stats/View$AggregationWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/stats/View$Name;",
            "Ljava/lang/String;",
            "Lio/opencensus/stats/Measure;",
            "Lio/opencensus/stats/Aggregation;",
            "Ljava/util/List<",
            "Lio/opencensus/tags/TagKey;",
            ">;",
            "Lio/opencensus/stats/View$AggregationWindow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/opencensus/stats/View;-><init>()V

    if-eqz p1, :cond_5

    iput-object p1, p0, Lio/opencensus/stats/q;->c:Lio/opencensus/stats/View$Name;

    if-eqz p2, :cond_4

    iput-object p2, p0, Lio/opencensus/stats/q;->d:Ljava/lang/String;

    if-eqz p3, :cond_3

    iput-object p3, p0, Lio/opencensus/stats/q;->e:Lio/opencensus/stats/Measure;

    if-eqz p4, :cond_2

    iput-object p4, p0, Lio/opencensus/stats/q;->f:Lio/opencensus/stats/Aggregation;

    if-eqz p5, :cond_1

    iput-object p5, p0, Lio/opencensus/stats/q;->g:Ljava/util/List;

    if-eqz p6, :cond_0

    iput-object p6, p0, Lio/opencensus/stats/q;->h:Lio/opencensus/stats/View$AggregationWindow;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null window"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null columns"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null aggregation"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null measure"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null description"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null name"

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
    instance-of v1, p1, Lio/opencensus/stats/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/stats/View;

    iget-object v1, p0, Lio/opencensus/stats/q;->c:Lio/opencensus/stats/View$Name;

    invoke-virtual {p1}, Lio/opencensus/stats/View;->getName()Lio/opencensus/stats/View$Name;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/opencensus/stats/q;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lio/opencensus/stats/View;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/opencensus/stats/q;->e:Lio/opencensus/stats/Measure;

    invoke-virtual {p1}, Lio/opencensus/stats/View;->getMeasure()Lio/opencensus/stats/Measure;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/opencensus/stats/q;->f:Lio/opencensus/stats/Aggregation;

    invoke-virtual {p1}, Lio/opencensus/stats/View;->getAggregation()Lio/opencensus/stats/Aggregation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/opencensus/stats/q;->g:Ljava/util/List;

    invoke-virtual {p1}, Lio/opencensus/stats/View;->getColumns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lio/opencensus/stats/q;->h:Lio/opencensus/stats/View$AggregationWindow;

    invoke-virtual {p1}, Lio/opencensus/stats/View;->getWindow()Lio/opencensus/stats/View$AggregationWindow;

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

.method public getAggregation()Lio/opencensus/stats/Aggregation;
    .locals 0

    iget-object p0, p0, Lio/opencensus/stats/q;->f:Lio/opencensus/stats/Aggregation;

    return-object p0
.end method

.method public getColumns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/opencensus/tags/TagKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/opencensus/stats/q;->g:Ljava/util/List;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/opencensus/stats/q;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getMeasure()Lio/opencensus/stats/Measure;
    .locals 0

    iget-object p0, p0, Lio/opencensus/stats/q;->e:Lio/opencensus/stats/Measure;

    return-object p0
.end method

.method public getName()Lio/opencensus/stats/View$Name;
    .locals 0

    iget-object p0, p0, Lio/opencensus/stats/q;->c:Lio/opencensus/stats/View$Name;

    return-object p0
.end method

.method public getWindow()Lio/opencensus/stats/View$AggregationWindow;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/opencensus/stats/q;->h:Lio/opencensus/stats/View$AggregationWindow;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/opencensus/stats/q;->c:Lio/opencensus/stats/View$Name;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/stats/q;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/stats/q;->e:Lio/opencensus/stats/Measure;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/stats/q;->f:Lio/opencensus/stats/Aggregation;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/opencensus/stats/q;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lio/opencensus/stats/q;->h:Lio/opencensus/stats/View$AggregationWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/stats/q;->c:Lio/opencensus/stats/View$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/stats/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", measure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/stats/q;->e:Lio/opencensus/stats/Measure;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aggregation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/stats/q;->f:Lio/opencensus/stats/Aggregation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/stats/q;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/opencensus/stats/q;->h:Lio/opencensus/stats/View$AggregationWindow;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
