.class public final Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1",
        "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;",
        "onDismiss",
        "",
        "onShown",
        "pageScrollEnd",
        "pageScrollStart",
        "pageScrollX",
        "offsetX",
        "",
        "pageScrollY",
        "offsetY",
        "showPageJumperPopup",
        "x",
        "y",
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
.field public final synthetic a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->showPageNumView(Z)V

    return-void
.end method

.method public onShown()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->showPageNumView(Z)V

    return-void
.end method

.method public pageScrollEnd()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setPageScrollerScrolling(Z)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public pageScrollStart()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->stopScroll(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setPageScrollerScrolling(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public pageScrollX(F)V
    .locals 7

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;-><init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v6}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public pageScrollY(F)V
    .locals 7

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;-><init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v6}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public showPageJumperPopup(FF)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;->notifyInfoChange(II)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1$showPageJumperPopup$1;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-direct {v0, v2, v3}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1$showPageJumperPopup$1;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;->setPageJumpListener(Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$PageJumpListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p0

    float-to-int p1, p1

    float-to-int p2, p2

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
