.class public final Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadPageModelsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1549#2:104\n1620#2,3:105\n1655#2,8:108\n1549#2:116\n1620#2,2:117\n1622#2:120\n1#3:119\n*S KotlinDebug\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction\n*L\n78#1:104\n78#1:105,3\n79#1:108,8\n87#1:116\n87#1:117,2\n87#1:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J.\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00042\u0016\u0010\u000b\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\n0\u00042\u0006\u0010\u000c\u001a\u00020\u0006H\u0002J\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0002H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "l",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "rootTag",
        "queryArgs",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
        "pageTagModels",
        "n",
        "",
        "g",
        "Ljava/lang/String;",
        "tagId",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "h",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "selectType",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "<init>",
        "(Ljava/lang/String;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V",
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
        "SMAP\nLoadPageModelsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1549#2:104\n1620#2,3:105\n1655#2,8:108\n1549#2:116\n1620#2,2:117\n1622#2:120\n1#3:119\n*S KotlinDebug\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction\n*L\n78#1:104\n78#1:105,3\n79#1:108,8\n87#1:116\n87#1:117,2\n87#1:120\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/galaxy/note/category/data/NoteSelectType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/category/data/NoteSelectType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->h:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    return-void
.end method

.method public static final synthetic access$generatePageModelArgs(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generatePageModelBeans(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectType$p(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;)Lcom/onyx/galaxy/note/category/data/NoteSelectType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->h:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    return-object p0
.end method

.method public static final synthetic access$getTagId$p(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setNoteProvider$p(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->createEnabledPageTagQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/couchbase/lite/Ordering;

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v4, "pageIndex"

    invoke-virtual {v3, v4, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->g:Ljava/lang/String;

    const-string v2, "tag_root_id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->m(Lio/reactivex/rxjava3/core/Observable;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lio/reactivex/rxjava3/core/Observable;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;>;",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$e;

    invoke-direct {v0, p0, p2}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getCommonNoteArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v3, "uniqueId"

    invoke-virtual {p1, v3, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    const/4 p1, 0x0

    if-nez p0, :cond_4

    const-string p0, "noteProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p1

    :cond_4
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    invoke-direct {v3, v2}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)V

    move-object v4, p0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_6
    move-object v5, p1

    :goto_3
    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->setDocCreateAt(J)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->setDocUpdatedAt(J)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, ""

    :cond_7
    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->setDocName(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->setScene(I)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->setHasEncryption(Z)V

    :cond_8
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    return-object v0
.end method
