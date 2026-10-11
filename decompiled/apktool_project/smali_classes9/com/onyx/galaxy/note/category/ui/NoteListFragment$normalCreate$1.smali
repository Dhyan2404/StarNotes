.class final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->J1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->$view:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->invoke(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isFilterRootFolder()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isFilterFolder()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isBottomLevel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v5, p1

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;

    .line 5
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    .line 6
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "requireContext(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrentFolderId()Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrentTagId()Ljava/lang/String;

    move-result-object v4

    .line 9
    sget-object v6, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 10
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    const-string v0, "getParentFragmentManager(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroidx/fragment/app/FragmentManager;)V

    .line 12
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;->$view:Landroid/view/View;

    .line 13
    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method
