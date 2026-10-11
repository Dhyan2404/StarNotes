.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;
.super Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "o",
        "m",
        "",
        "msg",
        "",
        "n",
        "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;",
        "f",
        "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;",
        "task",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;",
        "autoBackupTaskProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "i",
        "Z",
        "debugInsertAutoBackup",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Ljava/lang/String; = "InsertAutoBackupTaskAct"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

.field public h:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public final i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->getAutoBackupTaskEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    return-void
.end method

.method public static final synthetic access$insert(Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->o()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAutoBackupTaskProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->g:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    return-void
.end method

.method public static final synthetic access$setNoteProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->h:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->m()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "do not enable backup"

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->n(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->hasStoragePermissionByConfig(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "do not own permission about back up"

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->n(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Z
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getLocalBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getLocalBackup()Z

    move-result v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getCloudBackup()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    if-eqz v2, :cond_2

    return v1

    :cond_2
    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v3
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->i:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "InsertAutoBackupTaskAct"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->dTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o()Z
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "documentId"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getLocalBackup()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "localBackup"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getCloudBackup()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "cloudBackup"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->g:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    const-string v2, "autoBackupTaskProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;->loadAutoBackupTaskList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->h:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v1, :cond_1

    const-string v1, "noteProvider"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->getDocumentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->backupEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert backup task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->g:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;->saveAutoBackupTask(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task is existed or invalided:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
