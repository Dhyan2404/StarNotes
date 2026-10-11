.class public final Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->m(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotePageDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener$moveIn$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n350#2,7:321\n*S KotlinDebug\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener$moveIn$2\n*L\n230#1:321,7\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNotePageDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener$moveIn$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n350#2,7:321\n*S KotlinDebug\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener$moveIn$2\n*L\n230#1:321,7\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;

.field public final synthetic f:Lcom/onyx/android/sdk/base/data/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;->e:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;->e:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->access$getAdapter$p(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;)Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;->e:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->access$getAdapter$p(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;)Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->removeAt(I)V

    :cond_2
    new-instance v3, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;->f:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0, v0}, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;-><init>(Ljava/util/List;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->move_folder_note_conflicted:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :goto_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener$c;->a(Z)V

    return-void
.end method
