.class public final Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0018\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$3",
        "Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;",
        "onFinished",
        "",
        "onStart",
        "onSwiped",
        "startIndex",
        "",
        "endStartIndex",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$3;->a:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$3;->a:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->access$getNotePageListAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->swipeFinish()V

    return-void
.end method

.method public onStart()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$3;->a:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->access$getNotePageListAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->swipeStart()V

    return-void
.end method

.method public onSwiped(II)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$initPageAdapter$3;->a:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->access$getNotePageListAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->toggleSwipe(II)V

    return-void
.end method
