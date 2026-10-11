.class public Lio/opencensus/stats/ViewData$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/common/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/opencensus/stats/ViewData;->e(Lio/opencensus/stats/View$AggregationWindow;Lio/opencensus/stats/ViewData$AggregationWindowData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/opencensus/common/Function<",
        "Lio/opencensus/stats/View$AggregationWindow$Cumulative;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/opencensus/stats/ViewData$AggregationWindowData;


# direct methods
.method public constructor <init>(Lio/opencensus/stats/ViewData$AggregationWindowData;)V
    .locals 0

    iput-object p1, p0, Lio/opencensus/stats/ViewData$c;->a:Lio/opencensus/stats/ViewData$AggregationWindowData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/opencensus/stats/View$AggregationWindow$Cumulative;)Ljava/lang/Void;
    .locals 1

    iget-object p0, p0, Lio/opencensus/stats/ViewData$c;->a:Lio/opencensus/stats/ViewData$AggregationWindowData;

    instance-of v0, p0, Lio/opencensus/stats/ViewData$AggregationWindowData$CumulativeData;

    invoke-static {v0, p1, p0}, Lio/opencensus/stats/ViewData;->b(ZLio/opencensus/stats/View$AggregationWindow;Lio/opencensus/stats/ViewData$AggregationWindowData;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/opencensus/stats/View$AggregationWindow$Cumulative;

    invoke-virtual {p0, p1}, Lio/opencensus/stats/ViewData$c;->a(Lio/opencensus/stats/View$AggregationWindow$Cumulative;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
