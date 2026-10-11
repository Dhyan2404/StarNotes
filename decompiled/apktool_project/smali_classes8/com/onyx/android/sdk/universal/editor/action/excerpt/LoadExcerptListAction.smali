.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadExcerptListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadExcerptListAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n766#2:66\n857#2,2:67\n1855#2,2:69\n766#2:71\n857#2,2:72\n1855#2,2:74\n1855#2,2:76\n2634#2:78\n1#3:79\n*S KotlinDebug\n*F\n+ 1 LoadExcerptListAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction\n*L\n43#1:66\n43#1:67,2\n47#1:69,2\n50#1:71\n50#1:72,2\n51#1:74,2\n52#1:76,2\n62#1:78\n62#1:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J$\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0017\u0010\u000f\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "data",
        "n",
        "",
        "h",
        "Ljava/lang/String;",
        "getKeyword",
        "()Ljava/lang/String;",
        "keyword",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nLoadExcerptListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadExcerptListAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n766#2:66\n857#2,2:67\n1855#2,2:69\n766#2:71\n857#2,2:72\n1855#2,2:74\n1855#2,2:76\n2634#2:78\n1#3:79\n*S KotlinDebug\n*F\n+ 1 LoadExcerptListAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction\n*L\n43#1:66\n43#1:67,2\n47#1:69,2\n50#1:71\n50#1:72,2\n51#1:74,2\n52#1:76,2\n62#1:78\n62#1:79\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$sortData(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;->n(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;->m(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;Ljava/util/List;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;Ljava/util/List;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction$create$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction$create$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction$create$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/xzi;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/xzi;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    move-object p0, p2

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getOrderIndex()F

    move-result v6

    cmpl-float v6, v6, v3

    if-gez v6, :cond_2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getOrderIndex()F

    move-result v6

    cmpg-float v3, v6, v3

    if-gez v3, :cond_3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getPageIndex()I

    move-result v3

    if-gez v3, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    move-object p0, p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setPageIndex(I)V

    goto :goto_1

    :cond_5
    return-object p2

    :cond_6
    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getOrderIndex()F

    move-result v7

    cmpg-float v7, v7, v3

    if-gez v7, :cond_8

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getPageIndex()I

    move-result v6

    if-ltz v6, :cond_8

    move v6, v4

    goto :goto_3

    :cond_8
    move v6, v2

    :goto_3
    if-eqz v6, :cond_7

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setPageIndex(I)V

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_6
    const/4 v1, -0x1

    if-ge v1, v0, :cond_c

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getPageIndex()I

    move-result v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getPageIndex()I

    move-result v3

    if-gt v1, v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_c
    move v0, v2

    :goto_7
    invoke-interface {p0, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_d
    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->resetOrderIndex()V

    goto :goto_8

    :cond_e
    return-object p0
.end method
