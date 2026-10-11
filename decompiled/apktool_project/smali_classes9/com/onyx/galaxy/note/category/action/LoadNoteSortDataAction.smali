.class public final Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadNoteSortDataAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteSortDataAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteSortDataAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1855#2,2:63\n1855#2,2:65\n766#2:67\n857#2,2:68\n766#2:70\n857#2,2:71\n1549#2:73\n1620#2,3:74\n*S KotlinDebug\n*F\n+ 1 LoadNoteSortDataAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteSortDataAction\n*L\n26#1:63,2\n29#1:65,2\n44#1:67\n44#1:68,2\n45#1:70\n45#1:71,2\n60#1:73\n60#1:74,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0002R\u0014\u0010\u0008\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;",
        "provider",
        "n",
        "noteModelBeanList",
        "",
        "o",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "Lcom/onyx/android/sdk/replicator/note/bean/SortData;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/bean/SortData;",
        "sortData",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V",
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
        "SMAP\nLoadNoteSortDataAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteSortDataAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteSortDataAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1855#2,2:63\n1855#2,2:65\n766#2:67\n857#2,2:68\n766#2:70\n857#2,2:71\n1549#2:73\n1620#2,3:74\n*S KotlinDebug\n*F\n+ 1 LoadNoteSortDataAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteSortDataAction\n*L\n26#1:63,2\n29#1:65,2\n44#1:67\n44#1:68,2\n45#1:70\n45#1:71,2\n60#1:73\n60#1:74,3\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/SortData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModelBeanList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->n(Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateOrder(Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->o(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    return-void
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->p(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic m(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->q(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final p(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final q(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createSortProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/db/SortProvider;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->toCBQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/SortProvider;->loadSortList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getContentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setContentId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->getFilterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setFilterId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->getSubFilterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setSubFilterId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result v3

    goto :goto_2

    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    :goto_2
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setOrderIndex(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->setSortModel(Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 7

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result v6

    cmpg-float v4, v6, v4

    if-nez v4, :cond_1

    move v3, v5

    :cond_1
    xor-int/2addr v3, v5

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result v6

    cmpg-float v6, v6, v4

    if-nez v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$updateOrder$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$updateOrder$1;

    new-instance v2, Lcom/sunia/HTREnginev2/zzi;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/zzi;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v1, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$updateOrder$2;->INSTANCE:Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$updateOrder$2;

    new-instance v2, Lcom/sunia/HTREnginev2/a0j;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/a0j;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/utils/OrderListUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OrderListUtils;

    sget-object v0, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$updateOrder$reorderList$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$updateOrder$reorderList$1;

    sget-object v1, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$updateOrder$reorderList$2;->INSTANCE:Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction$updateOrder$reorderList$2;

    invoke-virtual {p1, p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/OrderListUtils;->reorderIndex(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/onyx/galaxy/note/category/action/SaveSortAction;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/action/SaveSortAction;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
