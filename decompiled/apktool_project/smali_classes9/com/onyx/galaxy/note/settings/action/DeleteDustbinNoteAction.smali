.class public final Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteDustbinNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n37#2,2:117\n1549#3:119\n1620#3,3:120\n1855#3,2:123\n*S KotlinDebug\n*F\n+ 1 DeleteDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction\n*L\n109#1:117,2\n113#1:119\n113#1:120,3\n114#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0008\u0010\u000b\u001a\u00020\u0005H\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "p",
        "q",
        "l",
        "m",
        "n",
        "o",
        "Landroid/content/Context;",
        "g",
        "Landroid/content/Context;",
        "context",
        "",
        "",
        "h",
        "Ljava/util/List;",
        "noteIds",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;",
        "sortProvider",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "note_overseasRelease"
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
        "SMAP\nDeleteDustbinNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n37#2,2:117\n1549#3:119\n1620#3,3:120\n1855#3,2:123\n*S KotlinDebug\n*F\n+ 1 DeleteDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction\n*L\n109#1:117,2\n113#1:119\n113#1:120,3\n114#1:123,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public j:Lcom/onyx/android/sdk/replicator/note/db/SortProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$forceDeleteNote(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->l()V

    return-void
.end method

.method public static final synthetic access$forceDeletePageModel(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->m()V

    return-void
.end method

.method public static final synthetic access$forceDeleteSort(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->n()V

    return-void
.end method

.method public static final synthetic access$logInfo(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->o()V

    return-void
.end method

.method public static final synthetic access$postEvent(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->p()V

    return-void
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$setSortProvider$p(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->j:Lcom/onyx/android/sdk/replicator/note/db/SortProvider;

    return-void
.end method

.method public static final synthetic access$showDeleteConfirmDialog(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->q()Lio/reactivex/rxjava3/core/Observable;

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

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$b;-><init>(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$c;-><init>(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$d;-><init>(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$e;-><init>(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$f;->e:Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$f;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$g;-><init>(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$h;-><init>(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$i;-><init>(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$j;-><init>(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$a;-><init>(Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->forceDeleteNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    new-instance v1, Lcom/onyx/android/sdk/replicator/event/SyncForceDeletedNoteTreeEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->h:Ljava/util/List;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/event/SyncForceDeletedNoteTreeEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->post(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/account/event/NoteCountChanged;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/NoteCountChanged;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->h:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->purgeDocPageTag(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->h:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    const-string v3, "contentId"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->j:Lcom/onyx/android/sdk/replicator/note/db/SortProvider;

    if-nez p0, :cond_1

    const-string p0, "sortProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/SortProvider;->deleteSortList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    return-void
.end method

.method public final o()V
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->h:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    const-string v3, "uniqueId"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/couchbase/lite/SelectResult;

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v2

    const-string v3, "property(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "title"

    invoke-static {v2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-array v2, v4, [Lcom/couchbase/lite/SelectResult;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/couchbase/lite/SelectResult;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setSelectResults([Lcom/couchbase/lite/SelectResult;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_0

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    sget-object v2, Lcom/onyx/galaxy/note/utils/LogcatGenerator;->INSTANCE:Lcom/onyx/galaxy/note/utils/LogcatGenerator;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/utils/LogcatGenerator;->generateDeletedNoteLog(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/galaxy/note/settings/event/DeleteDustbinNoteEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->h:Ljava/util/List;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/event/DeleteDustbinNoteEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsNoteDustbinEvent;

    sget-object v1, Lcom/onyx/android/sdk/data/NoteDustbinFuncType;->DELETE:Lcom/onyx/android/sdk/data/NoteDustbinFuncType;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/event/StatisticsNoteDustbinEvent;-><init>(Lcom/onyx/android/sdk/data/NoteDustbinFuncType;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;->g:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->force_delete_note_tips:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$showDeleteConfirmDialog$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$showDeleteConfirmDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$showDeleteConfirmDialog$2;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$showDeleteConfirmDialog$2;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$showDeleteConfirmDialog$3;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction$showDeleteConfirmDialog$3;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setDismissCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-object v0
.end method
