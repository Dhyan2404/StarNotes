.class public final Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008)\u0010*J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0008\u0010\u0011\u001a\u00020\u000bH\u0002J\u0008\u0010\u0012\u001a\u00020\u000bH\u0002J\u0008\u0010\u0013\u001a\u00020\u000bH\u0002J\u0008\u0010\u0014\u001a\u00020\u000bH\u0002J\u0008\u0010\u0015\u001a\u00020\u000bH\u0002J\u0008\u0010\u0016\u001a\u00020\u000bH\u0002J\u0008\u0010\u0017\u001a\u00020\u000bH\u0002J\u0008\u0010\u0018\u001a\u00020\u000bH\u0002R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u001b\u001a\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "",
        "onViewCreated",
        "onDestroyView",
        "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;",
        "event",
        "onEditDoneEvent",
        "F0",
        "B0",
        "w0",
        "v0",
        "I0",
        "H0",
        "J0",
        "G0",
        "Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "t0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;",
        "e1",
        "s0",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;",
        "adapter",
        "Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;",
        "f1",
        "u0",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;",
        "viewmodel",
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


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->d1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$adapter$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$adapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$viewmodel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$viewmodel$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->f1:Lkotlin/Lazy;

    return-void
.end method

.method public static final A0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->G0()V

    return-void
.end method

.method public static final C0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->toggleItemExpandState(I)V

    return-void
.end method

.method public static final D0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "v"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;

    invoke-direct {p1, p0, p3}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;I)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->setCallback(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 v4, p0, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IIILjava/lang/Object;)V

    return-void
.end method

.method public static final E0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "v"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->onItemClick(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->J0()V

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewmodel(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->u0()Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toggleSelectionMode(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->I0()V

    return-void
.end method

.method public static final synthetic access$updateSelectionLayout(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->J0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->y0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->E0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->x0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->D0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->z0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->C0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->A0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final x0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->I0()V

    return-void
.end method

.method public static final y0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->I0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->J0()V

    return-void
.end method

.method public static final z0(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->H0()V

    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->rvHistory:Lcom/onyx/galaxy/note/ui/view/ThemeRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$1$1;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$1$1;-><init>(Lcom/onyx/galaxy/note/ui/view/ThemeRecyclerView;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/ThemeRecyclerView;->addItemDecoration(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->rvHistory:Lcom/onyx/galaxy/note/ui/view/ThemeRecyclerView;

    const-string v2, "rvHistory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$2;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setClearEditFocusTouchListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$layout;->layout_counter_history_empty:I

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setStateViewLayout(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v4

    sget v5, Lcom/onyx/galaxy/note/R$id;->iv_expand_flag_arrow:I

    const-wide/16 v6, 0x0

    new-instance v8, Lcom/sunia/HTREnginev2/fee;

    invoke-direct {v8, v0}, Lcom/sunia/HTREnginev2/fee;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v11

    sget v12, Lcom/onyx/galaxy/note/R$id;->iv_more_option:I

    const-wide/16 v13, 0x0

    new-instance v15, Lcom/sunia/HTREnginev2/gee;

    invoke-direct {v15, v0}, Lcom/sunia/HTREnginev2/gee;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$id;->checkbox:I

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/hee;

    invoke-direct {v5, v0}, Lcom/sunia/HTREnginev2/hee;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v1

    move v1, v2

    move-wide v2, v3

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method

.method public final F0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->B0()V

    return-void
.end method

.method public final G0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->u0()Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->getSelectionMode()Z

    move-result p0

    invoke-virtual {v1, v2, v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;->deleteCount(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public final H0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->toggleSelectAll()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->J0()V

    return-void
.end method

.method public final I0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->toggleSelectionMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->selection:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->selectionLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final J0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->isAllItemSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->delete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->hasItemContains()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public final onEditDoneEvent(Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->quitEditAndSave()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->F0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->w0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->v0()V

    return-void
.end method

.method public final s0()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    return-object p0
.end method

.method public final t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    return-object p0
.end method

.method public final u0()Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;

    return-object p0
.end method

.method public final v0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->u0()Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;->getCountListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initData$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initData$1;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->u0()Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;->loadCountData(Z)V

    return-void
.end method

.method public final w0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->selection:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "selection"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/bee;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/bee;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->finish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "finish"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/cee;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/cee;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "selectAll"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/dee;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/dee;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->t0()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;->delete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "delete"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/eee;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/eee;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method
