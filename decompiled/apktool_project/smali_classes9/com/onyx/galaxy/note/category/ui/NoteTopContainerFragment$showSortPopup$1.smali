.class final Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSortPopup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->F1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "sortBy",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "sortOrder",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSortPopup$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    check-cast p1, Lcom/onyx/android/sdk/base/data/SortBy;

    check-cast p2, Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSortPopup$1;->invoke(Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/SortBy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sortBy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortOrder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSortPopup$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleSort(Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSortPopup$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$loadListData(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showSortPopup$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$getNoteListMoreOperatePopup$p(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    :cond_0
    return-void
.end method
