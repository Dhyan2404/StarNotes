.class public Lio/opencensus/stats/ViewData$h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/common/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/opencensus/stats/ViewData$h;->a(Lio/opencensus/stats/Aggregation$LastValue;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/opencensus/common/Function<",
        "Lio/opencensus/stats/Measure$MeasureLong;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/opencensus/stats/ViewData$h;


# direct methods
.method public constructor <init>(Lio/opencensus/stats/ViewData$h;)V
    .locals 0

    iput-object p1, p0, Lio/opencensus/stats/ViewData$h$b;->a:Lio/opencensus/stats/ViewData$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/opencensus/stats/Measure$MeasureLong;)Ljava/lang/Void;
    .locals 1

    iget-object p0, p0, Lio/opencensus/stats/ViewData$h$b;->a:Lio/opencensus/stats/ViewData$h;

    iget-object p1, p0, Lio/opencensus/stats/ViewData$h;->b:Lio/opencensus/stats/AggregationData;

    instance-of v0, p1, Lio/opencensus/stats/AggregationData$LastValueDataLong;

    iget-object p0, p0, Lio/opencensus/stats/ViewData$h;->c:Lio/opencensus/stats/Aggregation;

    invoke-static {v0, p0, p1}, Lio/opencensus/stats/ViewData;->c(ZLio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/opencensus/stats/Measure$MeasureLong;

    invoke-virtual {p0, p1}, Lio/opencensus/stats/ViewData$h$b;->a(Lio/opencensus/stats/Measure$MeasureLong;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
