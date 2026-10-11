.class Lsun/java2d/loops/ProcessPath$FillProcessHandler;
.super Lsun/java2d/loops/ProcessPath$ProcessHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/ProcessPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FillProcessHandler"
.end annotation


# instance fields
.field fd:Lsun/java2d/loops/ProcessPath$FillData;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/ProcessPath$DrawHandler;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/java2d/loops/ProcessPath$ProcessHandler;-><init>(Lsun/java2d/loops/ProcessPath$DrawHandler;I)V

    new-instance p1, Lsun/java2d/loops/ProcessPath$FillData;

    invoke-direct {p1}, Lsun/java2d/loops/ProcessPath$FillData;-><init>()V

    iput-object p1, p0, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->fd:Lsun/java2d/loops/ProcessPath$FillData;

    return-void
.end method


# virtual methods
.method public processEndSubPath()V
    .locals 1

    iget-object v0, p0, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->fd:Lsun/java2d/loops/ProcessPath$FillData;

    invoke-virtual {v0}, Lsun/java2d/loops/ProcessPath$FillData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->fd:Lsun/java2d/loops/ProcessPath$FillData;

    invoke-virtual {p0}, Lsun/java2d/loops/ProcessPath$FillData;->setEnded()Z

    :cond_0
    return-void
.end method

.method public processFixedLine(IIII[IZZ)V
    .locals 25

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v9, 0x0

    if-eqz p6, :cond_7

    const/4 v4, 0x6

    new-array v7, v4, [I

    aput v0, v7, v9

    const/4 v6, 0x1

    aput v1, v7, v6

    const/16 v19, 0x2

    aput v2, v7, v19

    const/16 v20, 0x3

    aput v3, v7, v20

    const/4 v5, 0x4

    aput v9, v7, v5

    const/16 v21, 0x5

    aput v9, v7, v21

    iget-object v0, v8, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v1, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMinf:F

    const/high16 v2, 0x44800000    # 1024.0f

    mul-float/2addr v1, v2

    float-to-int v4, v1

    iget v1, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMaxf:F

    mul-float/2addr v1, v2

    float-to-int v3, v1

    iget v1, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMinf:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMaxf:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x2

    move v10, v1

    move v11, v0

    move-object v12, v7

    invoke-static/range {v10 .. v16}, Lsun/java2d/loops/ProcessPath;->access$100(II[IIIII)I

    move-result v2

    if-ne v2, v5, :cond_0

    return-void

    :cond_0
    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    move v10, v1

    move v11, v0

    move-object v12, v7

    invoke-static/range {v10 .. v16}, Lsun/java2d/loops/ProcessPath;->access$100(II[IIIII)I

    move-result v0

    if-ne v0, v5, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lsun/java2d/loops/ProcessPath;->access$200(I)Z

    move-result v22

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v18, 0x5

    move v10, v4

    move v11, v3

    move-object v12, v7

    invoke-static/range {v10 .. v18}, Lsun/java2d/loops/ProcessPath;->access$300(II[IIIIIII)I

    move-result v0

    if-nez v0, :cond_2

    aget v1, v7, v5

    aget v2, v7, v21

    aget v10, v7, v9

    aget v11, v7, v6

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move v13, v3

    move v3, v10

    move v10, v4

    move v4, v11

    move v15, v5

    move-object/from16 v5, p5

    move v14, v6

    move v6, v12

    move-object/from16 v23, v7

    move/from16 v7, v22

    invoke-virtual/range {v0 .. v7}, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->processFixedLine(IIII[IZZ)V

    goto :goto_0

    :cond_2
    move v13, v3

    move v10, v4

    move v15, v5

    move v14, v6

    move-object/from16 v23, v7

    if-ne v0, v15, :cond_3

    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x4

    const/16 v18, 0x5

    move v11, v13

    move-object/from16 v12, v23

    move v13, v0

    move v0, v14

    move v14, v1

    move/from16 v24, v15

    move v15, v2

    invoke-static/range {v10 .. v18}, Lsun/java2d/loops/ProcessPath;->access$300(II[IIIIIII)I

    move-result v10

    if-nez v22, :cond_5

    if-ne v10, v0, :cond_4

    goto :goto_1

    :cond_4
    move v11, v9

    goto :goto_2

    :cond_5
    :goto_1
    move v11, v0

    :goto_2
    aget v1, v23, v9

    aget v2, v23, v0

    aget v3, v23, v19

    aget v4, v23, v20

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->processFixedLine(IIII[IZZ)V

    if-nez v10, :cond_6

    aget v1, v23, v19

    aget v2, v23, v20

    aget v3, v23, v24

    aget v4, v23, v21

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->processFixedLine(IIII[IZZ)V

    :cond_6
    return-void

    :cond_7
    iget-object v4, v8, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->fd:Lsun/java2d/loops/ProcessPath$FillData;

    invoke-virtual {v4}, Lsun/java2d/loops/ProcessPath$FillData;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v8, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->fd:Lsun/java2d/loops/ProcessPath$FillData;

    invoke-virtual {v4}, Lsun/java2d/loops/ProcessPath$FillData;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, v8, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->fd:Lsun/java2d/loops/ProcessPath$FillData;

    invoke-virtual {v4, v0, v1, v9}, Lsun/java2d/loops/ProcessPath$FillData;->addPoint(IIZ)V

    :cond_9
    iget-object v0, v8, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->fd:Lsun/java2d/loops/ProcessPath$FillData;

    invoke-virtual {v0, v2, v3, v9}, Lsun/java2d/loops/ProcessPath$FillData;->addPoint(IIZ)V

    if-eqz p7, :cond_a

    iget-object v0, v8, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->fd:Lsun/java2d/loops/ProcessPath$FillData;

    invoke-virtual {v0}, Lsun/java2d/loops/ProcessPath$FillData;->setEnded()Z

    :cond_a
    return-void
.end method
