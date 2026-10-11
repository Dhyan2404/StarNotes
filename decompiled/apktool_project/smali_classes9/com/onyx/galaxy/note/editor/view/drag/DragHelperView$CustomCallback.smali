.class public final Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J0\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J \u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J \u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0016J \u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0016\u0010\u001e\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;",
        "Landroidx/customview/widget/ViewDragHelper$Callback;",
        "",
        "state",
        "",
        "onViewDragStateChanged",
        "Landroid/view/View;",
        "capturedChild",
        "activePointerId",
        "onViewCaptured",
        "changedView",
        "left",
        "top",
        "dx",
        "dy",
        "onViewPositionChanged",
        "releasedChild",
        "",
        "xvel",
        "yvel",
        "onViewReleased",
        "view",
        "pointerId",
        "",
        "tryCaptureView",
        "child",
        "clampViewPositionHorizontal",
        "clampViewPositionVertical",
        "a",
        "Z",
        "viewCaptured",
        "b",
        "I",
        "capturedViewLeft",
        "c",
        "capturedViewTop",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)V",
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
.field public a:Z

.field public b:I

.field public c:I

.field public final synthetic d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "child"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->isVerticalOrientation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "child"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->isVerticalOrientation()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "capturedChild"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->a:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->c:I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->a:Z

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "releasedChild"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->access$getViewDragHelper$p(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->b:I

    iget p3, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->c:I

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->a:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;->d:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->tryCaptureView(Landroid/view/View;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
