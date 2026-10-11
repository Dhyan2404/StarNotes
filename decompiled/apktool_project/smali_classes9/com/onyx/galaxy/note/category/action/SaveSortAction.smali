.class public final Lcom/onyx/galaxy/note/category/action/SaveSortAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/galaxy/note/category/action/SaveSortAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveSortAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveSortAction.kt\ncom/onyx/galaxy/note/category/action/SaveSortAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1855#2,2:30\n*S KotlinDebug\n*F\n+ 1 SaveSortAction.kt\ncom/onyx/galaxy/note/category/action/SaveSortAction\n*L\n24#1:30,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/SaveSortAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;",
        "provider",
        "l",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;",
        "g",
        "Ljava/util/List;",
        "sortModels",
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
        "SMAP\nSaveSortAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveSortAction.kt\ncom/onyx/galaxy/note/category/action/SaveSortAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1855#2,2:30\n*S KotlinDebug\n*F\n+ 1 SaveSortAction.kt\ncom/onyx/galaxy/note/category/action/SaveSortAction\n*L\n24#1:30,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
            "Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sortModels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/SaveSortAction;->g:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$save(Lcom/onyx/galaxy/note/category/action/SaveSortAction;Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)Lcom/onyx/galaxy/note/category/action/SaveSortAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/SaveSortAction;->l(Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)Lcom/onyx/galaxy/note/category/action/SaveSortAction;

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
            "Lcom/onyx/galaxy/note/category/action/SaveSortAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createSortProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SaveSortAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/SaveSortAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/SaveSortAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)Lcom/onyx/galaxy/note/category/action/SaveSortAction;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/SaveSortAction;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/SaveSortAction;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/SaveSortAction;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/SortProvider;->saveSortList(Ljava/util/List;)V

    return-object p0
.end method
