.class public final Lio/opencensus/stats/x$c;
.super Lio/opencensus/stats/StatsComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/stats/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field public final a:Lio/opencensus/stats/ViewManager;

.field public volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/opencensus/stats/StatsComponent;-><init>()V

    .line 2
    invoke-static {}, Lio/opencensus/stats/x;->d()Lio/opencensus/stats/ViewManager;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/stats/x$c;->a:Lio/opencensus/stats/ViewManager;

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/stats/x$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/opencensus/stats/x$c;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()Lio/opencensus/stats/StatsCollectionState;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/opencensus/stats/x$c;->b:Z

    sget-object p0, Lio/opencensus/stats/StatsCollectionState;->DISABLED:Lio/opencensus/stats/StatsCollectionState;

    return-object p0
.end method

.method public getStatsRecorder()Lio/opencensus/stats/StatsRecorder;
    .locals 0

    invoke-static {}, Lio/opencensus/stats/x;->a()Lio/opencensus/stats/StatsRecorder;

    move-result-object p0

    return-object p0
.end method

.method public getViewManager()Lio/opencensus/stats/ViewManager;
    .locals 0

    iget-object p0, p0, Lio/opencensus/stats/x$c;->a:Lio/opencensus/stats/ViewManager;

    return-object p0
.end method

.method public setState(Lio/opencensus/stats/StatsCollectionState;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Lio/opencensus/stats/x$c;->b:Z

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "State was already read, cannot set state."

    invoke-static {p0, p1}, Lio/opencensus/internal/Utils;->checkState(ZLjava/lang/Object;)V

    return-void
.end method
