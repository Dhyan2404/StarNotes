.class public final Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderRootDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderRootDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/FolderRootDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,109:1\n256#2,2:110\n256#2,2:112\n*S KotlinDebug\n*F\n+ 1 FolderRootDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/FolderRootDragListener\n*L\n94#1:110,2\n99#1:112,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0003J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener;",
        "Landroid/view/View$OnDragListener;",
        "Landroid/view/View;",
        "itemView",
        "Landroid/view/DragEvent;",
        "e",
        "",
        "onDrag",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "originModel",
        "",
        "c",
        "b",
        "d",
        "a",
        "<init>",
        "()V",
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
        "SMAP\nFolderRootDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderRootDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/FolderRootDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,109:1\n256#2,2:110\n256#2,2:112\n*S KotlinDebug\n*F\n+ 1 FolderRootDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/FolderRootDragListener\n*L\n94#1:110,2\n99#1:112,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/DragEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "findViewById(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;

    new-array v0, v0, [Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener$a;->e:Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener$a;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 1

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "findViewById(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
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

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener;->d(Landroid/view/View;)V

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "NoteListAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v1, "NotePageListAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    const-string v4, "NoteFolderTreeDragListener"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_8

    const/4 v0, 0x2

    if-eq v4, v0, :cond_7

    const/4 v0, 0x3

    if-eq v4, v0, :cond_6

    const/4 p2, 0x5

    if-eq v4, p2, :cond_5

    const/4 p2, 0x6

    if-eq v4, p2, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener;->d(Landroid/view/View;)V

    return v3

    :cond_5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener;->b(Landroid/view/View;)V

    return v3

    :cond_6
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener;->c(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    :cond_7
    return v3

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener;->a(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_9
    if-eqz v0, :cond_a

    return v3

    :cond_a
    return v2
.end method
