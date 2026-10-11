.class public Lio/opencensus/stats/ViewData$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/common/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/opencensus/stats/ViewData;->d(Lio/opencensus/stats/Aggregation;Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Measure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/opencensus/common/Function<",
        "Lio/opencensus/stats/Aggregation$LastValue;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/opencensus/stats/Measure;

.field public final synthetic b:Lio/opencensus/stats/AggregationData;

.field public final synthetic c:Lio/opencensus/stats/Aggregation;


# direct methods
.method public constructor <init>(Lio/opencensus/stats/Measure;Lio/opencensus/stats/AggregationData;Lio/opencensus/stats/Aggregation;)V
    .locals 0

    iput-object p1, p0, Lio/opencensus/stats/ViewData$h;->a:Lio/opencensus/stats/Measure;

    iput-object p2, p0, Lio/opencensus/stats/ViewData$h;->b:Lio/opencensus/stats/AggregationData;

    iput-object p3, p0, Lio/opencensus/stats/ViewData$h;->c:Lio/opencensus/stats/Aggregation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/opencensus/stats/Aggregation$LastValue;)Ljava/lang/Void;
    .locals 2

    iget-object p1, p0, Lio/opencensus/stats/ViewData$h;->a:Lio/opencensus/stats/Measure;

    new-instance v0, Lio/opencensus/stats/ViewData$h$a;

    invoke-direct {v0, p0}, Lio/opencensus/stats/ViewData$h$a;-><init>(Lio/opencensus/stats/ViewData$h;)V

    new-instance v1, Lio/opencensus/stats/ViewData$h$b;

    invoke-direct {v1, p0}, Lio/opencensus/stats/ViewData$h$b;-><init>(Lio/opencensus/stats/ViewData$h;)V

    invoke-static {}, Lio/opencensus/common/Functions;->throwAssertionError()Lio/opencensus/common/Function;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lio/opencensus/stats/Measure;->match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/opencensus/stats/Aggregation$LastValue;

    invoke-virtual {p0, p1}, Lio/opencensus/stats/ViewData$h;->a(Lio/opencensus/stats/Aggregation$LastValue;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
