.class public abstract Lio/opencensus/metrics/export/TimeSeries;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lio/opencensus/common/Timestamp;)Lio/opencensus/metrics/export/TimeSeries;
    .locals 2
    .param p2    # Lio/opencensus/common/Timestamp;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelValue;",
            ">;",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/export/Point;",
            ">;",
            "Lio/opencensus/common/Timestamp;",
            ")",
            "Lio/opencensus/metrics/export/TimeSeries;"
        }
    .end annotation

    const-string v0, "labelValues"

    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "labelValue"

    invoke-static {v0, v1}, Lio/opencensus/internal/Utils;->checkListElementNotNull(Ljava/util/List;Ljava/lang/Object;)V

    new-instance v0, Lcom/sunia/HTREnginev2/kk;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/kk;-><init>(Ljava/util/List;Ljava/util/List;Lio/opencensus/common/Timestamp;)V

    return-object v0
.end method

.method public static create(Ljava/util/List;)Lio/opencensus/metrics/export/TimeSeries;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelValue;",
            ">;)",
            "Lio/opencensus/metrics/export/TimeSeries;"
        }
    .end annotation

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/opencensus/metrics/export/TimeSeries;->a(Ljava/util/List;Ljava/util/List;Lio/opencensus/common/Timestamp;)Lio/opencensus/metrics/export/TimeSeries;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/util/List;Ljava/util/List;Lio/opencensus/common/Timestamp;)Lio/opencensus/metrics/export/TimeSeries;
    .locals 2
    .param p2    # Lio/opencensus/common/Timestamp;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelValue;",
            ">;",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/export/Point;",
            ">;",
            "Lio/opencensus/common/Timestamp;",
            ")",
            "Lio/opencensus/metrics/export/TimeSeries;"
        }
    .end annotation

    const-string v0, "points"

    .line 1
    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "point"

    invoke-static {v0, v1}, Lio/opencensus/internal/Utils;->checkListElementNotNull(Ljava/util/List;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {p0, p1, p2}, Lio/opencensus/metrics/export/TimeSeries;->a(Ljava/util/List;Ljava/util/List;Lio/opencensus/common/Timestamp;)Lio/opencensus/metrics/export/TimeSeries;

    move-result-object p0

    return-object p0
.end method

.method public static createWithOnePoint(Ljava/util/List;Lio/opencensus/metrics/export/Point;Lio/opencensus/common/Timestamp;)Lio/opencensus/metrics/export/TimeSeries;
    .locals 1
    .param p2    # Lio/opencensus/common/Timestamp;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelValue;",
            ">;",
            "Lio/opencensus/metrics/export/Point;",
            "Lio/opencensus/common/Timestamp;",
            ")",
            "Lio/opencensus/metrics/export/TimeSeries;"
        }
    .end annotation

    const-string v0, "point"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/opencensus/metrics/export/TimeSeries;->a(Ljava/util/List;Ljava/util/List;Lio/opencensus/common/Timestamp;)Lio/opencensus/metrics/export/TimeSeries;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getLabelValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/export/Point;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartTimestamp()Lio/opencensus/common/Timestamp;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public setPoint(Lio/opencensus/metrics/export/Point;)Lio/opencensus/metrics/export/TimeSeries;
    .locals 2

    const-string v0, "point"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/kk;

    invoke-virtual {p0}, Lio/opencensus/metrics/export/TimeSeries;->getLabelValues()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sunia/HTREnginev2/kk;-><init>(Ljava/util/List;Ljava/util/List;Lio/opencensus/common/Timestamp;)V

    return-object v0
.end method
