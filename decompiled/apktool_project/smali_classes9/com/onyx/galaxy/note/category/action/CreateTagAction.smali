.class public final Lcom/onyx/galaxy/note/category/action/CreateTagAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateTagAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1#2:79\n1855#3,2:80\n1549#3:82\n1620#3,3:83\n*S KotlinDebug\n*F\n+ 1 CreateTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateTagAction\n*L\n67#1:80,2\n71#1:82\n71#1:83,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B3\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0010\u0010\u0014\u001a\u000c\u0012\u0004\u0012\u00020\u00100\u000fj\u0002`\u0011\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0014\u001a\u000c\u0012\u0004\u0012\u00020\u00100\u000fj\u0002`\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/CreateTagAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "tag",
        "",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "l",
        "",
        "g",
        "Ljava/lang/String;",
        "tagName",
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
        "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V",
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
        "SMAP\nCreateTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateTagAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1#2:79\n1855#3,2:80\n1549#3:82\n1620#3,3:83\n*S KotlinDebug\n*F\n+ 1 CreateTagAction.kt\ncom/onyx/galaxy/note/category/action/CreateTagAction\n*L\n67#1:80,2\n71#1:82\n71#1:83,3\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/String;
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
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
            "Lcom/onyx/android/sdk/data/TagCreateFrom;",
            ")V"
        }
    .end annotation

    const-string v0, "tagName"

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
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->g:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    .line 7
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->i:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    .line 8
    iput-object p4, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->j:Lcom/onyx/android/sdk/data/TagCreateFrom;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 1
    new-instance p3, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {p3}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    .line 2
    sget-object p5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p6, Lcom/onyx/galaxy/note/R$color;->tag_face_default_yellow_color:I

    invoke-virtual {p5, p6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p5

    invoke-virtual {p3, p5}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->setColor(I)V

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/action/CreateTagAction;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    return-void
.end method

.method public static final synthetic access$createTag(Lcom/onyx/galaxy/note/category/action/CreateTagAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->l(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$statistics(Lcom/onyx/galaxy/note/category/action/CreateTagAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->m(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateTagAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateTagAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/CreateTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateTagAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateTagAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/CreateTagAction;)V

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

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->g:Ljava/lang/String;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->tag_name_max_input_length:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_4

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->checkTagContentRepeat(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->i:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-virtual {v3, v0, v2, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;->createModel(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->createChild(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->reorderTagChildren(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->loadNotSavedList(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->resetRevisionId()V

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->saveTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/CreateTagAction$createTag$2;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/action/CreateTagAction$createTag$2;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;)V

    invoke-virtual {p1, p0, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->setSaved(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->post(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/galaxy/note/category/action/CreateTagAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create tag SyncTagModel:"

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

    :cond_4
    :goto_2
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;-><init>()V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsCreateTagEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->j:Lcom/onyx/android/sdk/data/TagCreateFrom;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/event/StatisticsCreateTagEvent;-><init>(Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->onStatisticsEvent(Lcom/onyx/android/sdk/event/BaseStatisticsEvent;)V

    return-void
.end method
