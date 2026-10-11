.class public final Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;
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
    value = "SMAP\nCheckOnyxNoteRecordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1549#2:82\n1620#2,3:83\n1549#2:86\n1620#2,3:87\n*S KotlinDebug\n*F\n+ 1 CheckOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction\n*L\n52#1:82\n52#1:83,3\n77#1:86\n77#1:87,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000cR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "m",
        "n",
        "",
        "",
        "g",
        "Ljava/util/List;",
        "uploadedRecordIds",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "h",
        "noteModels",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "j",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "onyxStatisticProvider",
        "<init>",
        "()V",
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
        "SMAP\nCheckOnyxNoteRecordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1549#2:82\n1620#2,3:83\n1549#2:86\n1620#2,3:87\n*S KotlinDebug\n*F\n+ 1 CheckOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction\n*L\n52#1:82\n52#1:83,3\n77#1:86\n77#1:87,3\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/List;
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

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public j:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getUploadedRecordIds(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->l()V

    return-void
.end method

.method public static final synthetic access$loadNoteModel(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->m()V

    return-void
.end method

.method public static final synthetic access$save(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->n()V

    return-void
.end method

.method public static final synthetic access$setNoteProvider$p(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$setOnyxStatisticProvider$p(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->j:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
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

    new-instance v1, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$a;-><init>(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$b;->e:Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$b;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$c;-><init>(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$d;-><init>(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$e;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$e;-><init>(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$f;-><init>(Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$g;->e:Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction$g;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "isUploaded"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->j:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez v1, :cond_0

    const-string v1, "onyxStatisticProvider"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1, v0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteRecordProviderKt;->loadOnyxNoteRecordList(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/OnyxNoteRecordModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->g:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final m()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/couchbase/lite/SelectResult;

    const-string v1, "uniqueId"

    invoke-static {v1}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v2

    const-string v3, "property(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-string v2, "notePointSize"

    invoke-static {v2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->g:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object v4, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->g:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v1, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notInExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    :cond_0
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setSelectResults([Lcom/couchbase/lite/SelectResult;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->h:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_1

    const-string p0, "noteProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-static {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    new-instance v3, Lcom/onyx/android/sdk/data/OnyxNoteRecordModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/onyx/android/sdk/data/OnyxNoteRecordModel;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;->j:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez p0, :cond_2

    const-string p0, "onyxStatisticProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_2
    invoke-static {p0, v1}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteRecordProviderKt;->saveOnyxNoteRecordList(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Ljava/util/List;)V

    return-void
.end method
