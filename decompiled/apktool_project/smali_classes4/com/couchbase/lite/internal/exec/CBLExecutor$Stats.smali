.class public Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/exec/CBLExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public final completedTasks:J

.field public final corePoolSize:I

.field public final isShutdown:Z

.field public final isTerminated:Z

.field public final isTerminating:Z

.field public final largestPoolSize:I

.field public final maxPoolSize:I

.field public final poolSize:I

.field public final qCurSize:I

.field public final qMaxSize:I

.field public final qMeanSize:F

.field public final qSizeSD:D

.field public final totalTasks:J


# direct methods
.method public constructor <init>(ZZZJJIIIIIIFD)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput-boolean v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->isShutdown:Z

    move v1, p2

    iput-boolean v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->isTerminating:Z

    move v1, p3

    iput-boolean v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->isTerminated:Z

    move-wide v1, p4

    iput-wide v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->totalTasks:J

    move-wide v1, p6

    iput-wide v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->completedTasks:J

    move v1, p8

    iput v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->poolSize:I

    move v1, p9

    iput v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->corePoolSize:I

    move v1, p10

    iput v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->largestPoolSize:I

    move v1, p11

    iput v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->maxPoolSize:I

    move v1, p12

    iput v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->qCurSize:I

    move/from16 v1, p13

    iput v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->qMaxSize:I

    move/from16 v1, p14

    iput v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->qMeanSize:F

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->qSizeSD:D

    return-void
.end method
