.class public final Lcom/onyx/android/sdk/replicator/bean/TaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/bean/TaskManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u001b\u0018\u0000 82\u00020\u0001:\u00018B\u0007\u00a2\u0006\u0004\u00086\u00107J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0008J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J*\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00182\u0018\u0010\u001c\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u001b0\u001aH\u0002R\"\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00160\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001fR\u0011\u0010#\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0011\u0010%\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\"R\u0011\u0010\'\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\"R\u0011\u0010)\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\"R\u0011\u0010+\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\"R\u0017\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0011\u0010/\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0011\u00101\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u00081\u00100R\u0011\u00102\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u00082\u00100R\u0011\u00103\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u00083\u00100R\u0014\u00105\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u0010\"\u00a8\u00069"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/TaskManager;",
        "",
        "",
        "key",
        "",
        "containsTask",
        "Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;",
        "bean",
        "",
        "startPush",
        "startPull",
        "printPrefix",
        "printTaskResult",
        "placeTaskHolder",
        "onTaskSuccess",
        "isTaskSyncingOrFinished",
        "isTaskSyncFinished",
        "isTaskSyncSuccess",
        "",
        "errorType",
        "onTaskFail",
        "close",
        "Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;",
        "b",
        "Ljava/lang/StringBuilder;",
        "log",
        "",
        "",
        "pullTaskMap",
        "a",
        "",
        "Ljava/util/Map;",
        "ossTaskMap",
        "getSyncSuccessTaskCount",
        "()I",
        "syncSuccessTaskCount",
        "getPushSuccessTaskCount",
        "pushSuccessTaskCount",
        "getPullSuccessTaskCount",
        "pullSuccessTaskCount",
        "getSyncFinishTaskCount",
        "syncFinishTaskCount",
        "getTotalTaskCount",
        "totalTaskCount",
        "getErrorTypes",
        "()Ljava/util/List;",
        "errorTypes",
        "isAllTaskFinished",
        "()Z",
        "isAllTaskSuccess",
        "isPushTaskSuccess",
        "isSyncTaskOutOfLimit",
        "c",
        "syncingTaskCount",
        "<init>",
        "()V",
        "Companion",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/bean/TaskManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I = 0x4

.field public static c:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/TaskManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->Companion:Lcom/onyx/android/sdk/replicator/bean/TaskManager$Companion;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getTaskFinishCount$cp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$setTaskFinishCount$cp(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-gtz v1, :cond_2

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "record: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v1, :cond_3

    const-string p2, "\uff0cs:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    if-lez v2, :cond_4

    const-string p2, "\uff0cf:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->getSyncRecordType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->setSyncRecordType(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    return-object v0
.end method

.method public final c()I
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSyncing()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->cancelTask()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final containsTask(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getErrorTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->getErrorType()I

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSyncError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getPullSuccessTaskCount()I
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isPullType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getPushSuccessTaskCount()I
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isPushType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getSyncFinishTaskCount()I
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getSyncSuccessTaskCount()I
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getTotalTaskCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public final isAllTaskFinished()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->getSyncFinishTaskCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->getTotalTaskCount()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAllTaskSuccess()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->getSyncSuccessTaskCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->getTotalTaskCount()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPushTaskSuccess()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isPushType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isSyncTaskOutOfLimit()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->c()I

    move-result p0

    const/4 v0, 0x4

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTaskSyncFinished(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTaskSyncSuccess(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTaskSyncingOrFinished(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSyncingOrFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onTaskFail(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->syncError(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    :cond_0
    return-void
.end method

.method public final onTaskSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->syncSuccess()Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    :cond_0
    return-void
.end method

.method public final placeTaskHolder(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->containsTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final printTaskResult(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "printPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isPullType()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->getSyncRecordType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->getSyncRecordType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ",  pull: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v0}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    :cond_2
    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ",  push: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class p1, Lcom/onyx/android/sdk/replicator/bean/TaskManager;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final startPull(Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->b(Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->getTaskDisposable()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->setTaskDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->startPull()Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    return-void
.end method

.method public final startPush(Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/TaskManager;->b(Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->getTaskDisposable()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->setTaskDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->startPush()Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    return-void
.end method
