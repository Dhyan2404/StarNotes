.class public final Lcom/onyx/galaxy/note/category/action/MoveNoteAction;
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
    value = "SMAP\nMoveNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveNoteAction.kt\ncom/onyx/galaxy/note/category/action/MoveNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1549#2:214\n1620#2,3:215\n1603#2,9:218\n1855#2:227\n1856#2:229\n1612#2:230\n766#2:231\n857#2,2:232\n1603#2,9:234\n1855#2:243\n1856#2:245\n1612#2:246\n766#2:247\n857#2,2:248\n766#2:250\n857#2,2:251\n766#2:253\n857#2,2:254\n1855#2,2:256\n1855#2,2:258\n1855#2,2:260\n1549#2:262\n1620#2,3:263\n766#2:266\n857#2,2:267\n1855#2,2:269\n1855#2,2:271\n766#2:273\n857#2,2:274\n1549#2:276\n1620#2,3:277\n766#2:280\n857#2,2:281\n1549#2:283\n1620#2,3:284\n1#3:228\n1#3:244\n*S KotlinDebug\n*F\n+ 1 MoveNoteAction.kt\ncom/onyx/galaxy/note/category/action/MoveNoteAction\n*L\n49#1:214\n49#1:215,3\n72#1:218,9\n72#1:227\n72#1:229\n72#1:230\n73#1:231\n73#1:232,2\n80#1:234,9\n80#1:243\n80#1:245\n80#1:246\n81#1:247\n81#1:248,2\n116#1:250\n116#1:251,2\n117#1:253\n117#1:254,2\n120#1:256,2\n126#1:258,2\n130#1:260,2\n154#1:262\n154#1:263,3\n155#1:266\n155#1:267,2\n156#1:269,2\n172#1:271,2\n182#1:273\n182#1:274,2\n183#1:276\n183#1:277,3\n185#1:280\n185#1:281,2\n186#1:283\n186#1:284,3\n72#1:228\n80#1:244\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0010\u0010\u0017\u001a\u000c\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u0014\u00a2\u0006\u0004\u0008\'\u0010(J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002R\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0017\u001a\u000c\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001d\u0010!\u001a\u0004\u0018\u00010\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u0010R\u0016\u0010&\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/MoveNoteAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "isDuplicated",
        "",
        "r",
        "l",
        "p",
        "n",
        "q",
        "m",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "g",
        "Ljava/util/List;",
        "nodes",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
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
        "k",
        "operatedNotePIds",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
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
        "SMAP\nMoveNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveNoteAction.kt\ncom/onyx/galaxy/note/category/action/MoveNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1549#2:214\n1620#2,3:215\n1603#2,9:218\n1855#2:227\n1856#2:229\n1612#2:230\n766#2:231\n857#2,2:232\n1603#2,9:234\n1855#2:243\n1856#2:245\n1612#2:246\n766#2:247\n857#2,2:248\n766#2:250\n857#2,2:251\n766#2:253\n857#2,2:254\n1855#2,2:256\n1855#2,2:258\n1855#2,2:260\n1549#2:262\n1620#2,3:263\n766#2:266\n857#2,2:267\n1855#2,2:269\n1855#2,2:271\n766#2:273\n857#2,2:274\n1549#2:276\n1620#2,3:277\n766#2:280\n857#2,2:281\n1549#2:283\n1620#2,3:284\n1#3:228\n1#3:244\n*S KotlinDebug\n*F\n+ 1 MoveNoteAction.kt\ncom/onyx/galaxy/note/category/action/MoveNoteAction\n*L\n49#1:214\n49#1:215,3\n72#1:218,9\n72#1:227\n72#1:229\n72#1:230\n73#1:231\n73#1:232,2\n80#1:234,9\n80#1:243\n80#1:245\n80#1:246\n81#1:247\n81#1:248,2\n116#1:250\n116#1:251,2\n117#1:253\n117#1:254,2\n120#1:256,2\n126#1:258,2\n130#1:260,2\n154#1:262\n154#1:263,3\n155#1:266\n155#1:267,2\n156#1:269,2\n172#1:271,2\n182#1:273\n182#1:274,2\n183#1:276\n183#1:277,3\n185#1:280\n185#1:281,2\n186#1:283\n186#1:284,3\n72#1:228\n80#1:244\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
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
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
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

.field public final k:Ljava/util/List;
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

.field public l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;


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
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentTreeNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->i:Ljava/util/Set;

    new-instance p2, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$pId$2;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$pId$2;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->j:Lkotlin/Lazy;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->k:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$checkDuplicatedName(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->l()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$checkMoveFolderStatus(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->m()V

    return-void
.end method

.method public static final synthetic access$collectOldParenIds(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->n(Z)V

    return-void
.end method

.method public static final synthetic access$getNodes$p(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getPId(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getParentTreeNode$p(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    return-object p0
.end method

.method public static final synthetic access$move(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->p(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refreshOldParentUpdatedAt(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->q(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNoteProvider$p(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$updateFolderCover(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->r(Z)V

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

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$h;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$i;->e:Lcom/onyx/galaxy/note/category/action/MoveNoteAction$i;

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

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v2, :cond_1

    const-string v2, "noteProvider"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$checkDuplicatedName$1;

    invoke-direct {v4, p0, v1}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$checkDuplicatedName$1;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->hasDuplicatedName(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return v1
.end method

.method public final m()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v3, "uniqueId"

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    const-string v1, "status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_8

    const-string p0, "noteProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;->queryCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "folder is deleted ,which is operating"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n(Z)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

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

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->i:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final p(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setOrderIndex(F)V

    goto :goto_2

    :cond_5
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setOrderIndex(F)V

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-direct {v4, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->createChild(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->reorderFolderChildren(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->loadNotSavedList(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->isRootNode()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->h:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$move$4;

    invoke-direct {v2, v3}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$move$4;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->setSaved(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",move notes:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;-><init>(Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$j;-><init>(Lcom/onyx/galaxy/note/category/action/MoveNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$k;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$k;-><init>(Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->i:Ljava/util/Set;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inIdsExpression(Ljava/util/List;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;->getNoteSelectResult()[Lcom/couchbase/lite/SelectResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setSelectResults([Lcom/couchbase/lite/SelectResult;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v1, :cond_1

    const-string v1, "noteProvider"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-static {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->i:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;-><init>(Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$l;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$l;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$m;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction$m;-><init>(Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Z)V
    .locals 6

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->k:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;->g:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
