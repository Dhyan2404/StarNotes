.class public final Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4ReplicatorStatus$ActivityLevel;
    }
.end annotation


# instance fields
.field private final activityLevel:I

.field private final errorCode:I

.field private final errorDomain:I

.field private final errorInternalInfo:I

.field private final progressDocumentCount:J

.field private final progressUnitsCompleted:J

.field private final progressUnitsTotal:J


# direct methods
.method public constructor <init>(III)V
    .locals 11

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v8, p2

    move v9, p3

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;-><init>(IJJJIII)V

    return-void
.end method

.method public constructor <init>(IJJJIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->activityLevel:I

    .line 4
    iput-wide p2, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressUnitsCompleted:J

    .line 5
    iput-wide p4, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressUnitsTotal:J

    .line 6
    iput-wide p6, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressDocumentCount:J

    .line 7
    iput p8, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorDomain:I

    .line 8
    iput p9, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorCode:I

    .line 9
    iput p10, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorInternalInfo:I

    if-ltz p1, :cond_0

    const/4 p0, 0x4

    if-le p1, p0, :cond_1

    .line 10
    :cond_0
    sget-object p0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized activity level: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 11
    .param p1    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    iget v1, p1, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->activityLevel:I

    iget-wide v2, p1, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressUnitsCompleted:J

    iget-wide v4, p1, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressUnitsTotal:J

    iget-wide v6, p1, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressDocumentCount:J

    iget v8, p1, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorDomain:I

    iget v9, p1, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorCode:I

    iget v10, p1, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorInternalInfo:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;-><init>(IJJJIII)V

    return-void
.end method


# virtual methods
.method public getActivityLevel()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->activityLevel:I

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorCode:I

    return p0
.end method

.method public getErrorDomain()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorDomain:I

    return p0
.end method

.method public getErrorInternalInfo()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorInternalInfo:I

    return p0
.end method

.method public getProgressDocumentCount()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressDocumentCount:J

    return-wide v0
.end method

.method public getProgressUnitsCompleted()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressUnitsCompleted:J

    return-wide v0
.end method

.method public getProgressUnitsTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressUnitsTotal:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4ReplicatorStatus{level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->activityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressUnitsCompleted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressUnitsTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",#docs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->progressDocumentCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->errorInternalInfo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
