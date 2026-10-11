.class public final Lcom/onyx/android/sdk/base/extension/PopupExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a)\u0010\u0004\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\n\u001a1\u0010\u000b\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t\u00a2\u0006\u0002\u0010\u0010\u001a\u0019\u0010\u0011\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u0005\u00a2\u0006\u0002\u0010\u0012\u001a=\u0010\u0013\u001a\u00020\u0014\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\r\u00a2\u0006\u0002\u0010\u001a\u001aE\u0010\u0013\u001a\u00020\u0014\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u001c\u001a!\u0010\u001d\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u001e\u001a9\u0010\u001f\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t\u00a2\u0006\u0002\u0010 \u001a?\u0010!\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\"\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0018\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u00a2\u0006\u0002\u0010#\u001a?\u0010$\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\"\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0018\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u00a2\u0006\u0002\u0010#\u001a?\u0010%\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\"\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0018\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u00a2\u0006\u0002\u0010#\u001a?\u0010&\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\"\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0018\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u00a2\u0006\u0002\u0010#\u001a?\u0010\'\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\"\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0018\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u00a2\u0006\u0002\u0010#\u001a?\u0010(\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\"\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0018\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u00a2\u0006\u0002\u0010#\u001a)\u0010)\u001a\u00020\u0014\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\r\u00a2\u0006\u0002\u0010*\u00a8\u0006+"
    }
    d2 = {
        "getActivitySize",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "Landroid/view/View;",
        "getWindowOffset",
        "moveAboveKeyboard",
        "T",
        "Landroid/widget/PopupWindow;",
        "parent",
        "keyboardHeight",
        "",
        "(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/Number;)Landroid/widget/PopupWindow;",
        "saveWindowLocation",
        "gravity",
        "",
        "x",
        "y",
        "(Landroid/widget/PopupWindow;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;",
        "setFullscreen",
        "(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;",
        "showActionPopup",
        "",
        "view",
        "visibleRect",
        "Landroid/graphics/Rect;",
        "dx",
        "dy",
        "(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;II)V",
        "windowProviderView",
        "(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IILandroid/view/View;)V",
        "showFullScreen",
        "(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;",
        "showInParent",
        "(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;",
        "showLeftAbove",
        "anchor",
        "(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;",
        "showLeftAsideAndTopAlign",
        "showLeftBottom",
        "showLeftOrRightAsideAndTopAlign",
        "showRightAsideAndTopAlign",
        "showRightBottom",
        "updateLeftAbove",
        "(Landroid/widget/PopupWindow;Landroid/view/View;I)V",
        "sdk-base_release"
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
.method public static final getActivitySize(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    return-object v0
.end method

.method public static final getWindowOffset(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationInWindow(Landroid/view/View;)[I

    move-result-object p0

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v1, v0, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aget p0, p0, v1

    aget v0, v0, v1

    sub-int/2addr p0, v0

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    invoke-direct {v0, v2, p0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    return-object v0
.end method

.method public static final moveAboveKeyboard(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/Number;)Landroid/widget/PopupWindow;
    .locals 9
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardHeight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->getWindowOffset(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenContentSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int v4, v1, p1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int v5, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_0
    return-object p0
.end method

.method public static final saveWindowLocation(Landroid/widget/PopupWindow;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;
    .locals 2
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;I",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/base/R$id;->pop_window_gravity:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/onyx/android/sdk/base/R$id;->pop_window_x:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/base/R$id;->pop_window_y:I

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static final setFullscreen(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 2
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1306

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-object p0
.end method

.method public static final showActionPopup(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;II)V
    .locals 6
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "II)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IILandroid/view/View;)V

    return-void
.end method

.method public static final showActionPopup(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IILandroid/view/View;)V
    .locals 10
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowProviderView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 4
    sget-object v9, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v5, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v5

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result v2

    add-int/2addr v2, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, p2, :cond_0

    .line 6
    sget-object v5, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v5

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v1

    .line 7
    :cond_0
    invoke-virtual {v9, p0, v1, p1}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public static synthetic showActionPopup$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public static synthetic showActionPopup$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IILandroid/view/View;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IILandroid/view/View;)V

    return-void
.end method

.method public static final showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 2
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v0, v1, v1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showInParent(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static final showInParent(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;
    .locals 2
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "x"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-static {p0, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->saveWindowLocation(Landroid/widget/PopupWindow;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static final showLeftAbove(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;
    .locals 4
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dx"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object p2

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->getWindowOffset(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->getActivitySize(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    add-int/2addr v2, p3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p3

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, p2

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr p3, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x53

    invoke-static {p0, p1, p4, p2, p3}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showInParent(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic showLeftAbove$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/widget/PopupWindow;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showLeftAbove(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final showLeftAsideAndTopAlign(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;
    .locals 3
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dx"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object p2

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->getWindowOffset(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenRealSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    add-int/2addr v2, p3

    const/4 p3, 0x1

    aget p2, p2, p3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p4, 0x35

    invoke-static {p0, p1, p4, p3, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showInParent(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic showLeftAsideAndTopAlign$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/widget/PopupWindow;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showLeftAsideAndTopAlign(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final showLeftBottom(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;
    .locals 3
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dx"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object p2

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->getWindowOffset(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    add-int/2addr v1, p3

    const/4 p3, 0x1

    aget p2, p2, p3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p4, 0x33

    invoke-static {p0, p1, p4, p3, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showInParent(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic showLeftBottom$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/widget/PopupWindow;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showLeftBottom(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final showLeftOrRightAsideAndTopAlign(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;
    .locals 5
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dx"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRootView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v0, v0, v2

    sub-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v0, v4

    aget v1, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-le v3, v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showLeftAsideAndTopAlign(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showRightAsideAndTopAlign(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    :goto_0
    return-object p0
.end method

.method public static synthetic showLeftOrRightAsideAndTopAlign$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/widget/PopupWindow;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showLeftOrRightAsideAndTopAlign(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final showRightAsideAndTopAlign(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;
    .locals 4
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dx"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->getWindowOffset(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr v2, p2

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr v2, p2

    const/4 p2, 0x1

    aget p2, v0, p2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p4, 0x33

    invoke-static {p0, p1, p4, p3, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showInParent(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic showRightAsideAndTopAlign$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/widget/PopupWindow;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showRightAsideAndTopAlign(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final showRightBottom(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;
    .locals 4
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dx"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->getWindowOffset(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    add-int/2addr v2, p3

    const/4 p3, 0x1

    aget p3, v0, p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p3, p2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p2

    add-int/2addr p3, p2

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr p3, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x33

    invoke-static {p0, p1, p4, p2, p3}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showInParent(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic showRightBottom$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/widget/PopupWindow;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showRightBottom(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final updateLeftAbove(Landroid/widget/PopupWindow;Landroid/view/View;I)V
    .locals 6
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/PopupWindow;",
            ">(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/base/R$id;->pop_window_gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->getWindowOffset(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->getActivitySize(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/onyx/android/sdk/base/R$id;->pop_window_gravity:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/onyx/android/sdk/base/R$id;->pop_window_x:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr p1, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v2, p2, v0}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->saveWindowLocation(Landroid/widget/PopupWindow;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    invoke-virtual {p0, v3, p1, p2, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method
