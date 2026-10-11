.class public final Lcom/onyx/galaxy/note/category/action/DeleteSortAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/galaxy/note/category/action/DeleteSortAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/DeleteSortAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;",
        "provider",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/bean/SortData;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/bean/SortData;",
        "sortData",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V",
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
.field public final g:Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/SortData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sortData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/DeleteSortAction;->g:Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    return-void
.end method

.method public static final synthetic access$delete(Lcom/onyx/galaxy/note/category/action/DeleteSortAction;Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)Lcom/onyx/galaxy/note/category/action/DeleteSortAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/DeleteSortAction;->l(Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)Lcom/onyx/galaxy/note/category/action/DeleteSortAction;

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
            "Lcom/onyx/galaxy/note/category/action/DeleteSortAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createSortProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/DeleteSortAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteSortAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteSortAction;)V

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

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)Lcom/onyx/galaxy/note/category/action/DeleteSortAction;
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteSortAction;->g:Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteSortAction;->g:Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->toCBQueryArgsWithContentIds()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/SortProvider;->deleteSortList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    return-object p0
.end method
