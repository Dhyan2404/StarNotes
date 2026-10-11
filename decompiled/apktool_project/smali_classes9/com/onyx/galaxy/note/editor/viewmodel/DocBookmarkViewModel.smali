.class public final Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;
.super Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0004\u001a\u00020\u0002J\u001e\u0010\n\u001a\u00020\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002R#\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;",
        "Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;",
        "",
        "loadData",
        "loadBookmarkData",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
        "list",
        "",
        "keyword",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "l",
        "Landroidx/lifecycle/MutableLiveData;",
        "getBookmarkData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "bookmarkData",
        "",
        "m",
        "I",
        "getLastPageCount",
        "()I",
        "setLastPageCount",
        "(I)V",
        "lastPageCount",
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


# instance fields
.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$updateMatchingCount(Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;->d(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->getMatchingData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getBookmarkData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getLastPageCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;->m:I

    return p0
.end method

.method public final loadBookmarkData()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;->m:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->getSearchKey()Landroidx/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bookmark/LoadBookmarkListAction;

    invoke-direct {v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/bookmark/LoadBookmarkListAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel$a;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->ioSequenceScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel$b;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public loadData()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;->loadBookmarkData()V

    return-void
.end method

.method public final setLastPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;->m:I

    return-void
.end method
