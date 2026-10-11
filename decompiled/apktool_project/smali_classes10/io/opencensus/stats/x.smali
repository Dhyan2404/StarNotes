.class public final Lio/opencensus/stats/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/stats/x$e;,
        Lio/opencensus/stats/x$b;,
        Lio/opencensus/stats/x$d;,
        Lio/opencensus/stats/x$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/opencensus/stats/StatsRecorder;
    .locals 1

    sget-object v0, Lio/opencensus/stats/x$d;->a:Lio/opencensus/stats/StatsRecorder;

    return-object v0
.end method

.method public static b()Lio/opencensus/stats/MeasureMap;
    .locals 2

    new-instance v0, Lio/opencensus/stats/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/stats/x$b;-><init>(Lio/opencensus/stats/x$a;)V

    return-object v0
.end method

.method public static c()Lio/opencensus/stats/StatsComponent;
    .locals 2

    new-instance v0, Lio/opencensus/stats/x$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/stats/x$c;-><init>(Lio/opencensus/stats/x$a;)V

    return-object v0
.end method

.method public static d()Lio/opencensus/stats/ViewManager;
    .locals 2

    new-instance v0, Lio/opencensus/stats/x$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/stats/x$e;-><init>(Lio/opencensus/stats/x$a;)V

    return-object v0
.end method
