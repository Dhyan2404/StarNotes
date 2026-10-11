.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;
.super Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExecuteAutoBackupTaskAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExecuteAutoBackupTaskAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n72#2,2:217\n1#3:219\n*S KotlinDebug\n*F\n+ 1 ExecuteAutoBackupTaskAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction\n*L\n121#1:217,2\n121#1:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 /2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001/B\u0007\u00a2\u0006\u0004\u0008-\u0010.J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0010\u001a\u00020\u0006H\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\u0012H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\u0019\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002R \u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR \u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001f0\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001dR\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010,\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "t",
        "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;",
        "task",
        "o",
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;",
        "result",
        "",
        "A",
        "r",
        "s",
        "C",
        "z",
        "y",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "x",
        "w",
        "p",
        "B",
        "",
        "msg",
        "q",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "f",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "retryTaskDelayMap",
        "",
        "g",
        "retryTaskTimesMap",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;",
        "autoBackupTaskProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "j",
        "Z",
        "debugExecuteAutoBackup",
        "<init>",
        "()V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExecuteAutoBackupTaskAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExecuteAutoBackupTaskAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n72#2,2:217\n1#3:219\n*S KotlinDebug\n*F\n+ 1 ExecuteAutoBackupTaskAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction\n*L\n121#1:217,2\n121#1:219\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Ljava/lang/String; = "ExecuteAutoBackupTaskAction"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:J = 0x1d4c0L


# instance fields
.field public final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

.field public i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public final j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->getAutoBackupTaskEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$autoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->o(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$delayTask(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->r(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    return-void
.end method

.method public static final synthetic access$executeTasks(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTask(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->z()Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleTaskByBackupResult(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->A(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;)V

    return-void
.end method

.method public static final synthetic access$setAutoBackupTaskProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    return-void
.end method

.method public static final synthetic access$setNoteProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->v(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->u(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)Z

    move-result p0

    return p0
.end method

.method public static final u(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->z()Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->backupEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final v(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executeTasks() done"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getLocalBackup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->getLocalBackupResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->setLocalBackup(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getCloudBackup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->getCloudBackupResult()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->setCloudBackup(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->backupEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->s(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "backup succeed delete validTask:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    if-nez p2, :cond_3

    const-string p2, "autoBackupTaskProvider"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_3
    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;->saveAutoBackupTask(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->r(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    :goto_0
    return-void
.end method

.method public final B(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)Z
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTaskTimeout() do not contain task:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v4, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HH_MM_SS()Ljava/text/SimpleDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HH_MM_SS()Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTaskTimeout timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";cur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";delay:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";task:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    return v1
.end method

.method public final C(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->backupEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_1

    const-string p0, "noteProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "just(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "do not enable backup"

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->hasStoragePermissionByConfig(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "do not own permission about back up"

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$f;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$i;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$i;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->C(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete invalid Task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->s(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getLocalBackup()Z

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getCloudBackup()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;-><init>(Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->getAutoBackupTaskEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getLocalBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

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

.method public final q(Ljava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->j:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "ExecuteAutoBackupTaskAction"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->dTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->setError(Z)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v3

    :cond_1
    :goto_0
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HH_MM_SS()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HH_MM_SS()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delayTask documentId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";delayDate:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";delayTimes:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    if-nez p0, :cond_2

    const-string p0, "autoBackupTaskProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;->saveAutoBackupTask(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    return-void
.end method

.method public final s(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HH_MM_SS()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTask documentId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";delayDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";delayTimes:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    if-nez p0, :cond_1

    const-string p0, "autoBackupTaskProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;->deleteAutoBackupTask(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    return-void
.end method

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/nyf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nyf;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/oyf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/oyf;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 4

    new-instance p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "error"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    new-array v2, v0, [Lcom/couchbase/lite/Ordering;

    const-string v3, "updatedAt"

    invoke-virtual {v1, v3, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method

.method public final x()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 4

    new-instance p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "error"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    new-array v2, v0, [Lcom/couchbase/lite/Ordering;

    const-string v3, "createdAt"

    invoke-virtual {v1, v3, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method

.method public final y()Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    const-string v1, "autoBackupTaskProvider"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->w()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;->loadAutoBackupTaskList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->B(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;->saveAutoBackupTask(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    return-object v2

    :cond_3
    return-object v0
.end method

.method public final z()Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    if-nez v0, :cond_0

    const-string v0, "autoBackupTaskProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->x()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;->loadAutoBackupTaskList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->y()Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;-><init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTask():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->q(Ljava/lang/String;)V

    return-object v0
.end method
