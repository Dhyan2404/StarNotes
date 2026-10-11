.class public Lio/opencensus/stats/ViewData$a;
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
        "Lio/opencensus/stats/ViewData$AggregationWindowData$CumulativeData;",
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

    iput-object p1, p0, Lio/opencensus/stats/ViewData$a;->a:Lio/opencensus/stats/View;

    iput-object p2, p0, Lio/opencensus/stats/ViewData$a;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/opencensus/stats/ViewData$AggregationWindowData$CumulativeData;)Lio/opencensus/stats/ViewData;
    .locals 3

    iget-object v0, p0, Lio/opencensus/stats/ViewData$a;->a:Lio/opencensus/stats/View;

    iget-object p0, p0, Lio/opencensus/stats/ViewData$a;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lio/opencensus/stats/ViewData$AggregationWindowData$CumulativeData;->getStart()Lio/opencensus/common/Timestamp;

    move-result-object v1

    invoke-virtual {p1}, Lio/opencensus/stats/ViewData$AggregationWindowData$CumulativeData;->getEnd()Lio/opencensus/common/Timestamp;

    move-result-object v2

    invoke-static {v0, p0, p1, v1, v2}, Lio/opencensus/stats/ViewData;->a(Lio/opencensus/stats/View;Ljava/util/Map;Lio/opencensus/stats/ViewData$AggregationWindowData;Lio/opencensus/common/Timestamp;Lio/opencensus/common/Timestamp;)Lio/opencensus/stats/ViewData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/opencensus/stats/ViewData$AggregationWindowData$CumulativeData;

    invoke-virtual {p0, p1}, Lio/opencensus/stats/ViewData$a;->a(Lio/opencensus/stats/ViewData$AggregationWindowData$CumulativeData;)Lio/opencensus/stats/ViewData;

    move-result-object p0

    return-object p0
.end method
