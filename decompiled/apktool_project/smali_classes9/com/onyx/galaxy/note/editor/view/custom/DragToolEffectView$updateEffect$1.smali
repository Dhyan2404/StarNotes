.class final Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->updateEffect(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragToolEffectView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,331:1\n254#2:332\n*S KotlinDebug\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1\n*L\n121#1:332\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDragToolEffectView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,331:1\n254#2:332\n*S KotlinDebug\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1\n*L\n121#1:332\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

.field final synthetic $isDragging:Z

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;


# direct methods
.method public constructor <init>(ZLcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->$isDragging:Z

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 0

    .line 2
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->$isDragging:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$startHideAnim(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$updatePaintColor(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    .line 7
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->setSelectDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 8
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$updatePath(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    .line 9
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$startShowAnim(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->getSelectDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq p1, p2, :cond_3

    .line 11
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->setSelectDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 12
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$updatePath(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    .line 13
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$updateEffect$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$showSelectedAnim(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V

    :cond_3
    return-void
.end method
