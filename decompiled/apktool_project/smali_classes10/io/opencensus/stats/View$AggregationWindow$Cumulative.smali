.class public abstract Lio/opencensus/stats/View$AggregationWindow$Cumulative;
.super Lio/opencensus/stats/View$AggregationWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/stats/View$AggregationWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Cumulative"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final a:Lio/opencensus/stats/View$AggregationWindow$Cumulative;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/opencensus/stats/u;

    invoke-direct {v0}, Lio/opencensus/stats/u;-><init>()V

    sput-object v0, Lio/opencensus/stats/View$AggregationWindow$Cumulative;->a:Lio/opencensus/stats/View$AggregationWindow$Cumulative;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/opencensus/stats/View$AggregationWindow;-><init>(Lio/opencensus/stats/View$a;)V

    return-void
.end method

.method public static create()Lio/opencensus/stats/View$AggregationWindow$Cumulative;
    .locals 1

    sget-object v0, Lio/opencensus/stats/View$AggregationWindow$Cumulative;->a:Lio/opencensus/stats/View$AggregationWindow$Cumulative;

    return-object v0
.end method


# virtual methods
.method public final match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/common/Function<",
            "-",
            "Lio/opencensus/stats/View$AggregationWindow$Cumulative;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Lio/opencensus/stats/View$AggregationWindow$Interval;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Lio/opencensus/stats/View$AggregationWindow;",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Lio/opencensus/common/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
