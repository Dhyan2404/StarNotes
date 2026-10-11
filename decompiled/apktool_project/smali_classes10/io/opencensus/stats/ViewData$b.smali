.class public Lio/opencensus/stats/ViewData$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/common/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/opencensus/stats/ViewData;->create(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;)Lio/opencensus/stats/ViewData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/opencensus/common/Function<",
        "Lio/opencensus/stats/ViewData$AggregationWindowData$IntervalData;",
        "Lio/opencensus/stats/ViewData;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/opencensus/stats/View;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/opencensus/stats/View;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lio/opencensus/stats/ViewData$b;->a:Lio/opencensus/stats/View;

    iput-object p2, p0, Lio/opencensus/stats/ViewData$b;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/opencensus/stats/ViewData$AggregationWindowData$IntervalData;)Lio/opencensus/stats/ViewData;
    .locals 5

    iget-object v0, p0, Lio/opencensus/stats/ViewData$b;->a:Lio/opencensus/stats/View;

    invoke-virtual {v0}, Lio/opencensus/stats/View;->getWindow()Lio/opencensus/stats/View$AggregationWindow;

    move-result-object v0

    check-cast v0, Lio/opencensus/stats/View$AggregationWindow$Interval;

    invoke-virtual {v0}, Lio/opencensus/stats/View$AggregationWindow$Interval;->getDuration()Lio/opencensus/common/Duration;

    move-result-object v0

    iget-object v1, p0, Lio/opencensus/stats/ViewData$b;->a:Lio/opencensus/stats/View;

    iget-object p0, p0, Lio/opencensus/stats/ViewData$b;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lio/opencensus/stats/ViewData$AggregationWindowData$IntervalData;->getEnd()Lio/opencensus/common/Timestamp;

    move-result-object v2

    invoke-virtual {v0}, Lio/opencensus/common/Duration;->getSeconds()J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {v0}, Lio/opencensus/common/Duration;->getNanos()I

    move-result v0

    neg-int v0, v0

    invoke-static {v3, v4, v0}, Lio/opencensus/common/Duration;->create(JI)Lio/opencensus/common/Duration;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/opencensus/common/Timestamp;->addDuration(Lio/opencensus/common/Duration;)Lio/opencensus/common/Timestamp;

    move-result-object v0

    invoke-virtual {p1}, Lio/opencensus/stats/ViewData$AggregationWindowData$IntervalData;->getEnd()Lio/opencensus/common/Timestamp;

    move-result-object v2

    invoke-static {v1, p0, p1, v0, v2}, Lio/opencensus/stats/ViewData;->a(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)Lio/opencensus/stats/ViewData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/opencensus/stats/ViewData$AggregationWindowData$IntervalData;

    invoke-virtual {p0, p1}, Lio/opencensus/stats/ViewData$b;->a(Lio/opencensus/stats/ViewData$AggregationWindowData$IntervalData;)Lio/opencensus/stats/ViewData;

    move-result-object p0

    return-object p0
.end method
