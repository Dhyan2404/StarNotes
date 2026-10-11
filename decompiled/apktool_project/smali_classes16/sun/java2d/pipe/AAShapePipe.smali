.class public Lsun/java2d/pipe/AAShapePipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/ShapeDrawPipe;
.implements Lsun/java2d/pipe/ParallelogramPipe;


# static fields
.field static renderengine:Lsun/java2d/pipe/RenderingEngine;

.field private static theTile:[B


# instance fields
.field outpipe:Lsun/java2d/pipe/CompositePipe;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/java2d/pipe/RenderingEngine;->getInstance()Lsun/java2d/pipe/RenderingEngine;

    move-result-object v0

    sput-object v0, Lsun/java2d/pipe/AAShapePipe;->renderengine:Lsun/java2d/pipe/RenderingEngine;

    return-void
.end method

.method public constructor <init>(Lsun/java2d/pipe/CompositePipe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/pipe/AAShapePipe;->outpipe:Lsun/java2d/pipe/CompositePipe;

    return-void
.end method

.method private static computeBBox(DDDD)Ljava/awt/geom/Rectangle2D;
    .locals 15

    sub-double v0, p4, p0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    add-double v4, p0, v0

    neg-double v0, v0

    move-wide v11, v0

    move-wide v7, v4

    goto :goto_0

    :cond_0
    move-wide v7, p0

    move-wide v11, v0

    :goto_0
    sub-double v0, p6, p2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    add-double v2, p2, v0

    neg-double v0, v0

    move-wide v13, v0

    move-wide v9, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p2

    move-wide v13, v0

    :goto_1
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v6, v0

    invoke-direct/range {v6 .. v14}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method private static declared-synchronized dropAlphaTile([B)V
    .locals 1

    const-class v0, Lsun/java2d/pipe/AAShapePipe;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lsun/java2d/pipe/AAShapePipe;->theTile:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getAlphaTile(I)[B
    .locals 3

    const-class v0, Lsun/java2d/pipe/AAShapePipe;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/java2d/pipe/AAShapePipe;->theTile:[B

    if-eqz v1, :cond_1

    array-length v2, v1

    if-ge v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lsun/java2d/pipe/AAShapePipe;->theTile:[B

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, p0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 2

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    instance-of v1, v0, Ljava/awt/BasicStroke;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/awt/BasicStroke;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lsun/java2d/pipe/AAShapePipe;->renderPath(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/BasicStroke;)V

    return-void
.end method

.method public drawParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDDDD)V
    .locals 21

    move-wide/from16 v1, p10

    move-wide/from16 v3, p12

    move-wide/from16 v5, p14

    move-wide/from16 v7, p16

    move-wide/from16 v9, p18

    move-wide/from16 v11, p20

    move-wide/from16 v13, p22

    move-wide/from16 v15, p24

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v17

    const/4 v0, 0x4

    new-array v0, v0, [I

    move-object/from16 v18, v0

    sget-object v19, Lsun/java2d/pipe/AAShapePipe;->renderengine:Lsun/java2d/pipe/RenderingEngine;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v18}, Lsun/java2d/pipe/RenderingEngine;->getAATileGenerator(DDDDDDDDLsun/java2d/pipe/Region;[I)Lsun/java2d/pipe/AATileGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static/range {p2 .. p9}, Lsun/java2d/pipe/AAShapePipe;->computeBBox(DDDD)Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v20

    invoke-virtual {v2, v3, v1, v0, v4}, Lsun/java2d/pipe/AAShapePipe;->renderTiles(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Lsun/java2d/pipe/AATileGenerator;[I)V

    return-void
.end method

.method public fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/java2d/pipe/AAShapePipe;->renderPath(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/BasicStroke;)V

    return-void
.end method

.method public fillParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDD)V
    .locals 22

    move-wide/from16 v1, p10

    move-wide/from16 v3, p12

    move-wide/from16 v5, p14

    move-wide/from16 v7, p16

    move-wide/from16 v9, p18

    move-wide/from16 v11, p20

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v17

    const/4 v0, 0x4

    new-array v15, v0, [I

    move-object/from16 v18, v15

    sget-object v0, Lsun/java2d/pipe/AAShapePipe;->renderengine:Lsun/java2d/pipe/RenderingEngine;

    const-wide/16 v13, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v21, v15

    move-wide/from16 v15, v19

    invoke-virtual/range {v0 .. v18}, Lsun/java2d/pipe/RenderingEngine;->getAATileGenerator(DDDDDDDDLsun/java2d/pipe/Region;[I)Lsun/java2d/pipe/AATileGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static/range {p2 .. p9}, Lsun/java2d/pipe/AAShapePipe;->computeBBox(DDDD)Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v21

    invoke-virtual {v2, v3, v1, v0, v4}, Lsun/java2d/pipe/AAShapePipe;->renderTiles(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Lsun/java2d/pipe/AATileGenerator;[I)V

    return-void
.end method

.method public renderPath(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/BasicStroke;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget v2, p1, Lsun/java2d/SunGraphics2D;->strokeHint:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v10, v1

    goto :goto_0

    :cond_0
    move v10, v0

    :goto_0
    iget v2, p1, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-gt v2, v1, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v0

    :goto_1
    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v7

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget-object v4, Lsun/java2d/pipe/AAShapePipe;->renderengine:Lsun/java2d/pipe/RenderingEngine;

    iget-object v6, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-object v5, p2

    move-object v8, p3

    move-object v11, v0

    invoke-virtual/range {v4 .. v11}, Lsun/java2d/pipe/RenderingEngine;->getAATileGenerator(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;Lsun/java2d/pipe/Region;Ljava/awt/BasicStroke;ZZ[I)Lsun/java2d/pipe/AATileGenerator;

    move-result-object p3

    if-nez p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lsun/java2d/pipe/AAShapePipe;->renderTiles(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Lsun/java2d/pipe/AATileGenerator;[I)V

    return-void
.end method

.method public renderTiles(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Lsun/java2d/pipe/AATileGenerator;[I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    :try_start_0
    iget-object v3, v1, Lsun/java2d/pipe/AAShapePipe;->outpipe:Lsun/java2d/pipe/CompositePipe;

    new-instance v4, Ljava/awt/Rectangle;

    const/4 v5, 0x0

    aget v6, v0, v5

    const/4 v7, 0x1

    aget v8, v0, v7

    const/4 v9, 0x2

    aget v10, v0, v9

    sub-int/2addr v10, v6

    const/4 v11, 0x3

    aget v12, v0, v11

    sub-int/2addr v12, v8

    invoke-direct {v4, v6, v8, v10, v12}, Ljava/awt/Rectangle;-><init>(IIII)V

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    invoke-interface {v3, v6, v8, v4, v0}, Lsun/java2d/pipe/CompositePipe;->startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface/range {p3 .. p3}, Lsun/java2d/pipe/AATileGenerator;->getTileWidth()I

    move-result v4

    invoke-interface/range {p3 .. p3}, Lsun/java2d/pipe/AATileGenerator;->getTileHeight()I

    move-result v6

    mul-int v8, v4, v6

    invoke-static {v8}, Lsun/java2d/pipe/AAShapePipe;->getAlphaTile(I)[B

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    aget v7, v0, v7

    :goto_0
    aget v10, v0, v11

    if-ge v7, v10, :cond_4

    aget v10, v0, v5

    :goto_1
    aget v12, v0, v9

    if-ge v10, v12, :cond_3

    sub-int/2addr v12, v10

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v19

    aget v12, v0, v11

    sub-int/2addr v12, v7

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v20

    invoke-interface/range {p3 .. p3}, Lsun/java2d/pipe/AATileGenerator;->getTypicalAlpha()I

    move-result v15

    if-eqz v15, :cond_2

    iget-object v12, v1, Lsun/java2d/pipe/AAShapePipe;->outpipe:Lsun/java2d/pipe/CompositePipe;

    move-object v13, v3

    move v14, v10

    move v2, v15

    move v15, v7

    move/from16 v16, v19

    move/from16 v17, v20

    invoke-interface/range {v12 .. v17}, Lsun/java2d/pipe/CompositePipe;->needTile(Ljava/lang/Object;IIII)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_3

    :cond_0
    const/16 v12, 0xff

    if-ne v2, v12, :cond_1

    invoke-interface/range {p3 .. p3}, Lsun/java2d/pipe/AATileGenerator;->nextTile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v2, p3

    const/4 v14, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v2, p3

    :try_start_3
    invoke-interface {v2, v8, v5, v4}, Lsun/java2d/pipe/AATileGenerator;->getAlpha([BII)V

    move-object v14, v8

    :goto_2
    iget-object v12, v1, Lsun/java2d/pipe/AAShapePipe;->outpipe:Lsun/java2d/pipe/CompositePipe;

    const/4 v15, 0x0

    move-object v13, v3

    move/from16 v16, v4

    move/from16 v17, v10

    move/from16 v18, v7

    invoke-interface/range {v12 .. v20}, Lsun/java2d/pipe/CompositePipe;->renderPathTile(Ljava/lang/Object;[BIIIIII)V

    goto :goto_4

    :cond_2
    :goto_3
    move-object/from16 v2, p3

    invoke-interface/range {p3 .. p3}, Lsun/java2d/pipe/AATileGenerator;->nextTile()V

    iget-object v12, v1, Lsun/java2d/pipe/AAShapePipe;->outpipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {v12, v3, v10, v7}, Lsun/java2d/pipe/CompositePipe;->skipTile(Ljava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    add-int/2addr v10, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_3
    move-object/from16 v2, p3

    add-int/2addr v7, v6

    goto :goto_0

    :cond_4
    move-object/from16 v2, p3

    invoke-interface/range {p3 .. p3}, Lsun/java2d/pipe/AATileGenerator;->dispose()V

    if-eqz v3, :cond_5

    iget-object v0, v1, Lsun/java2d/pipe/AAShapePipe;->outpipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {v0, v3}, Lsun/java2d/pipe/CompositePipe;->endSequence(Ljava/lang/Object;)V

    :cond_5
    if-eqz v8, :cond_6

    invoke-static {v8}, Lsun/java2d/pipe/AAShapePipe;->dropAlphaTile([B)V

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v2, p3

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v2, p3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v2, p3

    const/4 v3, 0x0

    :goto_5
    const/4 v8, 0x0

    :goto_6
    invoke-interface/range {p3 .. p3}, Lsun/java2d/pipe/AATileGenerator;->dispose()V

    if-eqz v3, :cond_7

    iget-object v1, v1, Lsun/java2d/pipe/AAShapePipe;->outpipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {v1, v3}, Lsun/java2d/pipe/CompositePipe;->endSequence(Ljava/lang/Object;)V

    :cond_7
    if-eqz v8, :cond_8

    invoke-static {v8}, Lsun/java2d/pipe/AAShapePipe;->dropAlphaTile([B)V

    :cond_8
    throw v0
.end method
