.class public final Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotePageDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,320:1\n1549#2:321\n1620#2,3:322\n256#3,2:325\n256#3,2:327\n256#3,2:329\n256#3,2:331\n256#3,2:333\n256#3,2:335\n*S KotlinDebug\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener\n*L\n254#1:321\n254#1:322,3\n296#1:325,2\n297#1:327,2\n298#1:329,2\n303#1:331,2\n304#1:333,2\n305#1:335,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 22\u00020\u0001:\u00012B\u000f\u0012\u0006\u0010$\u001a\u00020\"\u00a2\u0006\u0004\u00080\u00101J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J0\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0002J \u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\rH\u0002J \u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\rH\u0002J \u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\rH\u0002J\u0018\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0003J$\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001b2\u0006\u0010\u0018\u001a\u00020\u00062\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0019H\u0002J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u001dH\u0002J\u0018\u0010\u0005\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\rH\u0002J\u001a\u0010 \u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0006H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010#R\u001b\u0010)\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u001b\u0010+\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010&\u001a\u0004\u0008%\u0010(R\u001b\u0010-\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010&\u001a\u0004\u0008*\u0010(R\u001b\u0010/\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010&\u001a\u0004\u0008,\u0010.\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;",
        "Landroid/view/View$OnDragListener;",
        "Landroid/view/View;",
        "itemView",
        "Landroid/view/DragEvent;",
        "e",
        "",
        "onDrag",
        "canDragIn",
        "",
        "beforeThreshold",
        "afterThreshold",
        "currLocal",
        "",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "originNoteModel",
        "targetNoteModel",
        "dragState",
        "",
        "k",
        "l",
        "n",
        "m",
        "result",
        "",
        "moveNotes",
        "Lio/reactivex/rxjava3/core/Observable;",
        "d",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "c",
        "resetAlpha",
        "r",
        "q",
        "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;",
        "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;",
        "adapter",
        "f",
        "Lkotlin/Lazy;",
        "i",
        "()F",
        "dragItemAlpha",
        "g",
        "afterPercent",
        "h",
        "beforePercent",
        "()I",
        "dragInterval",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V",
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
        "SMAP\nNotePageDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,320:1\n1549#2:321\n1620#2,3:322\n256#3,2:325\n256#3,2:327\n256#3,2:329\n256#3,2:331\n256#3,2:333\n256#3,2:335\n*S KotlinDebug\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener\n*L\n254#1:321\n254#1:322,3\n296#1:325,2\n297#1:327,2\n298#1:329,2\n303#1:331,2\n304#1:333,2\n305#1:335,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DRAG_AFTER:I = 0x3

.field public static final DRAG_BEFORE:I = 0x1

.field public static final DRAG_IN:I = 0x2

.field public static final DRAG_INVALID:I = -0x1

.field public static final j:Ljava/lang/String; = "NotePageDragListener"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;
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

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->Companion:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$dragItemAlpha$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$dragItemAlpha$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->f:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$afterPercent$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$afterPercent$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->g:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$beforePercent$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$beforePercent$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->h:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$dragInterval$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$dragInterval$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->i:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->p(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    return-void
.end method

.method public static final synthetic access$deleteSort(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;ZLjava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->d(ZLjava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;)Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->o(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$originNoteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetNoteModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/a0k;

    invoke-direct {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/a0k;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    :cond_0
    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 1

    const-string v0, "$originNoteModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetNoteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->r(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
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
    new-instance v2, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$checkCanDragIn$isAncestors$1;

    invoke-direct {v2, p2}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$checkCanDragIn$isAncestors$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

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

.method public final d(ZLjava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setFilterId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getSelectType()Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setSubFilterId(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

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

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setContentIds(Ljava/util/List;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/action/DeleteSortAction;

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/action/DeleteSortAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$a;->e:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$a;

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

.method public final e(Landroid/view/View;I)V
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

.method public final f()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final g()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final h()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final i()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final j(Landroid/view/View;ZFFF)I
    .locals 2

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p1

    cmpg-float p3, p5, p3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-gtz p3, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getDisplayType()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    cmpl-float p3, p5, p4

    if-ltz p3, :cond_2

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getDisplayType()I

    move-result p0

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :cond_4
    :goto_1
    return v0
.end method

.method public final k(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->n(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    if-ne p3, v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    if-ne p3, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->m(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->n(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleDropFromFolder not found targetTreeNode,id:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "NotePageDragListener"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setOrderIndex(F)V

    filled-new-array {p1}, [Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;

    invoke-direct {v1, p2, v0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$b;

    invoke-direct {v2, p0, p2}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$b;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v1, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;

    invoke-direct {v1, p0, v0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->move(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/b0k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0k;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->h()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 15
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v6, p0

    move-object/from16 v7, p1

    const-string v0, "itemView"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    const/4 v8, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v7, v8}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->r(Landroid/view/View;Z)V

    return v8

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v9

    :goto_0
    const-string v2, "NotePageListAdapter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_2

    return v10

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.bean.NoteModelBean"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    check-cast v11, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    check-cast v12, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, v11, v12}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->c(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result v2

    invoke-virtual {v11}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v12}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    move v13, v8

    goto :goto_1

    :cond_3
    move v13, v10

    :goto_1
    iget-object v0, v6, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getDisplayType()I

    move-result v0

    if-ne v0, v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->f()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->g()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->f()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->g()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    :goto_2
    move v5, v4

    move v4, v0

    invoke-static/range {p1 .. p1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getDisplayType()I

    move-result v0

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    if-eq v0, v8, :cond_d

    const/4 v14, 0x2

    if-eq v0, v14, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    return v10

    :cond_6
    invoke-static {p0, v7, v10, v14, v9}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->s(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Landroid/view/View;ZILjava/lang/Object;)V

    :cond_7
    return v8

    :cond_8
    const/4 v2, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->j(Landroid/view/View;ZFFF)I

    move-result v0

    iget-object v1, v6, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getSortBy()Lcom/onyx/android/sdk/base/data/SortBy;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    if-eq v1, v2, :cond_9

    if-eq v0, v14, :cond_9

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->note_sort_enable_custom:I

    invoke-virtual {v0, v1, v8}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    invoke-virtual {p0, v7, v8}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->r(Landroid/view/View;Z)V

    return v8

    :cond_9
    if-eqz v13, :cond_a

    invoke-virtual {p0, v11, v12, v0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->k(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v11, v12, v0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->l(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    :goto_3
    invoke-virtual {p0, v7, v8}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->r(Landroid/view/View;Z)V

    invoke-virtual {p0, v11}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->q(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return v8

    :cond_b
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->j(Landroid/view/View;ZFFF)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0, v7, v10, v14, v9}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->s(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v7, v0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->e(Landroid/view/View;I)V

    :goto_4
    return v8

    :cond_d
    invoke-virtual {v11}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v8

    return v0
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "trigger_from"

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v0, "drag_galaxy_note_add_0001"

    invoke-virtual {p1, v0, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final r(Landroid/view/View;Z)V
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->i()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
