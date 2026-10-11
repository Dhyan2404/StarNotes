.class public final Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1$showPageJumperPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$PageJumpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;->showPageJumperPopup(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1$showPageJumperPopup$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/PagePanelPopup$PageJumpListener;",
        "pageJump",
        "",
        "pageIndex",
        "",
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1$showPageJumperPopup$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1$showPageJumperPopup$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pageJump(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1$showPageJumperPopup$1;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/GotoPageEvent;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/GotoPageEvent;-><init>(I)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1$showPageJumperPopup$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->refreshPageScrollerLayout()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1$showPageJumperPopup$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->showForAwhile()V

    return-void
.end method
