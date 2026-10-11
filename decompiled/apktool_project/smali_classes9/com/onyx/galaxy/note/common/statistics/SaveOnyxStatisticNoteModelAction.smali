.class public final Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;
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
    value = "SMAP\nSaveOnyxStatisticNoteModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveOnyxStatisticNoteModelAction.kt\ncom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,70:1\n1855#2,2:71\n37#3,2:73\n*S KotlinDebug\n*F\n+ 1 SaveOnyxStatisticNoteModelAction.kt\ncom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction\n*L\n46#1:71,2\n65#1:73,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0005\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005H\u0002R\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
        "newOnyxNoteModels",
        "",
        "n",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModels",
        "",
        "l",
        "m",
        "",
        "g",
        "Ljava/util/List;",
        "noteIds",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "<init>",
        "(Ljava/util/List;)V",
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
        "SMAP\nSaveOnyxStatisticNoteModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveOnyxStatisticNoteModelAction.kt\ncom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,70:1\n1855#2,2:71\n37#3,2:73\n*S KotlinDebug\n*F\n+ 1 SaveOnyxStatisticNoteModelAction.kt\ncom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction\n*L\n46#1:71,2\n65#1:73,2\n*E\n"
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

.field public h:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "noteIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;->g:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$generateOnyxNoteModels(Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadSyncNoteModels(Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;->m()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$save(Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;->n(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;->h:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$a;-><init>(Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$b;-><init>(Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$c;-><init>(Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->getOnyxStatisticScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$d;-><init>(Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$e;->e:Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction$e;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "filter the SyncNoteModel which uniqueId is empty."

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isForceDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Lcom/onyx/android/sdk/data/OnyxNoteModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNotePointSize()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/onyx/android/sdk/data/OnyxNoteModel;-><init>(Ljava/lang/String;JI)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final m()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;->g:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    const-string v3, "uniqueId"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v1, v5, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/couchbase/lite/SelectResult;

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v3

    const-string v4, "property(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const-string v3, "status"

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const-string v2, "notePointSize"

    invoke-static {v2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-array v2, v5, [Lcom/couchbase/lite/SelectResult;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/couchbase/lite/SelectResult;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setSelectResults([Lcom/couchbase/lite/SelectResult;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;->h:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_0

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->getOnyxStatisticProvider()Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt;->saveOnyxNoteList(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Ljava/util/List;)V

    return-void
.end method
