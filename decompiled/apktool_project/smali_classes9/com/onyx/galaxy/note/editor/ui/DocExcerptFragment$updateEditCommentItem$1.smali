.class final Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->S0(Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;Ljava/util/List;)V
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
.field final synthetic $position:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;->$position:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;->invoke(Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;)V

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
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDocExcerptBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDocExcerptBinding;->recyclerViewContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;->$position:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDocExcerptBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDocExcerptBinding;->recyclerViewContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->doc_excerpt_open_comment_delay_time:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1$1;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;->$position:I

    invoke-direct {v2, v3, p0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;I)V

    invoke-static {p1, v0, v1, v2}, Landroidx/core/view/ViewKt;->postOnAnimationDelayed(Landroid/view/View;JLkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;

    return-void
.end method
