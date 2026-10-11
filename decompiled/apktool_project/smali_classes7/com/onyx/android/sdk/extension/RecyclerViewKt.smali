.class public final Lcom/onyx/android/sdk/extension/RecyclerViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecyclerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerView.kt\ncom/onyx/android/sdk/extension/RecyclerViewKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1855#2,2:146\n*S KotlinDebug\n*F\n+ 1 RecyclerView.kt\ncom/onyx/android/sdk/extension/RecyclerViewKt\n*L\n98#1:146,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u001a,\u0010\u0007\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u001a4\u0010\u000e\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\r\u001a\n\u0010\u0014\u001a\u00020\u0008*\u00020\u0002\u001a\u001e\u0010\u0015\u001a\u00020\u0008*\u00020\u00022\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\r0\u0017\u001a\u0012\u0010\u0019\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0004\u001a\u0012\u0010\u001b\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0004\u001a\u0012\u0010\u001c\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0004\u001a\u001c\u0010\u001e\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0004\u00a8\u0006 "
    }
    d2 = {
        "addLineDividerDecoration",
        "Lcom/google/android/material/divider/MaterialDividerItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "orientation",
        "",
        "color",
        "thickness",
        "addMaterialItemDecoration",
        "",
        "context",
        "Landroid/content/Context;",
        "dividerThickness",
        "isLastItemDecorated",
        "",
        "autoSetGridMargin",
        "parentWidth",
        "minItemWidth",
        "minMarginX",
        "marginY",
        "fixedMargin",
        "removeAllMarginDecorations",
        "removeDecorations",
        "predication",
        "Lkotlin/Function1;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "scrollToPositionIfCompletelyInVisible",
        "pos",
        "scrollToPositionIfInVisible",
        "scrollToPositionSafely",
        "position",
        "scrollToPositionWithOffset",
        "offset",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecyclerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerView.kt\ncom/onyx/android/sdk/extension/RecyclerViewKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1855#2,2:146\n*S KotlinDebug\n*F\n+ 1 RecyclerView.kt\ncom/onyx/android/sdk/extension/RecyclerViewKt\n*L\n98#1:146,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final addLineDividerDecoration(Landroidx/recyclerview/widget/RecyclerView;III)Lcom/google/android/material/divider/MaterialDividerItemDecoration;
    .locals 2
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    invoke-virtual {v0, p3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-object v0
.end method

.method public static synthetic addLineDividerDecoration$default(Landroidx/recyclerview/widget/RecyclerView;IIIILjava/lang/Object;)Lcom/google/android/material/divider/MaterialDividerItemDecoration;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p5, Lcom/onyx/android/sdk/uicommon/R$color;->divider_line:I

    invoke-virtual {p2, p5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p4, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->addLineDividerDecoration(Landroidx/recyclerview/widget/RecyclerView;III)Lcom/google/android/material/divider/MaterialDividerItemDecoration;

    move-result-object p0

    return-object p0
.end method

.method public static final addMaterialItemDecoration(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;IIZ)V
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    invoke-virtual {v0, p3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    invoke-virtual {v0, p4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setLastItemDecorated(Z)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public static synthetic addMaterialItemDecoration$default(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;IIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->addMaterialItemDecoration(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;IIZ)V

    return-void
.end method

.method public static final autoSetGridMargin(Landroidx/recyclerview/widget/RecyclerView;IIIIZ)I
    .locals 14
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move/from16 v1, p3

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v2, p1, v1

    add-int v3, p2, v1

    div-int/2addr v2, v3

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->removeAllMarginDecorations(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return p1

    :cond_0
    mul-int v3, p2, v2

    sub-int v3, p1, v3

    add-int/lit8 v4, v2, 0x1

    mul-int v5, v1, v4

    sub-int/2addr v3, v5

    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz p5, :cond_1

    div-int/2addr v3, v2

    add-int v1, p2, v3

    goto :goto_0

    :cond_1
    div-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v1, p2

    :goto_0
    iget v3, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->removeAllMarginDecorations(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v3, Lcom/onyx/android/sdk/ui/ItemMarginDecoration;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/onyx/android/sdk/extension/RecyclerViewKt$autoSetGridMargin$decoration$1;

    move/from16 v4, p4

    invoke-direct {v11, v5, v4, p0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt$autoSetGridMargin$decoration$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;ILandroidx/recyclerview/widget/RecyclerView;)V

    const/16 v12, 0xf

    const/4 v13, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lcom/onyx/android/sdk/ui/ItemMarginDecoration;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return v1
.end method

.method public static synthetic autoSetGridMargin$default(Landroidx/recyclerview/widget/RecyclerView;IIIIZILjava/lang/Object;)I
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->autoSetGridMargin(Landroidx/recyclerview/widget/RecyclerView;IIIIZ)I

    move-result p0

    return p0
.end method

.method public static final removeAllMarginDecorations(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/extension/RecyclerViewKt$removeAllMarginDecorations$1;->INSTANCE:Lcom/onyx/android/sdk/extension/RecyclerViewKt$removeAllMarginDecorations$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->removeDecorations(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final removeDecorations(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v3

    const-string v4, "getItemDecorationAt(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static final scrollToPositionIfCompletelyInVisible(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/extension/RecyclerViewKt$scrollToPositionIfCompletelyInVisible$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/extension/RecyclerViewKt$scrollToPositionIfCompletelyInVisible$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final scrollToPositionIfInVisible(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/extension/RecyclerViewKt$scrollToPositionIfInVisible$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/extension/RecyclerViewKt$scrollToPositionIfInVisible$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final scrollToPositionSafely(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public static final scrollToPositionWithOffset(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    return-void
.end method

.method public static synthetic scrollToPositionWithOffset$default(Landroidx/recyclerview/widget/RecyclerView;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->scrollToPositionWithOffset(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
