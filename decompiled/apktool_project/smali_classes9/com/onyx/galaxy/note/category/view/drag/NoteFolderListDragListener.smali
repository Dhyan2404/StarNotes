.class public final Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteFolderListDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteFolderListDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,313:1\n1549#2:314\n1620#2,3:315\n1549#2:318\n1620#2,3:319\n350#2,7:322\n256#3,2:329\n256#3,2:331\n256#3,2:333\n256#3,2:335\n256#3,2:337\n256#3,2:339\n*S KotlinDebug\n*F\n+ 1 NoteFolderListDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener\n*L\n196#1:314\n196#1:315,3\n248#1:318\n248#1:319,3\n258#1:322,7\n295#1:329,2\n297#1:331,2\n299#1:333,2\n305#1:335,2\n306#1:337,2\n307#1:339,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001d\u00a2\u0006\u0004\u0008(\u0010)J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J \u0010\u000f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0003J$\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00142\u0006\u0010\u0011\u001a\u00020\u00062\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00162\u0006\u0010\n\u001a\u00020\u0016H\u0002J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u001a\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0006H\u0002R\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008!\u0010#R\u001b\u0010&\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\"\u001a\u0004\u0008%\u0010#R\u001b\u0010\'\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\"\u001a\u0004\u0008\u0005\u0010#\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;",
        "Landroid/view/View$OnDragListener;",
        "Landroid/view/View;",
        "itemView",
        "Landroid/view/DragEvent;",
        "e",
        "",
        "onDrag",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "originNoteModel",
        "targetNoteModel",
        "",
        "dragState",
        "",
        "h",
        "i",
        "j",
        "result",
        "",
        "moveNotes",
        "Lio/reactivex/rxjava3/core/Observable;",
        "b",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "note",
        "g",
        "a",
        "c",
        "resetAlpha",
        "k",
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;",
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;",
        "adapter",
        "",
        "f",
        "Lkotlin/Lazy;",
        "()F",
        "dragItemAlpha",
        "d",
        "afterPercent",
        "beforePercent",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V",
        "Companion",
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
        "SMAP\nNoteFolderListDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteFolderListDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,313:1\n1549#2:314\n1620#2,3:315\n1549#2:318\n1620#2,3:319\n350#2,7:322\n256#3,2:329\n256#3,2:331\n256#3,2:333\n256#3,2:335\n256#3,2:337\n256#3,2:339\n*S KotlinDebug\n*F\n+ 1 NoteFolderListDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener\n*L\n196#1:314\n196#1:315,3\n248#1:318\n248#1:319,3\n258#1:322,7\n295#1:329,2\n297#1:331,2\n299#1:333,2\n305#1:335,2\n306#1:337,2\n307#1:339,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/lang/String; = "NoteFolderListDragListener"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3


# instance fields
.field public final e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->Companion:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$dragItemAlpha$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$dragItemAlpha$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->f:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$afterPercent$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$afterPercent$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->g:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$beforePercent$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$beforePercent$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$deleteSort(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;ZLjava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->b(ZLjava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;)Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->k(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    if-eqz p1, :cond_4

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$checkCanDragIn$isAncestors$1;

    invoke-direct {v2, p2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$checkCanDragIn$isAncestors$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p2

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    const/4 v2, 0x7

    invoke-virtual {p1, p0, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {p1, p0, v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result p0

    if-eqz v2, :cond_4

    if-nez p2, :cond_4

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method

.method public final b(ZLjava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;-><init>()V

    sget-object p1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setFilterId(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setSubFilterId(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setContentIds(Ljava/util/List;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/action/DeleteSortAction;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteSortAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$a;->e:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$a;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public final c(Landroid/view/View;I)V
    .locals 5

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_bottom:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v3, "findViewById(...)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_top:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p2, v1, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    if-eqz v1, :cond_6

    move v0, v2

    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final d()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final e()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final f()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final g(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)I
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public final h(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->j(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->i(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->g(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->g(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)I

    move-result v1

    if-ltz v0, :cond_5

    if-ltz v1, :cond_5

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    if-eq p3, v3, :cond_5

    :cond_0
    add-int/lit8 v2, v0, -0x1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setOrderIndex(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setOrderIndex(F)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->removeAt(I)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->g(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)I

    move-result p1

    if-ne p3, v3, :cond_2

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int/2addr p1, v3

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p2

    if-le p1, p2, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->add(ILjava/lang/Object;)V

    :goto_0
    sget-object p1, Lcom/onyx/android/sdk/replicator/note/utils/OrderListUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OrderListUtils;

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    sget-object p3, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$move$reorderList$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$move$reorderList$1;

    sget-object v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$move$reorderList$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$move$reorderList$2;

    invoke-virtual {p1, p2, p3, v0}, Lcom/onyx/android/sdk/replicator/note/utils/OrderListUtils;->reorderIndex(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p2

    const-string p3, "pay_load_key_refresh_view"

    const-string v0, "NoteFolderListDragListener"

    invoke-static {p3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/onyx/galaxy/note/category/action/SaveSortAction;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/action/SaveSortAction;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_5
    :goto_2
    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleDropFromFolder not found targetTreeNode,id:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "NoteFolderListDragListener"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setOrderIndex(F)V

    filled-new-array {p2}, [Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;

    invoke-direct {v1, p1, v0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$b;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$b;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$c;

    invoke-direct {v1, p0, v0, p2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$c;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final k(Landroid/view/View;Z)V
    .locals 3

    sget v0, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget v0, Lcom/onyx/galaxy/note/R$id;->v_drag_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->v_drag_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->f()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, v3, v4, v2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->l(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;Landroid/view/View;ZILjava/lang/Object;)V

    return v5

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const-string v1, "NoteListAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.bean.NoteModelBean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, v0, v6}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result v1

    iget-object v7, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->getDisplayType()I

    move-result v7

    if-ne v7, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->d()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v9

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->d()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v9

    :goto_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    if-eq p2, v5, :cond_e

    const/4 v10, 0x3

    if-eq p2, v4, :cond_a

    if-eq p2, v10, :cond_6

    const/4 v0, 0x5

    if-eq p2, v0, :cond_5

    const/4 v0, 0x6

    if-eq p2, v0, :cond_4

    return v3

    :cond_4
    invoke-static {p0, p1, v3, v4, v2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->l(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;Landroid/view/View;ZILjava/lang/Object;)V

    :cond_5
    return v5

    :cond_6
    cmpg-float p2, v9, v8

    if-gtz p2, :cond_7

    move v10, v5

    goto :goto_2

    :cond_7
    cmpl-float p2, v9, v7

    if-ltz p2, :cond_8

    goto :goto_2

    :cond_8
    move v10, v4

    :goto_2
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->getSortBy()Lcom/onyx/android/sdk/base/data/SortBy;

    move-result-object p2

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    if-eq p2, v1, :cond_9

    if-eq v10, v4, :cond_9

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->note_sort_enable_custom:I

    invoke-virtual {p2, v0, v5}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    invoke-virtual {p0, p1, v5}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->k(Landroid/view/View;Z)V

    return v5

    :cond_9
    invoke-virtual {p0, v0, v6, v10}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->h(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    invoke-virtual {p0, p1, v5}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->k(Landroid/view/View;Z)V

    return v5

    :cond_a
    cmpg-float p2, v9, v8

    if-gtz p2, :cond_b

    invoke-virtual {p0, p1, v5}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->c(Landroid/view/View;I)V

    goto :goto_3

    :cond_b
    cmpl-float p2, v9, v7

    if-ltz p2, :cond_c

    invoke-virtual {p0, p1, v10}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->c(Landroid/view/View;I)V

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {p0, p1, v4}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->c(Landroid/view/View;I)V

    goto :goto_3

    :cond_d
    invoke-static {p0, p1, v3, v4, v2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;->l(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;Landroid/view/View;ZILjava/lang/Object;)V

    :goto_3
    return v5

    :cond_e
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v5

    return p0
.end method
