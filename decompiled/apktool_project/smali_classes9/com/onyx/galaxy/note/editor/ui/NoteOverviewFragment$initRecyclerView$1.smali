.class public final Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initRecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initRecyclerView$1",
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;",
        "onItemClick",
        "",
        "item",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "onItemLongClick",
        "view",
        "Landroid/view/View;",
        "onItemMore",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initRecyclerView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initRecyclerView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->getSelectedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initRecyclerView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$onOpenNote(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initRecyclerView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$onLongClick(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    return-void
.end method

.method public onItemMore(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initRecyclerView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$onMore(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method
