.class public final Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u000bH\u0002R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;",
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
        "onResume",
        "",
        "position",
        "q0",
        "p0",
        "x0",
        "Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "s0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;",
        "e1",
        "r0",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;",
        "adapter",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->d1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$adapter$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$adapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->e1:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$doDelete(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->p0(I)V

    return-void
.end method

.method public static final synthetic access$doEdit(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->q0(I)V

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->t0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->u0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->w0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->v0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final t0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/onyx/galaxy/note/R$id;->fragment_edit_counter_setting:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/extension/FragmentKt;->navigateWithAnimation$default(Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final u0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;->toggleItemExpandState(I)V

    return-void
.end method

.method public static final v0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;

    sget-object p1, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->Companion:Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;->getDefaultBundle()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static final w0(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "v"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;-><init>(Landroid/content/Context;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1;

    invoke-direct {v0, p0, p3}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;I)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->setCallback(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->s0()Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p3, "getRoot(...)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->s0()Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->x0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->s0()Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;

    move-result-object v1

    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;->tvAdd:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvAdd"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/vqj;

    invoke-direct {v6, v0}, Lcom/sunia/HTREnginev2/vqj;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->s0()Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;->rvTask:Lcom/onyx/galaxy/note/ui/view/ThemeRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$2$1;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$2$1;-><init>(Lcom/onyx/galaxy/note/ui/view/ThemeRecyclerView;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/ThemeRecyclerView;->addItemDecoration(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object v3

    sget v4, Lcom/onyx/galaxy/note/R$id;->iv_expand_flag_arrow:I

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/wqj;

    invoke-direct {v7, v0}, Lcom/sunia/HTREnginev2/wqj;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object v10

    sget v11, Lcom/onyx/galaxy/note/R$id;->tv_start:I

    const-wide/16 v12, 0x0

    new-instance v14, Lcom/sunia/HTREnginev2/xqj;

    invoke-direct {v14, v0}, Lcom/sunia/HTREnginev2/xqj;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$id;->iv_more_option:I

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/yqj;

    invoke-direct {v5, v0}, Lcom/sunia/HTREnginev2/yqj;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;)V

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

.method public final p0(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/DeleteCounterTaskAction;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/action/counter/DeleteCounterTaskAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$a;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public final q0(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$id;->fragment_edit_counter_setting:I

    sget-object v1, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/utils/CounterUtils;->withTaskModelBundle(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/extension/FragmentKt;->navigateWithAnimation(Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final r0()Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/MyCountDownTaskAdapter;

    return-object p0
.end method

.method public final s0()Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentMyCountDownTaskBinding;

    return-object p0
.end method

.method public final x0()V
    .locals 8

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$b;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
