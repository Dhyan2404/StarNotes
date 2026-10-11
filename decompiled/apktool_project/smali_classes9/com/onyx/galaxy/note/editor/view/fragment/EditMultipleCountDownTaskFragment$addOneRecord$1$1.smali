.class final Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$addOneRecord$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;",
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
        "Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$addOneRecord$1$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$addOneRecord$1$1;->invoke$lambda$0(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

    move-result-object v0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->selectItem(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$addOneRecord$1$1;->invoke(Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$addOneRecord$1$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)Lcom/onyx/galaxy/note/databinding/FragmentEditMultipleCountDownBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentEditMultipleCountDownBinding;->rvTaskTimeList:Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$addOneRecord$1$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$addOneRecord$1$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)Lcom/onyx/galaxy/note/databinding/FragmentEditMultipleCountDownBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentEditMultipleCountDownBinding;->rvTaskTimeList:Lcom/onyx/galaxy/note/ui/view/ExpandToMaxHeightRecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$addOneRecord$1$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/a;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
