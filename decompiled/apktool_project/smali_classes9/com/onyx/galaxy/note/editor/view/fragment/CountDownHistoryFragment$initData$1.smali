.class final Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCountDownHistoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountDownHistoryFragment.kt\ncom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,177:1\n256#2,2:178\n256#2,2:180\n254#2:182\n*S KotlinDebug\n*F\n+ 1 CountDownHistoryFragment.kt\ncom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1\n*L\n143#1:178,2\n144#1:180,2\n145#1:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "kotlin.jvm.PlatformType",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCountDownHistoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountDownHistoryFragment.kt\ncom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,177:1\n256#2,2:178\n256#2,2:180\n254#2:182\n*S KotlinDebug\n*F\n+ 1 CountDownHistoryFragment.kt\ncom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1\n*L\n143#1:178,2\n144#1:180,2\n145#1:182\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setStateViewEnable(Z)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->access$updateSelectionLayout(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)V

    .line 6
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v0, "selectionLayout"

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->selection:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "selection"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->selectionLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->selectionLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 14
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;->access$toggleSelectionMode(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;)V

    :cond_2
    :goto_1
    return-void
.end method
