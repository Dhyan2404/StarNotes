.class Lsun/java2d/loops/ProcessPath$DrawProcessHandler;
.super Lsun/java2d/loops/ProcessPath$ProcessHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/ProcessPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawProcessHandler"
.end annotation


# instance fields
.field processESP:Lsun/java2d/loops/ProcessPath$EndSubPathHandler;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/ProcessPath$DrawHandler;Lsun/java2d/loops/ProcessPath$EndSubPathHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/java2d/loops/ProcessPath$ProcessHandler;-><init>(Lsun/java2d/loops/ProcessPath$DrawHandler;I)V

    iput-object p1, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iput-object p2, p0, Lsun/java2d/loops/ProcessPath$DrawProcessHandler;->processESP:Lsun/java2d/loops/ProcessPath$EndSubPathHandler;

    return-void
.end method


# virtual methods
.method public PROCESS_LINE(IIIIZ[I)V
    .locals 7

    shr-int/lit8 p1, p1, 0xa

    shr-int/lit8 p2, p2, 0xa

    shr-int/lit8 p3, p3, 0xa

    shr-int/lit8 p4, p4, 0xa

    xor-int v0, p1, p3

    xor-int v1, p2, p4

    or-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v0, :cond_6

    if-eqz p5, :cond_1

    iget-object p3, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget p4, p3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMin:I

    if-gt p4, p2, :cond_0

    iget p4, p3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMax:I

    if-le p4, p2, :cond_0

    iget p4, p3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMin:I

    if-gt p4, p1, :cond_0

    iget p3, p3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMax:I

    if-gt p3, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    aget p3, p6, v2

    if-nez p3, :cond_2

    aput v5, p6, v2

    aput p1, p6, v5

    aput p2, p6, v1

    aput p1, p6, v4

    aput p2, p6, v3

    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    invoke-virtual {p0, p1, p2}, Lsun/java2d/loops/ProcessPath$DrawHandler;->drawPixel(II)V

    goto :goto_0

    :cond_2
    aget p3, p6, v4

    if-ne p1, p3, :cond_3

    aget p3, p6, v3

    if-eq p2, p3, :cond_5

    :cond_3
    aget p3, p6, v5

    if-ne p1, p3, :cond_4

    aget p3, p6, v1

    if-eq p2, p3, :cond_5

    :cond_4
    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    invoke-virtual {p0, p1, p2}, Lsun/java2d/loops/ProcessPath$DrawHandler;->drawPixel(II)V

    aput p1, p6, v4

    aput p2, p6, v3

    :cond_5
    :goto_0
    return-void

    :cond_6
    if-eqz p5, :cond_7

    iget-object v0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v6, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMin:I

    if-gt v6, p2, :cond_a

    iget v6, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMax:I

    if-le v6, p2, :cond_a

    iget v6, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMin:I

    if-gt v6, p1, :cond_a

    iget v0, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMax:I

    if-le v0, p1, :cond_a

    :cond_7
    aget v0, p6, v2

    if-ne v0, v5, :cond_a

    aget v0, p6, v5

    if-ne v0, p1, :cond_8

    aget v0, p6, v1

    if-eq v0, p2, :cond_9

    :cond_8
    aget v0, p6, v4

    if-ne v0, p1, :cond_a

    aget v0, p6, v3

    if-ne v0, p2, :cond_a

    :cond_9
    iget-object v0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    invoke-virtual {v0, p1, p2}, Lsun/java2d/loops/ProcessPath$DrawHandler;->drawPixel(II)V

    :cond_a
    iget-object v0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/java2d/loops/ProcessPath$DrawHandler;->drawLine(IIII)V

    aget v0, p6, v2

    if-nez v0, :cond_b

    aput v5, p6, v2

    aput p1, p6, v5

    aput p2, p6, v1

    aput p1, p6, v4

    aput p2, p6, v3

    :cond_b
    aget p1, p6, v5

    if-ne p1, p3, :cond_c

    aget p1, p6, v1

    if-eq p1, p4, :cond_d

    :cond_c
    aget p1, p6, v4

    if-ne p1, p3, :cond_10

    aget p1, p6, v3

    if-ne p1, p4, :cond_10

    :cond_d
    if-eqz p5, :cond_f

    iget-object p1, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget p2, p1, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMin:I

    if-gt p2, p4, :cond_e

    iget p2, p1, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMax:I

    if-le p2, p4, :cond_e

    iget p2, p1, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMin:I

    if-gt p2, p3, :cond_e

    iget p1, p1, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMax:I

    if-gt p1, p3, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    invoke-virtual {p0, p3, p4}, Lsun/java2d/loops/ProcessPath$DrawHandler;->drawPixel(II)V

    :cond_10
    aput p3, p6, v4

    aput p4, p6, v3

    return-void
.end method

.method public PROCESS_POINT(IIZ[I)V
    .locals 5

    shr-int/lit8 p1, p1, 0xa

    shr-int/lit8 p2, p2, 0xa

    if-eqz p3, :cond_1

    iget-object p3, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v0, p3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMin:I

    if-gt v0, p2, :cond_0

    iget v0, p3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMax:I

    if-le v0, p2, :cond_0

    iget v0, p3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMin:I

    if-gt v0, p1, :cond_0

    iget p3, p3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMax:I

    if-gt p3, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 p3, 0x0

    aget v0, p4, p3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v0, :cond_2

    aput v3, p4, p3

    aput p1, p4, v3

    aput p2, p4, v1

    aput p1, p4, v4

    aput p2, p4, v2

    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    invoke-virtual {p0, p1, p2}, Lsun/java2d/loops/ProcessPath$DrawHandler;->drawPixel(II)V

    goto :goto_0

    :cond_2
    aget p3, p4, v4

    if-ne p1, p3, :cond_3

    aget p3, p4, v2

    if-eq p2, p3, :cond_5

    :cond_3
    aget p3, p4, v3

    if-ne p1, p3, :cond_4

    aget p3, p4, v1

    if-eq p2, p3, :cond_5

    :cond_4
    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    invoke-virtual {p0, p1, p2}, Lsun/java2d/loops/ProcessPath$DrawHandler;->drawPixel(II)V

    aput p1, p4, v4

    aput p2, p4, v2

    :cond_5
    :goto_0
    return-void
.end method

.method public processEndSubPath()V
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$DrawProcessHandler;->processESP:Lsun/java2d/loops/ProcessPath$EndSubPathHandler;

    invoke-interface {p0}, Lsun/java2d/loops/ProcessPath$EndSubPathHandler;->processEndSubPath()V

    return-void
.end method

.method public processFixedLine(IIII[IZZ)V
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    xor-int v4, v0, v2

    xor-int v5, v1, v3

    or-int/2addr v4, v5

    and-int/lit16 v5, v4, -0x400

    if-nez v5, :cond_1

    if-nez v4, :cond_0

    add-int/lit16 v0, v0, 0x200

    add-int/lit16 v1, v1, 0x200

    move-object v4, p0

    move-object/from16 v8, p5

    move/from16 v7, p6

    invoke-virtual {p0, v0, v1, v7, v8}, Lsun/java2d/loops/ProcessPath$DrawProcessHandler;->PROCESS_POINT(IIZ[I)V

    :cond_0
    return-void

    :cond_1
    move-object v4, p0

    move-object/from16 v8, p5

    move/from16 v7, p6

    if-eq v0, v2, :cond_d

    if-ne v1, v3, :cond_2

    goto/16 :goto_6

    :cond_2
    sub-int v5, v2, v0

    sub-int v6, v3, v1

    and-int/lit16 v9, v0, -0x400

    and-int/lit16 v10, v1, -0x400

    and-int/lit16 v11, v2, -0x400

    and-int/lit16 v12, v3, -0x400

    if-eq v9, v0, :cond_7

    if-ne v10, v1, :cond_3

    goto :goto_1

    :cond_3
    if-ge v0, v2, :cond_4

    add-int/lit16 v9, v9, 0x400

    :cond_4
    if-ge v1, v3, :cond_5

    add-int/lit16 v13, v10, 0x400

    goto :goto_0

    :cond_5
    move v13, v10

    :goto_0
    sub-int v14, v9, v0

    mul-int/2addr v14, v6

    div-int/2addr v14, v5

    add-int/2addr v14, v1

    if-lt v14, v10, :cond_6

    add-int/lit16 v10, v10, 0x400

    if-gt v14, v10, :cond_6

    add-int/lit16 v13, v14, 0x200

    goto :goto_2

    :cond_6
    sub-int v9, v13, v1

    mul-int/2addr v9, v5

    div-int/2addr v9, v6

    add-int/2addr v9, v0

    add-int/lit16 v9, v9, 0x200

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit16 v9, v0, 0x200

    add-int/lit16 v13, v1, 0x200

    :goto_2
    if-eq v11, v2, :cond_c

    if-ne v12, v3, :cond_8

    goto :goto_4

    :cond_8
    if-le v0, v2, :cond_9

    add-int/lit16 v11, v11, 0x400

    :cond_9
    if-le v1, v3, :cond_a

    add-int/lit16 v0, v12, 0x400

    goto :goto_3

    :cond_a
    move v0, v12

    :goto_3
    sub-int v1, v11, v2

    mul-int/2addr v1, v6

    div-int/2addr v1, v5

    add-int/2addr v1, v3

    if-lt v1, v12, :cond_b

    add-int/lit16 v12, v12, 0x400

    if-gt v1, v12, :cond_b

    add-int/lit16 v1, v1, 0x200

    move v6, v1

    move v3, v9

    move v5, v11

    goto :goto_7

    :cond_b
    sub-int v1, v0, v3

    mul-int/2addr v1, v5

    div-int/2addr v1, v6

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x200

    move v6, v0

    move v5, v1

    goto :goto_5

    :cond_c
    :goto_4
    add-int/lit16 v0, v2, 0x200

    add-int/lit16 v1, v3, 0x200

    move v5, v0

    move v6, v1

    :goto_5
    move v3, v9

    goto :goto_7

    :cond_d
    :goto_6
    add-int/lit16 v0, v0, 0x200

    add-int/lit16 v2, v2, 0x200

    add-int/lit16 v1, v1, 0x200

    add-int/lit16 v3, v3, 0x200

    move v13, v1

    move v5, v2

    move v6, v3

    move v3, v0

    :goto_7
    move-object v2, p0

    move v4, v13

    move/from16 v7, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lsun/java2d/loops/ProcessPath$DrawProcessHandler;->PROCESS_LINE(IIIIZ[I)V

    return-void
.end method
