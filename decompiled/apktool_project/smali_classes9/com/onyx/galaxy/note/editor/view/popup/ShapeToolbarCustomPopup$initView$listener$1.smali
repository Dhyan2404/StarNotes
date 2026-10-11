.class public final Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1",
        "Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;",
        "onItemDragEnd",
        "",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "pos",
        "",
        "onItemDragMoving",
        "source",
        "from",
        "target",
        "to",
        "onItemDragStart",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:J

.field public final synthetic c:Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;


# direct methods
.method public constructor <init>(FJLcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->a:F

    iput-wide p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->b:J

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->c:Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->e(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    return-void
.end method

.method public static synthetic b(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->d(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->f(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final d(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->setShadowRadius(Ljava/lang/Number;)V

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->showShadow(Z)V

    :cond_1
    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->access$getToolbarEnabledItemAdapter(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final f(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->setShadowRadius(Ljava/lang/Number;)V

    return-void
.end method


# virtual methods
.method public onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->c:Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->access$getShapeToolbarData$p(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->access$onChangeToolbarData(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)V

    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->a:F

    aput v1, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/omm;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/omm;-><init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->b:J

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->c:Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->c:Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;

    new-instance v0, Lcom/sunia/HTREnginev2/pmm;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/pmm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    iget-wide v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->c:Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->access$getShapeToolbarData$p(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getEnabledList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->moveTo(Ljava/util/List;II)V

    return-void
.end method

.method public onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "null cannot be cast to non-null type com.chad.library.adapter4.viewholder.DataBindingHolder<com.onyx.galaxy.note.databinding.ItemToolbarCustomBinding>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;->shadowLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->showShadow(Z)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    aput v2, p2, v1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->a:F

    aput v1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/nmm;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/nmm;-><init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->b:J

    invoke-virtual {p2, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
