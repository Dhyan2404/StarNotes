.class public final Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\"\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u000e\u0010\u0008\u001a\u00020\t*\u0006\u0012\u0002\u0008\u00030\u0001\u001a\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005*\u0006\u0012\u0002\u0008\u00030\u0001\u001a\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005*\u0006\u0012\u0002\u0008\u00030\u0001\u001a\u000e\u0010\u000c\u001a\u00020\r*\u0006\u0012\u0002\u0008\u00030\u0001\u001a\"\u0010\u000e\u001a\u00020\t*\u0006\u0012\u0002\u0008\u00030\u00012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0010\u001a.\u0010\u0011\u001a\u00020\u0007*\u0006\u0012\u0002\u0008\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "createIndicatorWindow",
        "Lcom/hjq/window/EasyWindow;",
        "activity",
        "Landroid/app/Activity;",
        "contentView",
        "Landroid/view/View;",
        "duration",
        "",
        "addFullScreenFlag",
        "",
        "getSafeContentView",
        "getSafeDecorView",
        "getSafeWindowParams",
        "Landroid/view/WindowManager$LayoutParams;",
        "requireSafeContentView",
        "block",
        "Lkotlin/Function1;",
        "setXYOffset",
        "viewWidth",
        "xOffset",
        "yOffset",
        "note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final addFullScreenFlag(Lcom/hjq/window/EasyWindow;)V
    .locals 1
    .param p0    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->addWindowFlags(I)Lcom/hjq/window/EasyWindow;

    return-void
.end method

.method public static final createIndicatorWindow(Landroid/app/Activity;Landroid/view/View;I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "I)",
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Activity;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->addFullScreenFlag(Lcom/hjq/window/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0, p2}, Lcom/hjq/window/EasyWindow;->setDuration(I)Lcom/hjq/window/EasyWindow;

    const p1, 0x800033

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->setGravity(I)Lcom/hjq/window/EasyWindow;

    const p1, 0x1030004

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->setAnimStyle(I)Lcom/hjq/window/EasyWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->setOutsideTouchable(Z)Lcom/hjq/window/EasyWindow;

    const-string p1, "apply(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getSafeContentView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static final getSafeWindowParams(Lcom/hjq/window/EasyWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)",
            "Landroid/view/WindowManager$LayoutParams;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static final requireSafeContentView(Lcom/hjq/window/EasyWindow;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Lcom/hjq/window/EasyWindow;
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
            "Lcom/hjq/window/EasyWindow<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeContentView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final setXYOffset(Lcom/hjq/window/EasyWindow;Landroid/view/View;III)I
    .locals 2
    .param p0    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;",
            "Landroid/view/View;",
            "III)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gtz p2, :cond_0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeWindowParams(Lcom/hjq/window/EasyWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/lit8 v0, p2, 0x2

    sub-int v0, p3, v0

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeWindowParams(Lcom/hjq/window/EasyWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne p1, p4, :cond_1

    return p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    div-int/lit8 p1, p2, 0x2

    sub-int/2addr p3, p1

    invoke-virtual {p0, p3}, Lcom/hjq/window/EasyWindow;->setXOffset(I)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0, p4}, Lcom/hjq/window/EasyWindow;->setYOffset(I)Lcom/hjq/window/EasyWindow;

    :cond_2
    return p2
.end method
