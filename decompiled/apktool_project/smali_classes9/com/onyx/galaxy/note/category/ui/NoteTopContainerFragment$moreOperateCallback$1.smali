.class public final Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1",
        "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;",
        "onCloudSync",
        "",
        "onMultiSelect",
        "onSort",
        "view",
        "Landroid/view/View;",
        "onToggleDisplay",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloudSync()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$handleCloudSync(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    return-void
.end method

.method public onMultiSelect()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleMulSelect()V

    return-void
.end method

.method public onSort(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$showSortPopup(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public onToggleDisplay()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$moreOperateCallback$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleDisplayType()V

    return-void
.end method
