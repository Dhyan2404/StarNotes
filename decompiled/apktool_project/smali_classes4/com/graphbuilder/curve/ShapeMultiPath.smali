.class public Lcom/graphbuilder/curve/ShapeMultiPath;
.super Lcom/graphbuilder/curve/MultiPath;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Shape;


# instance fields
.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/graphbuilder/curve/MultiPath;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->j:I

    .line 3
    iput v0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/graphbuilder/curve/MultiPath;-><init>(I)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->j:I

    .line 7
    iput v0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    const/4 p0, 0x2

    if-lt p1, p0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dimension >= 2 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public contains(DD)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/graphbuilder/curve/ShapeMultiPath;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->crossPath(Ljava/awt/geom/PathIterator;DD)I

    move-result p1

    .line 2
    iget p0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->j:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_1

    if-eqz p1, :cond_0

    move p2, p3

    :cond_0
    return p2

    :cond_1
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_2

    move p2, p3

    :cond_2
    return p2
.end method

.method public contains(DDDD)Z
    .locals 34

    move-object/from16 v0, p0

    move-wide/from16 v13, p1

    move-wide/from16 v11, p3

    add-double v9, v13, p5

    add-double v7, v11, p7

    .line 4
    invoke-virtual/range {p0 .. p4}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DD)Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_0

    return v15

    .line 5
    :cond_0
    invoke-virtual {v0, v13, v14, v7, v8}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DD)Z

    move-result v1

    if-nez v1, :cond_1

    return v15

    .line 6
    :cond_1
    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DD)Z

    move-result v1

    if-nez v1, :cond_2

    return v15

    .line 7
    :cond_2
    invoke-virtual {v0, v9, v10, v7, v8}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DD)Z

    move-result v1

    if-nez v1, :cond_3

    return v15

    .line 8
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/graphbuilder/curve/MultiPath;->getNumPoints()I

    move-result v5

    if-nez v5, :cond_4

    return v15

    .line 9
    :cond_4
    invoke-virtual {v0, v15}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v1

    .line 10
    iget v2, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    aget-wide v2, v1, v2

    .line 11
    iget v4, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    aget-wide v16, v1, v4

    const/16 v18, 0x1

    move-wide/from16 v19, v2

    move-wide/from16 v21, v16

    move/from16 v6, v18

    :goto_0
    if-ge v6, v5, :cond_a

    .line 12
    invoke-virtual {v0, v6}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v1

    .line 13
    iget v2, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    aget-wide v23, v1, v2

    .line 14
    iget v2, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    aget-wide v25, v1, v2

    .line 15
    invoke-virtual {v0, v6}, Lcom/graphbuilder/curve/MultiPath;->getType(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/graphbuilder/curve/MultiPath;->LINE_TO:Ljava/lang/Object;

    if-ne v1, v2, :cond_8

    const/16 v17, 0x0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move/from16 v28, v5

    move/from16 v27, v6

    move-wide/from16 v5, v19

    move-wide/from16 v29, v7

    move-wide/from16 v7, v21

    move-wide/from16 v31, v9

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, v31

    move/from16 v33, v15

    move-wide/from16 v15, p3

    .line 16
    invoke-static/range {v1 .. v17}, Lcom/graphbuilder/geom/Geom;->getSegSegIntersection(DDDDDDDD[D)Ljava/lang/Object;

    move-result-object v1

    sget-object v15, Lcom/graphbuilder/geom/Geom;->INTERSECT:Ljava/lang/Object;

    if-ne v1, v15, :cond_5

    return v33

    :cond_5
    const/16 v17, 0x0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p1

    move-object v0, v15

    move-wide/from16 v15, v29

    .line 17
    invoke-static/range {v1 .. v17}, Lcom/graphbuilder/geom/Geom;->getSegSegIntersection(DDDDDDDD[D)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return v33

    :cond_6
    const/16 v17, 0x0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-wide/from16 v9, p1

    move-wide/from16 v11, v29

    move-wide/from16 v13, v31

    move-wide/from16 v15, v29

    .line 18
    invoke-static/range {v1 .. v17}, Lcom/graphbuilder/geom/Geom;->getSegSegIntersection(DDDDDDDD[D)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return v33

    :cond_7
    const/16 v17, 0x0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-wide/from16 v9, v31

    move-wide/from16 v11, p3

    move-wide/from16 v13, v31

    move-wide/from16 v15, v29

    .line 19
    invoke-static/range {v1 .. v17}, Lcom/graphbuilder/geom/Geom;->getSegSegIntersection(DDDDDDDD[D)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_9

    return v33

    :cond_8
    move/from16 v28, v5

    move/from16 v27, v6

    move-wide/from16 v29, v7

    move-wide/from16 v31, v9

    move/from16 v33, v15

    :cond_9
    add-int/lit8 v6, v27, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v13, p1

    move-wide/from16 v11, p3

    move-wide/from16 v19, v23

    move-wide/from16 v21, v25

    move/from16 v5, v28

    move-wide/from16 v7, v29

    move-wide/from16 v9, v31

    move/from16 v15, v33

    goto/16 :goto_0

    :cond_a
    return v18
.end method

.method public contains(Ljava/awt/geom/Point2D;)Z
    .locals 4

    .line 3
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DD)Z

    move-result p0

    return p0
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 20
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DDDD)Z

    move-result p0

    return p0
.end method

.method public getBasisVectors()[I
    .locals 1

    iget v0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    iget p0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 0

    invoke-virtual {p0}, Lcom/graphbuilder/curve/ShapeMultiPath;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/graphbuilder/curve/MultiPath;->getNumPoints()I

    move-result v1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v4, -0x10000000000001L

    const/4 v6, 0x0

    move-wide v8, v2

    move-wide v10, v8

    move-wide v2, v4

    move v7, v6

    move v12, v7

    :goto_0
    if-ge v7, v1, :cond_7

    invoke-virtual {v0, v7}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v13

    invoke-virtual {v0, v7}, Lcom/graphbuilder/curve/MultiPath;->getType(I)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lcom/graphbuilder/curve/MultiPath;->MOVE_TO:Ljava/lang/Object;

    const/16 v16, 0x1

    if-ne v14, v15, :cond_1

    add-int/lit8 v14, v1, -0x1

    if-ge v7, v14, :cond_0

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v0, v14}, Lcom/graphbuilder/curve/MultiPath;->getType(I)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lcom/graphbuilder/curve/MultiPath;->LINE_TO:Ljava/lang/Object;

    if-ne v14, v15, :cond_0

    goto :goto_1

    :cond_0
    move v14, v6

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v14, v16

    :goto_2
    if-eqz v14, :cond_6

    iget v12, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    aget-wide v14, v13, v12

    cmpg-double v12, v14, v8

    if-gez v12, :cond_2

    move-wide v8, v14

    :cond_2
    iget v12, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    aget-wide v12, v13, v12

    cmpg-double v17, v12, v10

    if-gez v17, :cond_3

    move-wide v10, v12

    :cond_3
    cmpl-double v17, v14, v4

    if-lez v17, :cond_4

    move-wide v4, v14

    :cond_4
    cmpl-double v14, v12, v2

    if-lez v14, :cond_5

    move-wide v2, v12

    :cond_5
    move/from16 v12, v16

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    if-nez v12, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    sub-double v12, v4, v8

    sub-double v14, v2, v10

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public getDistSq(DD)D
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/graphbuilder/curve/MultiPath;->getNumPoints()I

    move-result v1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v4

    iget v5, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    aget-wide v5, v4, v5

    iget v7, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    aget-wide v7, v4, v7

    const/4 v4, 0x1

    move-wide v9, v5

    move-wide v11, v7

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v5

    iget v6, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    aget-wide v18, v5, v6

    iget v6, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    aget-wide v20, v5, v6

    invoke-virtual {v0, v4}, Lcom/graphbuilder/curve/MultiPath;->getType(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/graphbuilder/curve/MultiPath;->LINE_TO:Ljava/lang/Object;

    if-ne v5, v6, :cond_1

    const/16 v17, 0x0

    move-wide/from16 v5, v18

    move-wide/from16 v7, v20

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    invoke-static/range {v5 .. v17}, Lcom/graphbuilder/geom/Geom;->ptSegDistSq(DDDDDD[D)D

    move-result-wide v5

    cmpg-double v7, v5, v2

    if-gez v7, :cond_1

    move-wide v2, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v9, v18

    move-wide/from16 v11, v20

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/dmm;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/dmm;-><init>(Lcom/graphbuilder/curve/ShapeMultiPath;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;
    .locals 0

    .line 2
    new-instance p2, Lcom/sunia/HTREnginev2/dmm;

    invoke-direct {p2, p0, p1}, Lcom/sunia/HTREnginev2/dmm;-><init>(Lcom/graphbuilder/curve/ShapeMultiPath;Ljava/awt/geom/AffineTransform;)V

    return-object p2
.end method

.method public getWindingRule()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->j:I

    return p0
.end method

.method public intersects(DDDD)Z
    .locals 34

    move-object/from16 v0, p0

    move-wide/from16 v13, p1

    move-wide/from16 v11, p3

    add-double v9, v13, p5

    add-double v7, v11, p7

    .line 1
    invoke-virtual/range {p0 .. p4}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DD)Z

    move-result v1

    const/16 v18, 0x1

    if-eqz v1, :cond_0

    return v18

    .line 2
    :cond_0
    invoke-virtual {v0, v13, v14, v7, v8}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    return v18

    .line 3
    :cond_1
    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    return v18

    .line 4
    :cond_2
    invoke-virtual {v0, v9, v10, v7, v8}, Lcom/graphbuilder/curve/ShapeMultiPath;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    return v18

    .line 5
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/graphbuilder/curve/MultiPath;->getNumPoints()I

    move-result v15

    const/4 v5, 0x0

    if-nez v15, :cond_4

    return v5

    .line 6
    :cond_4
    invoke-virtual {v0, v5}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v1

    .line 7
    iget v2, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    aget-wide v2, v1, v2

    .line 8
    iget v4, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    aget-wide v16, v1, v4

    move-wide/from16 v19, v2

    move-wide/from16 v21, v16

    move/from16 v6, v18

    :goto_0
    if-ge v6, v15, :cond_c

    .line 9
    invoke-virtual {v0, v6}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v1

    .line 10
    iget v2, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    aget-wide v23, v1, v2

    .line 11
    iget v2, v0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    aget-wide v25, v1, v2

    .line 12
    invoke-virtual {v0, v6}, Lcom/graphbuilder/curve/MultiPath;->getType(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/graphbuilder/curve/MultiPath;->LINE_TO:Ljava/lang/Object;

    if-ne v1, v2, :cond_a

    const/16 v17, 0x0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move/from16 v28, v5

    move/from16 v27, v6

    move-wide/from16 v5, v19

    move-wide/from16 v29, v7

    move-wide/from16 v7, v21

    move-wide/from16 v31, v9

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, v31

    move/from16 v33, v15

    move-wide/from16 v15, p3

    .line 13
    invoke-static/range {v1 .. v17}, Lcom/graphbuilder/geom/Geom;->getSegSegIntersection(DDDDDDDD[D)Ljava/lang/Object;

    move-result-object v1

    sget-object v15, Lcom/graphbuilder/geom/Geom;->INTERSECT:Ljava/lang/Object;

    if-ne v1, v15, :cond_5

    return v18

    :cond_5
    const/16 v17, 0x0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p1

    move-object v0, v15

    move-wide/from16 v15, v29

    .line 14
    invoke-static/range {v1 .. v17}, Lcom/graphbuilder/geom/Geom;->getSegSegIntersection(DDDDDDDD[D)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return v18

    :cond_6
    const/16 v17, 0x0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-wide/from16 v9, p1

    move-wide/from16 v11, v29

    move-wide/from16 v13, v31

    move-wide/from16 v15, v29

    .line 15
    invoke-static/range {v1 .. v17}, Lcom/graphbuilder/geom/Geom;->getSegSegIntersection(DDDDDDDD[D)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return v18

    :cond_7
    const/16 v17, 0x0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-wide/from16 v9, v31

    move-wide/from16 v11, p3

    move-wide/from16 v13, v31

    move-wide/from16 v15, v29

    .line 16
    invoke-static/range {v1 .. v17}, Lcom/graphbuilder/geom/Geom;->getSegSegIntersection(DDDDDDDD[D)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return v18

    :cond_8
    cmpl-double v0, v23, p1

    if-ltz v0, :cond_9

    cmpl-double v0, v25, p3

    if-ltz v0, :cond_9

    cmpg-double v0, v23, v31

    if-gtz v0, :cond_9

    cmpg-double v0, v25, v29

    if-gtz v0, :cond_9

    return v18

    :cond_9
    cmpl-double v0, v19, p1

    if-ltz v0, :cond_b

    cmpl-double v0, v21, p3

    if-ltz v0, :cond_b

    cmpg-double v0, v19, v31

    if-gtz v0, :cond_b

    cmpg-double v0, v21, v29

    if-gtz v0, :cond_b

    return v18

    :cond_a
    move/from16 v28, v5

    move/from16 v27, v6

    move-wide/from16 v29, v7

    move-wide/from16 v31, v9

    move/from16 v33, v15

    :cond_b
    add-int/lit8 v6, v27, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v13, p1

    move-wide/from16 v11, p3

    move-wide/from16 v19, v23

    move-wide/from16 v21, v25

    move/from16 v5, v28

    move-wide/from16 v7, v29

    move-wide/from16 v9, v31

    move/from16 v15, v33

    goto/16 :goto_0

    :cond_c
    move/from16 v28, v5

    return v28
.end method

.method public intersects(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 17
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/graphbuilder/curve/ShapeMultiPath;->intersects(DDDD)Z

    move-result p0

    return p0
.end method

.method public setBasisVectors([I)V
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result v1

    if-ltz v0, :cond_0

    if-ltz p1, :cond_0

    if-ge v0, v1, :cond_0

    if-ge p1, v1, :cond_0

    iput v0, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->k:I

    iput p1, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->l:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "basis vectors must be >= 0 and < dimension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWindingRule(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "winding rule must be WIND_EVEN_ODD or WIND_NON_ZERO"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/graphbuilder/curve/ShapeMultiPath;->j:I

    return-void
.end method
