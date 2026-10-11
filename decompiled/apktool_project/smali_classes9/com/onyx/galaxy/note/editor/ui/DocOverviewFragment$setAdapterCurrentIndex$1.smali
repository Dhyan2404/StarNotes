.class final Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->U1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;",
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
        "Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;->invoke(Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$isPageIndexChanged(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 5
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const-string v3, "editorBundle"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$selectNearestHighlightRegion(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;I)V

    .line 6
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_2
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->setCurrentPageIndex(I)V

    .line 7
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$updateSearchHighlightRegionIndex(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    .line 8
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$setAdapterCurrentIndex$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getItemAnimatorBackup$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
