.class public final Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/util/List<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateMultipleSubTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateMultipleSubTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1855#2,2:85\n1549#2:87\n1620#2,3:88\n1855#2,2:91\n1855#2,2:93\n*S KotlinDebug\n*F\n+ 1 CreateMultipleSubTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction\n*L\n45#1:85,2\n55#1:87\n55#1:88,3\n56#1:91,2\n67#1:93,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B9\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000f\u0012\u0010\u0010\u0018\u001a\u000c\u0012\u0004\u0012\u00020\u00140\u0013j\u0002`\u0015\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0019\u0012\u0006\u0010 \u001a\u00020\u001d\u00a2\u0006\u0004\u0008!\u0010\"J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0016J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0018\u001a\u000c\u0012\u0004\u0012\u00020\u00140\u0013j\u0002`\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "m",
        "tags",
        "",
        "n",
        "",
        "title",
        "l",
        "",
        "g",
        "Ljava/util/List;",
        "tagNames",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "h",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "parentNode",
        "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
        "styleAttr",
        "Lcom/onyx/android/sdk/data/TagCreateFrom;",
        "j",
        "Lcom/onyx/android/sdk/data/TagCreateFrom;",
        "tagCreateFrom",
        "<init>",
        "(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V",
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
        "SMAP\nCreateMultipleSubTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateMultipleSubTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1855#2,2:85\n1549#2:87\n1620#2,3:88\n1855#2,2:91\n1855#2,2:93\n*S KotlinDebug\n*F\n+ 1 CreateMultipleSubTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction\n*L\n45#1:85,2\n55#1:87\n55#1:88,3\n56#1:91,2\n67#1:93,2\n*E\n"
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

.field public final h:Lcom/onyx/android/sdk/base/data/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/data/TagCreateFrom;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/data/TagCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
            "Lcom/onyx/android/sdk/data/TagCreateFrom;",
            ")V"
        }
    .end annotation

    const-string v0, "tagNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "styleAttr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagCreateFrom"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->g:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    .line 7
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->i:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    .line 8
    iput-object p4, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->j:Lcom/onyx/android/sdk/data/TagCreateFrom;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 1
    new-instance p3, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {p3}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    .line 2
    sget-object p5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p6, Lcom/onyx/galaxy/note/R$color;->folder_face_default_color:I

    invoke-virtual {p5, p6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p5

    invoke-virtual {p3, p5}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->setColor(I)V

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    return-void
.end method

.method public static final synthetic access$createMultipleSubTag(Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->m(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$statistics(Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->n(Ljava/util/List;)V

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
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setContent(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setType(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setStatus(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->i:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setStyle(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V

    const/high16 p0, -0x40800000    # -1.0f

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setOrderIndex(F)V

    return-object v0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->g:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->l(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setParentId(Ljava/lang/String;)V

    new-instance v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-direct {v4, v3}, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->createChild(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->reorderTagChildren(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->loadNotSavedList(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    new-instance v5, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-direct {v5, v4}, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->resetRevisionId()V

    goto :goto_2

    :cond_2
    invoke-static {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->saveTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction$createMultipleSubTag$4;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction$createMultipleSubTag$4;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;)V

    invoke-virtual {p1, p0, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->setSaved(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create multiple tag SyncTagModel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final n(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsCreateTagEvent;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->j:Lcom/onyx/android/sdk/data/TagCreateFrom;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/event/StatisticsCreateTagEvent;-><init>(Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
