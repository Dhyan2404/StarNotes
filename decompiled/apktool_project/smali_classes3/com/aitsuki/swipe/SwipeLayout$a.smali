.class public final Lcom/aitsuki/swipe/SwipeLayout$a;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aitsuki/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/aitsuki/swipe/SwipeLayout;


# direct methods
.method public constructor <init>(Lcom/aitsuki/swipe/SwipeLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/aitsuki/swipe/SwipeLayout;->access$getContentView$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/aitsuki/swipe/SwipeLayout;->access$getActiveMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0

    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/aitsuki/swipe/SwipeLayout;->access$getLeftMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    add-int/2addr p3, p0

    invoke-static {p2, p1, p3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-static {p2, p1, p0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    :goto_0
    return p0

    :cond_3
    iget-object p2, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/aitsuki/swipe/SwipeLayout;->access$getLeftMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    add-int/2addr v1, p0

    invoke-static {p2, p3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/aitsuki/swipe/SwipeLayout;->access$getRightMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p3, v1

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-static {p2, p3, p0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "child"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->access$updateMenuState(Lcom/aitsuki/swipe/SwipeLayout;I)V

    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "child"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0}, Lcom/aitsuki/swipe/SwipeLayout;->access$setContentViewOffset(Lcom/aitsuki/swipe/SwipeLayout;)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "releasedChild"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/aitsuki/swipe/SwipeLayout;->access$getActiveMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p3}, Lcom/aitsuki/swipe/SwipeLayout;->access$getLeftMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/high16 p3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/aitsuki/swipe/SwipeLayout;->access$getVelocity$p(Lcom/aitsuki/swipe/SwipeLayout;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0, v2, v1, v0}, Lcom/aitsuki/swipe/SwipeLayout;->m(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/aitsuki/swipe/SwipeLayout;->access$getVelocity$p(Lcom/aitsuki/swipe/SwipeLayout;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0, v2, v1, v0}, Lcom/aitsuki/swipe/SwipeLayout;->c(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p1}, Lcom/aitsuki/swipe/SwipeLayout;->getOnScreen$library_release()F

    move-result p1

    cmpl-float p1, p1, p3

    if-lez p1, :cond_3

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0, v2, v1, v0}, Lcom/aitsuki/swipe/SwipeLayout;->m(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0, v2, v1, v0}, Lcom/aitsuki/swipe/SwipeLayout;->c(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/aitsuki/swipe/SwipeLayout;->access$getVelocity$p(Lcom/aitsuki/swipe/SwipeLayout;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_5

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0, v2, v1, v0}, Lcom/aitsuki/swipe/SwipeLayout;->m(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p1}, Lcom/aitsuki/swipe/SwipeLayout;->access$getVelocity$p(Lcom/aitsuki/swipe/SwipeLayout;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0, v2, v1, v0}, Lcom/aitsuki/swipe/SwipeLayout;->c(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p1}, Lcom/aitsuki/swipe/SwipeLayout;->getOnScreen$library_release()F

    move-result p1

    cmpl-float p1, p1, p3

    if-lez p1, :cond_7

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0, v2, v1, v0}, Lcom/aitsuki/swipe/SwipeLayout;->m(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0, v2, v1, v0}, Lcom/aitsuki/swipe/SwipeLayout;->c(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "child"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-virtual {p2}, Lcom/aitsuki/swipe/SwipeLayout;->getSwipeEnable$library_release()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/aitsuki/swipe/SwipeLayout;->access$getContentView$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p2}, Lcom/aitsuki/swipe/SwipeLayout;->access$getLeftMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout$a;->a:Lcom/aitsuki/swipe/SwipeLayout;

    invoke-static {p0}, Lcom/aitsuki/swipe/SwipeLayout;->access$getRightMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
