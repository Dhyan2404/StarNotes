.class final Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "animValue",
        "",
        "isAnim",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->invoke(FZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getSelectLinePaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getOriginSelectLineAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getSelectFillPaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getOriginSelectFillAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getLastFillPaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getOriginLastFillAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getSelectLinePaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getOriginSelectLineAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getSelectFillPaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getOriginSelectFillAlpha$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getLastFillPaint$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$showSelectedAnim$1;->this$0:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
