.class public final Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectMoveToLayerPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMoveToLayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n350#2,7:69\n*S KotlinDebug\n*F\n+ 1 SelectMoveToLayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup\n*L\n66#1:69,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0013\u00a2\u0006\u0004\u0008#\u0010$J\u001c\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002R\u001d\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "layerList",
        "",
        "selectedLayerId",
        "",
        "setData",
        "Landroid/content/Context;",
        "context",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "n",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "q",
        "Ljava/util/List;",
        "getShapes",
        "()Ljava/util/List;",
        "shapes",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;",
        "s",
        "Lkotlin/Lazy;",
        "m",
        "()Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;",
        "t",
        "Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;",
        "adapter",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSelectMoveToLayerPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMoveToLayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n350#2,7:69\n*S KotlinDebug\n*F\n+ 1 SelectMoveToLayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup\n*L\n66#1:69,7\n*E\n"
    }
.end annotation


# instance fields
.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->q:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->s:Lkotlin/Lazy;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;

    invoke-direct {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;-><init>()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p3

    const-string v0, "getRoot(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->setDefaultAttribute(Landroid/widget/PopupWindow;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;->recyclerView:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;->recyclerView:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;->recyclerView:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->n(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/sunia/HTREnginev2/sem;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/sem;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;)V

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->l(Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p3, Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->q:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-direct {p3, v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;-><init>(Ljava/util/List;I)V

    invoke-static {p2, p3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->q:Ljava/util/List;

    return-object p0
.end method

.method public final m()Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;

    return-object p0
.end method

.method public final n(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1

    new-instance p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setLastItemDecorated(Z)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerInsetStart(I)V

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerInsetEnd(I)V

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_0_5:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    return-object p0
.end method

.method public final setData(Ljava/util/List;I)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "layerList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;->setSelectedLayerId(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/SelectMoveToLayerListAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupSelectMoveToLayerBinding;->recyclerView:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
