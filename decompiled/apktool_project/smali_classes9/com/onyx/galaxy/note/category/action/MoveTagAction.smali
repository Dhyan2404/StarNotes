.class public final Lcom/onyx/galaxy/note/category/action/MoveTagAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoveTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1855#2,2:163\n1855#2,2:165\n1855#2,2:167\n1549#2:169\n1620#2,3:170\n1549#2:173\n1620#2,3:174\n766#2:177\n857#2,2:178\n1855#2,2:180\n1855#2,2:182\n1549#2:184\n1620#2,3:185\n*S KotlinDebug\n*F\n+ 1 MoveTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveTagAction\n*L\n89#1:163,2\n95#1:165,2\n103#1:167,2\n110#1:169\n110#1:170,3\n119#1:173\n119#1:174,3\n120#1:177\n120#1:178,2\n121#1:180,2\n135#1:182,2\n155#1:184\n155#1:185,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0010\u0010\u0015\u001a\u000c\u0012\u0004\u0012\u00020\r0\u0011j\u0002`\u0012\u00a2\u0006\u0004\u0008$\u0010%J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0007H\u0002R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0015\u001a\u000c\u0012\u0004\u0012\u00020\r0\u0011j\u0002`\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u0004\u0018\u00010\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/MoveTagAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "isDuplicated",
        "",
        "p",
        "n",
        "q",
        "m",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "g",
        "Ljava/util/List;",
        "nodes",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "h",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "parentTreeNode",
        "",
        "",
        "i",
        "Ljava/util/Set;",
        "idSet",
        "j",
        "Lkotlin/Lazy;",
        "o",
        "()Ljava/lang/String;",
        "pId",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "k",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "<init>",
        "(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V",
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
        "SMAP\nMoveTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1855#2,2:163\n1855#2,2:165\n1855#2,2:167\n1549#2:169\n1620#2,3:170\n1549#2:173\n1620#2,3:174\n766#2:177\n857#2,2:178\n1855#2,2:180\n1855#2,2:182\n1549#2:184\n1620#2,3:185\n*S KotlinDebug\n*F\n+ 1 MoveTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveTagAction\n*L\n89#1:163,2\n95#1:165,2\n103#1:167,2\n110#1:169\n110#1:170,3\n119#1:173\n119#1:174,3\n120#1:177\n120#1:178,2\n121#1:180,2\n135#1:182,2\n155#1:184\n155#1:185,3\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
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

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentTreeNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->i:Ljava/util/Set;

    new-instance p1, Lcom/onyx/galaxy/note/category/action/MoveTagAction$pId$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$pId$2;-><init>(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->j:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$checkDuplicatedName(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->l()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$checkMoveTagStatus(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->m()V

    return-void
.end method

.method public static final synthetic access$collectOldParenIds(Lcom/onyx/galaxy/note/category/action/MoveTagAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->n(Z)V

    return-void
.end method

.method public static final synthetic access$getPId(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getParentTreeNode$p(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    return-object p0
.end method

.method public static final synthetic access$move(Lcom/onyx/galaxy/note/category/action/MoveTagAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->p(Z)V

    return-void
.end method

.method public static final synthetic access$refreshOldParentUpdatedAt(Lcom/onyx/galaxy/note/category/action/MoveTagAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->q(Z)V

    return-void
.end method

.method public static final synthetic access$setNoteProvider$p(Lcom/onyx/galaxy/note/category/action/MoveTagAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->k:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveTagAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveTagAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveTagAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveTagAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveTagAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveTagAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveTagAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/action/MoveTagAction$h;->e:Lcom/onyx/galaxy/note/category/action/MoveTagAction$h;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Z
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->k:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v2, :cond_1

    const-string v2, "noteProvider"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/category/action/MoveTagAction$checkDuplicatedName$1;

    invoke-direct {v4, v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$checkDuplicatedName$1;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;Lcom/onyx/galaxy/note/category/action/MoveTagAction;)V

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->hasDuplicatedTagContent(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return v1
.end method

.method public final m()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->createTagQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/couchbase/lite/Ordering;

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v4, "createdAt"

    invoke-virtual {v3, v4, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->k:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_2

    const-string p0, "noteProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;->queryCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "tag is deleted ,which is operating"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n(Z)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->i:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final p(Z)V
    .locals 4

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setParentId(Ljava/lang/String;)V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setOrderIndex(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->createChild(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->reorderTagChildren(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->loadNotSavedList(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->isRootNode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->resetRevisionId()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->k:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v0, :cond_5

    const-string v0, "noteProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_5
    invoke-static {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->saveTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/MoveTagAction$move$4;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/category/action/MoveTagAction$move$4;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->setSaved(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/galaxy/note/category/event/OnMoveTagEvent;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/category/event/OnMoveTagEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;

    invoke-direct {p1, v1}, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->post(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",move tags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->g:Ljava/util/List;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Z)V
    .locals 4

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->i:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->k:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    const/4 v0, 0x0

    const-string v1, "noteProvider"

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->i:Ljava/util/Set;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadTagById(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->resetRevisionId()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveTagAction;->k:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    invoke-static {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->saveTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    return-void
.end method
