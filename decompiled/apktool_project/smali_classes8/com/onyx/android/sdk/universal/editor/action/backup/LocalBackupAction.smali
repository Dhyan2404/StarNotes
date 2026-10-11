.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;
.super Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001a\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
        "list",
        "s",
        "",
        "u",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "t",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "g",
        "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "backupContext",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    return-void
.end method

.method public static final synthetic access$exportToNoteFile(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->s(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBackupContext$p(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$loadNotes(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->t(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->p(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->r(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->q(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->u()V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getBackupFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static final r(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/LocalBackupCompleteEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/LocalBackupCompleteEvent;-><init>(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupIoObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getNoteObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getNoteObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getNoteObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/f0j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f0j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/g0j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g0j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/h0j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h0j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getBackupFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getExportAllFolder()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->setExportAllFolder(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getExportAllTag()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->setExportAllTag(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getExportFont()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->setExportFont(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getNoteQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->clone()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getUpdateLastTime()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HHMMSS()Ljava/text/SimpleDateFormat;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getLocalBackupLastTime()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
