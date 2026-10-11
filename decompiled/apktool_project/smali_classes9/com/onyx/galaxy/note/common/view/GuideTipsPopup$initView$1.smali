.class final Lcom/onyx/galaxy/note/common/view/GuideTipsPopup$initView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/PointF;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "indicatorOffset",
        "Landroid/graphics/PointF;",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup$initView$1;->this$0:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup$initView$1;->invoke(Landroid/graphics/PointF;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/graphics/PointF;)V
    .locals 4
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "indicatorOffset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v2, :cond_4

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup$initView$1;->this$0:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;->access$getWeakReferenceAnchorView$p(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 4
    iget-object v1, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup$initView$1;->this$0:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup$initView$1;->this$0:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    invoke-static {v3}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;->access$getViewOffset$p(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;)Landroid/graphics/Point;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;->access$getPositionOffset(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup$initView$1;->this$0:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    .line 6
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 7
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, v1, p1, v0, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_4
    return-void
.end method
