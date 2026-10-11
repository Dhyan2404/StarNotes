.class public final Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008B\u0010CJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\tJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0012J\u0016\u0010\u0016\u001a\u00020\u00002\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0014J\u0014\u0010\u0019\u001a\u00020\u00182\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012J\u0010\u0010\u001b\u001a\u00020\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0000J\u0010\u0010\u001c\u001a\u00020\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0000J\u0008\u0010\u001d\u001a\u00020\tH\u0007R$\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R$\u0010\n\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R$\u0010\u000c\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008)\u0010&\u001a\u0004\u0008*\u0010(R\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R(\u00101\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000e8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R(\u00104\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000e8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00082\u0010.\u001a\u0004\u00083\u00100R\u0011\u00106\u001a\u0002058G\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0011\u00108\u001a\u0002058G\u00a2\u0006\u0006\u001a\u0004\u00088\u00107R\u0011\u00109\u001a\u0002058G\u00a2\u0006\u0006\u001a\u0004\u00089\u00107R\u0011\u0010:\u001a\u0002058G\u00a2\u0006\u0006\u001a\u0004\u0008:\u00107R\u0011\u0010;\u001a\u0002058G\u00a2\u0006\u0006\u001a\u0004\u0008;\u00107R\u0011\u0010<\u001a\u0002058G\u00a2\u0006\u0006\u001a\u0004\u0008<\u00107R\u0011\u0010>\u001a\u00020\u00028G\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010\"R\u0011\u0010A\u001a\u00020\u00058G\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@\u00a8\u0006D"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;",
        "",
        "",
        "status",
        "setStatus",
        "",
        "getError",
        "error",
        "setError",
        "",
        "completed",
        "setCompleted",
        "total",
        "setTotal",
        "Ljava/util/Date;",
        "at",
        "setPullAt",
        "setPushAt",
        "",
        "getErrorTypeList",
        "",
        "errorTypeList",
        "setErrorTypeList",
        "list",
        "",
        "addErrorTypeList",
        "mergeStatus",
        "merge",
        "mergeLatestSyncTime",
        "getLatestSyncTime",
        "<set-?>",
        "a",
        "I",
        "getStatus",
        "()I",
        "b",
        "Ljava/lang/String;",
        "c",
        "J",
        "getCompleted",
        "()J",
        "d",
        "getTotal",
        "e",
        "Ljava/util/List;",
        "f",
        "Ljava/util/Date;",
        "getPullAt",
        "()Ljava/util/Date;",
        "pullAt",
        "g",
        "getPushAt",
        "pushAt",
        "",
        "isSyncing",
        "()Z",
        "isSyncDisabled",
        "isSyncSuccess",
        "isSyncFail",
        "isSyncFinish",
        "isSyncStop",
        "getProgress",
        "progress",
        "getDebugInfoString",
        "()Ljava/lang/String;",
        "debugInfoString",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->a:I

    return-void
.end method


# virtual methods
.method public final addErrorTypeList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->e:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->e:Ljava/util/List;

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->e:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->e:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getCompleted()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->c:J

    return-wide v0
.end method

.method public final getDebugInfoString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KSyncStatus{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/replicator/bean/SyncStatus;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/SyncStatus;

    iget v2, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->a:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/bean/SyncStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', pullTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->f:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->safelyGetTime(Ljava/util/Date;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", pushTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->g:Ljava/util/Date;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->safelyGetTime(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getError()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getErrorTypeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->e:Ljava/util/List;

    return-object p0
.end method

.method public final getLatestSyncTime()J
    .locals 5
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->f:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->g:Ljava/util/Date;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :cond_1
    invoke-static {v3, v4, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getProgress()I
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->c:J

    long-to-float p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    :goto_0
    return p0
.end method

.method public final getPullAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->f:Ljava/util/Date;

    return-object p0
.end method

.method public final getPushAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->g:Ljava/util/Date;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->a:I

    return p0
.end method

.method public final getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->d:J

    return-wide v0
.end method

.method public final isSyncDisabled()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->a:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncFail()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->a:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncFinish()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncFail()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isSyncStop()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->a:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncSuccess()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->a:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncing()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final merge(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->f:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->f:Ljava/util/Date;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setPullAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    :cond_1
    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->g:Ljava/util/Date;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->g:Ljava/util/Date;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setPushAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    :cond_2
    return-void
.end method

.method public final mergeLatestSyncTime(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->f:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Date;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->f:Ljava/util/Date;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->f:Ljava/util/Date;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v1

    :goto_0
    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setPullAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    :cond_2
    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->g:Ljava/util/Date;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/Date;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->g:Ljava/util/Date;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->g:Ljava/util/Date;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :cond_3
    invoke-static {v3, v4, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->setPushAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    :cond_4
    return-void
.end method

.method public final setCompleted(J)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->c:J

    return-object p0
.end method

.method public final setError(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setErrorTypeList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->e:Ljava/util/List;

    return-object p0
.end method

.method public final setPullAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->f:Ljava/util/Date;

    return-object p0
.end method

.method public final setPushAt(Ljava/util/Date;)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->g:Ljava/util/Date;

    return-object p0
.end method

.method public final setStatus(I)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->a:I

    return-object p0
.end method

.method public final setTotal(J)Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->d:J

    return-object p0
.end method
