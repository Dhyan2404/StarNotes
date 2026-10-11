.class Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;


# direct methods
.method public constructor <init>(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {p0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->b(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v2}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    iget-object v4, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v4}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$100(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Z

    move-result v4

    const/4 v14, 0x1

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v4}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$200(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Landroid/view/ScaleGestureDetector;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v4, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v4}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$200(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Landroid/view/ScaleGestureDetector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/sunia/HTREnginev2/q;->a(I)V

    return v14

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v18

    const/16 v13, 0x19

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v6, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v6}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$300(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)J

    move-result-wide v6

    add-long v21, v4, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v14, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v1, 0x3

    if-eq v4, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/sunia/HTREnginev2/q;->a(I)V

    :goto_0
    move/from16 v26, v14

    goto/16 :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    :goto_1
    if-ge v3, v12, :cond_4

    iget-object v4, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v4}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v4

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    iget-object v9, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v9}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$300(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v9

    invoke-virtual {v1, v13, v3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v10

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalOrientation(I)F

    move-result v11

    const/16 v23, 0x1

    move/from16 v24, v12

    move v12, v2

    move/from16 v25, v13

    move v13, v15

    move/from16 v26, v14

    move/from16 v14, v23

    invoke-virtual/range {v4 .. v14}, Lcom/sunia/HTREnginev2/q;->a(FFJFFFIIZ)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v12, v24

    move/from16 v13, v25

    move/from16 v14, v26

    goto :goto_1

    :cond_4
    move/from16 v26, v14

    iget-object v0, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v4

    const/4 v14, 0x0

    move/from16 v5, v16

    move/from16 v6, v17

    move-wide/from16 v7, v21

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move v12, v2

    move v13, v15

    invoke-virtual/range {v4 .. v14}, Lcom/sunia/HTREnginev2/q;->a(FFJFFFIIZ)V

    goto :goto_2

    :cond_5
    move/from16 v26, v14

    iget-object v0, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v4

    move/from16 v5, v16

    move/from16 v6, v17

    move-wide/from16 v7, v21

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move v12, v2

    move v13, v15

    invoke-virtual/range {v4 .. v13}, Lcom/sunia/HTREnginev2/q;->b(FFJFFFII)V

    goto :goto_2

    :cond_6
    move/from16 v26, v14

    iget-object v0, v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v4

    move/from16 v5, v16

    move/from16 v6, v17

    move-wide/from16 v7, v21

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move v12, v2

    move v13, v15

    invoke-virtual/range {v4 .. v13}, Lcom/sunia/HTREnginev2/q;->c(FFJFFFII)V

    :goto_2
    return v26
.end method
