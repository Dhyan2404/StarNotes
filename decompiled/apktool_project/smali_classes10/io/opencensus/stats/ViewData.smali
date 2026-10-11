.class public abstract Lio/opencensus/stats/ViewData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/stats/ViewData$AggregationWindowData;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)Lio/opencensus/stats/ViewData;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/opencensus/stats/ViewData;->h(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)Lio/opencensus/stats/ViewData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLio/opencensus/stats/View$AggregationWindow;Lio/opencensus/stats/ViewData$AggregationWindowData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/opencensus/stats/ViewData;->j(ZLio/opencensus/stats/View$AggregationWindow;Lio/opencensus/stats/ViewData$AggregationWindowData;)V

    return-void
.end method

.method public static synthetic c(ZLio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/opencensus/stats/ViewData;->i(ZLio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;)V

    return-void
.end method

.method public static create(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)Lio/opencensus/stats/ViewData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/stats/View;",
            "Ljava/util/Map<",
            "+",
            "Ljava/util/List<",
            "Lio/opencensus/tags/TagValue;",
            ">;+",
            "Lio/opencensus/stats/AggregationData;",
            ">;",
            "Lio/opencensus/common/Timestamp;",
            "Lio/opencensus/common/Timestamp;",
            ")",
            "Lio/opencensus/stats/ViewData;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-virtual {p0}, Lio/opencensus/stats/View;->getAggregation()Lio/opencensus/stats/Aggregation;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/opencensus/stats/AggregationData;

    invoke-virtual {p0}, Lio/opencensus/stats/View;->getMeasure()Lio/opencensus/stats/Measure;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/opencensus/stats/ViewData;->d(Lio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Measure;)V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 20
    invoke-static {p2, p3}, Lio/opencensus/stats/ViewData$AggregationWindowData$CumulativeData;->create(Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)Lio/opencensus/stats/ViewData$AggregationWindowData$CumulativeData;

    move-result-object v0

    .line 21
    invoke-static {p0, p1, v0, p2, p3}, Lio/opencensus/stats/ViewData;->h(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)Lio/opencensus/stats/ViewData;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;)Lio/opencensus/stats/ViewData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/stats/View;",
            "Ljava/util/Map<",
            "+",
            "Ljava/util/List<",
            "Lio/opencensus/tags/TagValue;",
            ">;+",
            "Lio/opencensus/stats/AggregationData;",
            ">;",
            "Lio/opencensus/stats/ViewData$AggregationWindowData;",
            ")",
            "Lio/opencensus/stats/ViewData;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/opencensus/stats/View;->getWindow()Lio/opencensus/stats/View$AggregationWindow;

    move-result-object v0

    invoke-static {v0, p2}, Lio/opencensus/stats/ViewData;->e(Lio/opencensus/stats/View$AggregationWindow;Lio/opencensus/stats/ViewData$AggregationWindowData;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/stats/View;->getAggregation()Lio/opencensus/stats/Aggregation;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/opencensus/stats/AggregationData;

    invoke-virtual {p0}, Lio/opencensus/stats/View;->getMeasure()Lio/opencensus/stats/Measure;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/opencensus/stats/ViewData;->d(Lio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Measure;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lio/opencensus/stats/ViewData$a;

    invoke-direct {p1, p0, v0}, Lio/opencensus/stats/ViewData$a;-><init>(Lio/opencensus/stats/View;Ljava/util/Map;)V

    new-instance v1, Lio/opencensus/stats/ViewData$b;

    invoke-direct {v1, p0, v0}, Lio/opencensus/stats/ViewData$b;-><init>(Lio/opencensus/stats/View;Ljava/util/Map;)V

    .line 10
    invoke-static {}, Lio/opencensus/common/Functions;->throwAssertionError()Lio/opencensus/common/Function;

    move-result-object p0

    .line 11
    invoke-virtual {p2, p1, v1, p0}, Lio/opencensus/stats/ViewData$AggregationWindowData;->match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/stats/ViewData;

    return-object p0
.end method

.method public static d(Lio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Measure;)V
    .locals 6

    new-instance v1, Lio/opencensus/stats/ViewData$e;

    invoke-direct {v1, p2, p1, p0}, Lio/opencensus/stats/ViewData$e;-><init>(Lio/opencensus/stats/Measure;Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Aggregation;)V

    new-instance v2, Lio/opencensus/stats/ViewData$f;

    invoke-direct {v2, p1, p0}, Lio/opencensus/stats/ViewData$f;-><init>(Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Aggregation;)V

    new-instance v3, Lio/opencensus/stats/ViewData$g;

    invoke-direct {v3, p1, p0}, Lio/opencensus/stats/ViewData$g;-><init>(Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Aggregation;)V

    new-instance v4, Lio/opencensus/stats/ViewData$h;

    invoke-direct {v4, p2, p1, p0}, Lio/opencensus/stats/ViewData$h;-><init>(Lio/opencensus/stats/Measure;Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Aggregation;)V

    new-instance v5, Lio/opencensus/stats/ViewData$i;

    invoke-direct {v5, p1, p0}, Lio/opencensus/stats/ViewData$i;-><init>(Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Aggregation;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/opencensus/stats/Aggregation;->match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Lio/opencensus/stats/View$AggregationWindow;Lio/opencensus/stats/ViewData$AggregationWindowData;)V
    .locals 2

    new-instance v0, Lio/opencensus/stats/ViewData$c;

    invoke-direct {v0, p1}, Lio/opencensus/stats/ViewData$c;-><init>(Lio/opencensus/stats/ViewData$AggregationWindowData;)V

    new-instance v1, Lio/opencensus/stats/ViewData$d;

    invoke-direct {v1, p1}, Lio/opencensus/stats/ViewData$d;-><init>(Lio/opencensus/stats/ViewData$AggregationWindowData;)V

    invoke-static {}, Lio/opencensus/common/Functions;->throwAssertionError()Lio/opencensus/common/Function;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lio/opencensus/stats/View$AggregationWindow;->match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;

    return-void
.end method

.method public static f(Lio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aggregation and AggregationData types mismatch. Aggregation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AggregationData: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lio/opencensus/stats/View$AggregationWindow;Lio/opencensus/stats/ViewData$AggregationWindowData;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AggregationWindow and AggregationWindowData types mismatch. AggregationWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AggregationWindowData: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)Lio/opencensus/stats/ViewData;
    .locals 7
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
            ")",
            "Lio/opencensus/stats/ViewData;"
        }
    .end annotation

    new-instance v6, Lio/opencensus/stats/r;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/opencensus/stats/r;-><init>(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)V

    return-object v6
.end method

.method public static i(ZLio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lio/opencensus/stats/ViewData;->f(Lio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(ZLio/opencensus/stats/View$AggregationWindow;Lio/opencensus/stats/ViewData$AggregationWindowData;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lio/opencensus/stats/ViewData;->g(Lio/opencensus/stats/View$AggregationWindow;Lio/opencensus/stats/ViewData$AggregationWindowData;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getAggregationMap()Ljava/util/Map;
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
.end method

.method public abstract getEnd()Lio/opencensus/common/Timestamp;
.end method

.method public abstract getStart()Lio/opencensus/common/Timestamp;
.end method

.method public abstract getView()Lio/opencensus/stats/View;
.end method

.method public abstract getWindowData()Lio/opencensus/stats/ViewData$AggregationWindowData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
