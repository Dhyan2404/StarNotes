.class public final Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2",
        "Landroid/view/View$OnTouchListener;",
        "onTouch",
        "",
        "v",
        "Landroid/view/View;",
        "event",
        "Landroid/view/MotionEvent;",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;->e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;->e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->access$getGestureDetector$p(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;->e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->access$setTouching$p(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;->e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->access$onScrollEnd(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;FF)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;->e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->show(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;->e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-static {p1, v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->access$setTouching$p(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;->e:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->access$onScrollStart(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;FF)V

    :cond_2
    :goto_0
    return v0
.end method
