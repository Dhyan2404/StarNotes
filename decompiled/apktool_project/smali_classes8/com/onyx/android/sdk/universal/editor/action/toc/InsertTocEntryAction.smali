.class public final Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInsertTocEntryAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertTocEntryAction.kt\ncom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 InsertTocEntryAction.kt\ncom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction\n*L\n57#1:69,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "tocEntry",
        "",
        "i",
        "I",
        "insertIndex",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V",
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
        "SMAP\nInsertTocEntryAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertTocEntryAction.kt\ncom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 InsertTocEntryAction.kt\ncom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction\n*L\n57#1:69,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tocEntry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    return-void
.end method

.method public static final synthetic access$getInsertIndex$p(Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->i:I

    return p0
.end method

.method public static final synthetic access$getTocEntry$p(Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    return-object p0
.end method

.method public static final synthetic access$insert(Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->m()Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->n(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final n(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
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

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Z
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getParentId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v3, "parentId"

    if-eqz v1, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nullOrEmpty(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    :goto_2
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v3, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->loadTocEntries(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->beforeSave()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setPageIndex(I)V

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->sortVirtualTocModelListToNatural(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$insert$2$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$insert$2$1;

    new-instance v4, Lcom/sunia/HTREnginev2/imi;

    invoke-direct {v4, v3}, Lcom/sunia/HTREnginev2/imi;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->h:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->i:I

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;->reorderIndex(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->updateTocEntry(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
