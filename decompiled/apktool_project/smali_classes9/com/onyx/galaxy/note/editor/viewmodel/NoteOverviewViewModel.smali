.class public final Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteOverviewViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n288#2,2:106\n1#3:108\n*S KotlinDebug\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel\n*L\n63#1:106,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008-\u0010.J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r2\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0002R#\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u000e0\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR#\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001b\u001a\u0004\u0008 \u0010\u001dR\"\u0010(\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "isSearchMode",
        "",
        "key",
        "",
        "loadNoteData",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "loadNoteTabData",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "currentTab",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "loadNoteTabList",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "item",
        "isNoteReLocked",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "noteSelectType",
        "Lcom/onyx/android/sdk/replicator/note/bean/SortData;",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "getNoteListData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "noteListData",
        "j",
        "getNoteTabListData",
        "noteTabListData",
        "k",
        "Ljava/lang/String;",
        "getSearchKey",
        "()Ljava/lang/String;",
        "setSearchKey",
        "(Ljava/lang/String;)V",
        "searchKey",
        "Lcom/onyx/galaxy/note/utils/NoteSortHelper;",
        "l",
        "Lcom/onyx/galaxy/note/utils/NoteSortHelper;",
        "sortHelper",
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
        "SMAP\nNoteOverviewViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n288#2,2:106\n1#3:108\n*S KotlinDebug\n*F\n+ 1 NoteOverviewViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel\n*L\n63#1:106,2\n*E\n"
    }
.end annotation


# instance fields
.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/galaxy/note/utils/NoteSortHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->k:Ljava/lang/String;

    new-instance v1, Lcom/onyx/galaxy/note/utils/NoteSortHelper;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->l:Lcom/onyx/galaxy/note/utils/NoteSortHelper;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->loadNoteData(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getSortHelper$p(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;)Lcom/onyx/galaxy/note/utils/NoteSortHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->l:Lcom/onyx/galaxy/note/utils/NoteSortHelper;

    return-object p0
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;Lcom/onyx/galaxy/note/category/data/NoteSelectType;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->d(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loadNoteData$default(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->loadNoteData(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->l:Lcom/onyx/galaxy/note/utils/NoteSortHelper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setFilterId(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setSubFilterId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getNoteListData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getNoteTabListData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSearchKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final isNoteReLocked(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->checkEnableAutoReLock()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->isNoteReLocked(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;->getEncrypted()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->hasAutoReLockNoteTask(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public final isSearchMode()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final loadNoteData(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->k:Ljava/lang/String;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->clone()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const-string v3, "title"

    invoke-virtual {v1, v3, p1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->likeExpression(Ljava/lang/String;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    :cond_0
    new-instance p1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->d(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a;->e:Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$b;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$c;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadNoteTabData(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    :cond_2
    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$d;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_4
    :goto_0
    return-void
.end method

.method public final loadNoteTabList(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "currentTab"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$e;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel$e;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public final setSearchKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->k:Ljava/lang/String;

    return-void
.end method
