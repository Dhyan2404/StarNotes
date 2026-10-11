.class public final Lcom/onyx/galaxy/note/category/action/EditListNoteAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0003H\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/EditListNoteAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "result",
        "o",
        "",
        "name",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "model",
        "",
        "m",
        "n",
        "Landroid/content/Context;",
        "g",
        "Landroid/content/Context;",
        "context",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final g:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public static final synthetic access$edit(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getModel$p(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public static final synthetic access$postEvent(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->m(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$showEditDialog(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateFolderCover(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->o(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "just(...)"

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->folder_name_max_input_length:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v2, :cond_1

    const-string v2, "provider"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    new-instance v3, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$edit$hasDuplicatedName$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$edit$hasDuplicatedName$1;-><init>(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;)V

    invoke-static {v2, p1, v3}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->hasDuplicatedName(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edit folder SyncNoteModel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;-><init>(Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$e;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/EditListNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$f;->e:Lcom/onyx/galaxy/note/category/action/EditListNoteAction$f;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsEditNoteNameEvent;

    sget-object v1, Lcom/onyx/android/sdk/data/EditNoteNameFrom;->EDIT_DIALOG:Lcom/onyx/android/sdk/data/EditNoteNameFrom;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/event/StatisticsEditNoteNameEvent;-><init>(Lcom/onyx/android/sdk/data/EditNoteNameFrom;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/OnEditListNoteEvent;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/event/OnEditListNoteEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->g:Landroid/content/Context;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$showEditDialog$1;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$showEditDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$showEditDialog$2;

    invoke-direct {v4, v0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$showEditDialog$2;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public final o(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$g;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction$g;-><init>(Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
