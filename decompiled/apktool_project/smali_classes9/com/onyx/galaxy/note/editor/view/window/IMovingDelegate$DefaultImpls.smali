.class public final Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static afterDrag(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static beforeDrag(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onConfigurationChanged(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onInterceptTouchEvent(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static onOrientationChanged(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onWindowDismiss(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onWindowLocationChanged(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onWindowShow(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
