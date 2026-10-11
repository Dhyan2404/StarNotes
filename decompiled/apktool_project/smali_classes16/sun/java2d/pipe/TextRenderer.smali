.class public Lsun/java2d/pipe/TextRenderer;
.super Lsun/java2d/pipe/GlyphListPipe;
.source "SourceFile"


# instance fields
.field outpipe:Lsun/java2d/pipe/CompositePipe;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/CompositePipe;)V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/pipe/GlyphListPipe;-><init>()V

    iput-object p1, p0, Lsun/java2d/pipe/TextRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    return-void
.end method


# virtual methods
.method public drawGlyphList(Lsun/java2d/SunGraphics2D;Lsun/font/GlyphList;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Lsun/font/GlyphList;->getNumGlyphs()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v3

    invoke-virtual {v3}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v4

    invoke-virtual {v3}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v5

    invoke-virtual {v3}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v6

    invoke-virtual {v3}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result v3

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lsun/font/GlyphList;->getBounds()[I

    move-result-object v8

    new-instance v9, Ljava/awt/Rectangle;

    const/4 v10, 0x0

    aget v11, v8, v10

    const/4 v12, 0x1

    aget v13, v8, v12

    const/4 v14, 0x2

    aget v15, v8, v14

    sub-int/2addr v15, v11

    const/16 v16, 0x3

    aget v17, v8, v16

    sub-int v7, v17, v13

    invoke-direct {v9, v11, v13, v15, v7}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v9}, Lsun/java2d/SunGraphics2D;->untransformShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v7

    iget-object v11, v1, Lsun/java2d/pipe/TextRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {v11, v0, v7, v9, v8}, Lsun/java2d/pipe/CompositePipe;->startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v0, v10

    :goto_0
    if-ge v0, v2, :cond_5

    move-object/from16 v8, p2

    :try_start_1
    invoke-virtual {v8, v0}, Lsun/font/GlyphList;->setGlyphIndex(I)V

    invoke-virtual/range {p2 .. p2}, Lsun/font/GlyphList;->getMetrics()[I

    move-result-object v9

    aget v11, v9, v10

    aget v13, v9, v12

    aget v15, v9, v14

    add-int v10, v11, v15

    aget v9, v9, v16

    add-int/2addr v9, v13

    if-ge v11, v4, :cond_0

    sub-int v11, v4, v11

    move v12, v4

    goto :goto_1

    :cond_0
    move v12, v11

    const/4 v11, 0x0

    :goto_1
    if-ge v13, v5, :cond_1

    sub-int v13, v5, v13

    mul-int/2addr v13, v15

    add-int/2addr v11, v13

    move v13, v5

    :cond_1
    if-le v10, v6, :cond_2

    move v10, v6

    :cond_2
    if-le v9, v3, :cond_3

    move v9, v3

    :cond_3
    if-le v10, v12, :cond_4

    if-le v9, v13, :cond_4

    iget-object v14, v1, Lsun/java2d/pipe/TextRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    sub-int v25, v10, v12

    sub-int v26, v9, v13

    move-object/from16 v18, v14

    move-object/from16 v19, v7

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v25

    move/from16 v23, v26

    invoke-interface/range {v18 .. v23}, Lsun/java2d/pipe/CompositePipe;->needTile(Ljava/lang/Object;IIII)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual/range {p2 .. p2}, Lsun/font/GlyphList;->getGrayBits()[B

    move-result-object v20

    iget-object v9, v1, Lsun/java2d/pipe/TextRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    move-object/from16 v18, v9

    move-object/from16 v19, v7

    move/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v12

    move/from16 v24, v13

    invoke-interface/range {v18 .. v26}, Lsun/java2d/pipe/CompositePipe;->renderPathTile(Ljava/lang/Object;[BIIIIII)V

    goto :goto_2

    :cond_4
    iget-object v9, v1, Lsun/java2d/pipe/TextRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {v9, v7, v12, v13}, Lsun/java2d/pipe/CompositePipe;->skipTile(Ljava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_6

    iget-object v0, v1, Lsun/java2d/pipe/TextRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {v0, v7}, Lsun/java2d/pipe/CompositePipe;->endSequence(Ljava/lang/Object;)V

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_7

    iget-object v1, v1, Lsun/java2d/pipe/TextRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {v1, v7}, Lsun/java2d/pipe/CompositePipe;->endSequence(Ljava/lang/Object;)V

    :cond_7
    throw v0
.end method
