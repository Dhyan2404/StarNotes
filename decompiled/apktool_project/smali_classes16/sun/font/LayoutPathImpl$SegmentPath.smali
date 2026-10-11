.class public final Lsun/font/LayoutPathImpl$SegmentPath;
.super Lsun/font/LayoutPathImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/LayoutPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentPath"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/LayoutPathImpl$SegmentPath$Segment;,
        Lsun/font/LayoutPathImpl$SegmentPath$Mapper;,
        Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;
    }
.end annotation


# instance fields
.field private data:[D

.field etype:Lsun/font/LayoutPathImpl$EndType;


# direct methods
.method public constructor <init>([DLsun/font/LayoutPathImpl$EndType;)V
    .locals 0

    invoke-direct {p0}, Lsun/font/LayoutPathImpl;-><init>()V

    iput-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    iput-object p2, p0, Lsun/font/LayoutPathImpl$SegmentPath;->etype:Lsun/font/LayoutPathImpl$EndType;

    return-void
.end method

.method public static synthetic access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D
    .locals 0

    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    return-object p0
.end method

.method private calcoffset(IZLjava/awt/geom/Point2D;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    add-int/lit8 v2, p1, -0x3

    aget-wide v2, v1, v2

    add-int/lit8 v4, p1, -0x2

    aget-wide v4, v1, v4

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    sub-double/2addr v6, v2

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v8

    sub-double/2addr v8, v4

    iget-object v0, v0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    aget-wide v10, v0, p1

    sub-double/2addr v10, v2

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, v0, v1

    sub-double/2addr v1, v4

    add-int/lit8 v3, p1, 0x2

    aget-wide v3, v0, v3

    add-int/lit8 v5, p1, -0x1

    aget-wide v12, v0, v5

    sub-double/2addr v3, v12

    mul-double v14, v6, v10

    mul-double v16, v8, v1

    add-double v14, v14, v16

    div-double/2addr v14, v3

    neg-double v0, v1

    mul-double/2addr v6, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    div-double/2addr v6, v3

    if-nez p2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, v14, v0

    if-gez v2, :cond_0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    cmpl-double v0, v14, v3

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v14

    :goto_0
    add-double/2addr v3, v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v6, v7}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-void
.end method

.method public static varargs get(Lsun/font/LayoutPathImpl$EndType;[D)Lsun/font/LayoutPathImpl$SegmentPath;
    .locals 1

    new-instance v0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;

    invoke-direct {v0}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->build(Lsun/font/LayoutPathImpl$EndType;[D)Lsun/font/LayoutPathImpl$SegmentPath;

    move-result-object p0

    return-object p0
.end method

.method private getClosedAdvance(DZ)D
    .locals 6

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath;->etype:Lsun/font/LayoutPathImpl$EndType;

    invoke-virtual {v0}, Lsun/font/LayoutPathImpl$EndType;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    const/4 v1, 0x2

    aget-wide v2, v0, v1

    sub-double/2addr p1, v2

    invoke-virtual {p0}, Lsun/font/LayoutPathImpl$SegmentPath;->length()D

    move-result-wide v2

    div-double v2, p1, v2

    double-to-int v0, v2

    int-to-double v2, v0

    invoke-virtual {p0}, Lsun/font/LayoutPathImpl$SegmentPath;->length()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr p1, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_0

    cmpl-double v0, p1, v2

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lsun/font/LayoutPathImpl$SegmentPath;->length()D

    move-result-wide v2

    add-double/2addr p1, v2

    :cond_1
    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    aget-wide v0, p0, v1

    add-double/2addr p1, v0

    :cond_2
    return-wide p1
.end method

.method private getSegmentIndexForAdvance(DZ)I
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lsun/font/LayoutPathImpl$SegmentPath;->getClosedAdvance(DZ)D

    move-result-wide p1

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x5

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    aget-wide v2, v2, v1

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_1

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x2

    return v1
.end method

.method private locateAndGetIndex(Ljava/awt/geom/Point2D;ZLjava/awt/geom/Point2D;)I
    .locals 7

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-direct {p0, v2, v3, p2}, Lsun/font/LayoutPathImpl$SegmentPath;->getSegmentIndexForAdvance(DZ)I

    move-result p1

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lsun/font/LayoutPathImpl$SegmentPath;->map(IDDLjava/awt/geom/Point2D;)V

    return p1
.end method

.method private map(IDDLjava/awt/geom/Point2D;)V
    .locals 13

    move-object v0, p0

    iget-object v0, v0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    aget-wide v1, v0, p1

    add-int/lit8 v3, p1, -0x3

    aget-wide v3, v0, v3

    sub-double/2addr v1, v3

    add-int/lit8 v5, p1, 0x1

    aget-wide v5, v0, v5

    add-int/lit8 v7, p1, -0x2

    aget-wide v7, v0, v7

    sub-double/2addr v5, v7

    add-int/lit8 v9, p1, 0x2

    aget-wide v9, v0, v9

    add-int/lit8 v11, p1, -0x1

    aget-wide v11, v0, v11

    sub-double/2addr v9, v11

    div-double/2addr v1, v9

    div-double/2addr v5, v9

    sub-double v9, p2, v11

    mul-double v11, v9, v1

    add-double/2addr v3, v11

    mul-double v11, p4, v5

    sub-double/2addr v3, v11

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    mul-double v0, p4, v1

    add-double/2addr v7, v0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4, v7, v8}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-void
.end method


# virtual methods
.method public end()D
    .locals 2

    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public length()D
    .locals 4

    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 1

    new-instance v0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;

    invoke-direct {v0, p0}, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;-><init>(Lsun/font/LayoutPathImpl$SegmentPath;)V

    invoke-virtual {v0, p1}, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public pathToPoint(Ljava/awt/geom/Point2D;ZLjava/awt/geom/Point2D;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsun/font/LayoutPathImpl$SegmentPath;->locateAndGetIndex(Ljava/awt/geom/Point2D;ZLjava/awt/geom/Point2D;)I

    return-void
.end method

.method public pointToPath(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Z
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    iget-object v6, v0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    const/4 v7, 0x0

    aget-wide v8, v6, v7

    const/4 v10, 0x1

    aget-wide v11, v6, v10

    const/4 v13, 0x2

    aget-wide v13, v6, v13

    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v17, 0x0

    move v10, v7

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    const/4 v7, 0x3

    :goto_0
    iget-object v6, v0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    array-length v1, v6

    if-ge v7, v1, :cond_7

    aget-wide v25, v6, v7

    add-int/lit8 v1, v7, 0x1

    aget-wide v27, v6, v1

    add-int/lit8 v1, v7, 0x2

    aget-wide v29, v6, v1

    sub-double v31, v25, v8

    sub-double v33, v27, v11

    sub-double v35, v29, v13

    sub-double v37, v2, v8

    sub-double v39, v4, v11

    mul-double v37, v37, v31

    mul-double v39, v39, v33

    add-double v37, v37, v39

    cmpl-double v1, v35, v17

    if-eqz v1, :cond_5

    cmpl-double v1, v37, v17

    if-gez v1, :cond_0

    iget-object v1, v0, Lsun/font/LayoutPathImpl$SegmentPath;->etype:Lsun/font/LayoutPathImpl$EndType;

    invoke-virtual {v1}, Lsun/font/LayoutPathImpl$EndType;->isExtended()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    if-ne v7, v1, :cond_5

    :cond_0
    mul-double v39, v35, v35

    cmpg-double v1, v37, v39

    if-lez v1, :cond_4

    iget-object v1, v0, Lsun/font/LayoutPathImpl$SegmentPath;->etype:Lsun/font/LayoutPathImpl$EndType;

    invoke-virtual {v1}, Lsun/font/LayoutPathImpl$EndType;->isExtended()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    array-length v1, v1

    const/4 v6, 0x3

    sub-int/2addr v1, v6

    if-ne v7, v1, :cond_2

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    :cond_2
    iget-object v1, v0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    array-length v8, v1

    sub-int/2addr v8, v6

    if-eq v7, v8, :cond_3

    goto :goto_3

    :cond_3
    array-length v1, v1

    move-wide/from16 v8, v25

    move-wide/from16 v11, v27

    move-wide/from16 v13, v29

    goto :goto_2

    :cond_4
    :goto_1
    div-double v37, v37, v39

    mul-double v31, v31, v37

    add-double v8, v8, v31

    mul-double v33, v33, v37

    add-double v11, v11, v33

    mul-double v37, v37, v35

    add-double v13, v13, v37

    :cond_5
    move v1, v7

    :goto_2
    sub-double v31, v2, v8

    sub-double v33, v4, v11

    mul-double v31, v31, v31

    mul-double v33, v33, v33

    add-double v31, v31, v33

    cmpg-double v6, v31, v15

    if-gtz v6, :cond_6

    move v10, v1

    move-wide/from16 v19, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-wide/from16 v15, v31

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x3

    move-object/from16 v1, p2

    move-wide/from16 v8, v25

    move-wide/from16 v11, v27

    move-wide/from16 v13, v29

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v1, v10, -0x3

    aget-wide v7, v6, v1

    add-int/lit8 v9, v10, -0x2

    aget-wide v11, v6, v9

    cmpl-double v9, v19, v7

    if-nez v9, :cond_f

    cmpl-double v9, v21, v11

    if-nez v9, :cond_f

    const/4 v9, 0x3

    if-eq v10, v9, :cond_8

    add-int/lit8 v7, v10, -0x1

    aget-wide v7, v6, v7

    add-int/lit8 v9, v10, -0x4

    aget-wide v11, v6, v9

    cmpl-double v7, v7, v11

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    array-length v8, v6

    if-eq v10, v8, :cond_9

    add-int/lit8 v8, v10, -0x1

    aget-wide v8, v6, v8

    add-int/lit8 v11, v10, 0x2

    aget-wide v11, v6, v11

    cmpl-double v6, v8, v11

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    iget-object v8, v0, Lsun/font/LayoutPathImpl$SegmentPath;->etype:Lsun/font/LayoutPathImpl$EndType;

    invoke-virtual {v8}, Lsun/font/LayoutPathImpl$EndType;->isExtended()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x3

    if-eq v10, v8, :cond_a

    iget-object v8, v0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    array-length v8, v8

    if-ne v10, v8, :cond_b

    :cond_a
    const/4 v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    new-instance v6, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v6, v2, v3, v4, v5}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-direct {v0, v1, v8, v6}, Lsun/font/LayoutPathImpl$SegmentPath;->calcoffset(IZLjava/awt/geom/Point2D;)V

    new-instance v1, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-direct {v0, v10, v8, v1}, Lsun/font/LayoutPathImpl$SegmentPath;->calcoffset(IZLjava/awt/geom/Point2D;)V

    iget-wide v2, v6, Ljava/awt/geom/Point2D$Double;->y:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, v1, Ljava/awt/geom/Point2D$Double;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_c

    move-object/from16 v9, p2

    invoke-virtual {v9, v6}, Ljava/awt/geom/Point2D;->setLocation(Ljava/awt/geom/Point2D;)V

    const/4 v13, 0x1

    return v13

    :cond_c
    move-object/from16 v9, p2

    invoke-virtual {v9, v1}, Ljava/awt/geom/Point2D;->setLocation(Ljava/awt/geom/Point2D;)V

    const/4 v6, 0x0

    return v6

    :cond_d
    move-object/from16 v9, p2

    const/4 v6, 0x0

    const/4 v13, 0x1

    if-eqz v7, :cond_e

    invoke-virtual {v9, v2, v3, v4, v5}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    invoke-direct {v0, v1, v8, v9}, Lsun/font/LayoutPathImpl$SegmentPath;->calcoffset(IZLjava/awt/geom/Point2D;)V

    return v13

    :cond_e
    invoke-virtual {v9, v2, v3, v4, v5}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    invoke-direct {v0, v10, v8, v9}, Lsun/font/LayoutPathImpl$SegmentPath;->calcoffset(IZLjava/awt/geom/Point2D;)V

    return v6

    :cond_f
    move-object/from16 v9, p2

    const/4 v13, 0x1

    aget-wide v0, v6, v10

    add-int/2addr v10, v13

    aget-wide v13, v6, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    sub-double v2, v2, v19

    sub-double/2addr v13, v11

    mul-double/2addr v2, v13

    sub-double v4, v4, v21

    sub-double/2addr v0, v7

    mul-double/2addr v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_10

    neg-double v9, v9

    :cond_10
    move-object/from16 v0, p2

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2, v9, v10}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    const/4 v0, 0x0

    return v0
.end method

.method public start()D
    .locals 2

    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    const/4 v0, 0x2

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/font/LayoutPathImpl$SegmentPath;->etype:Lsun/font/LayoutPathImpl$EndType;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    array-length v3, v3

    const-string v4, "}"

    if-ge v2, v3, :cond_1

    const-string v3, ","

    if-lez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v5, p0, Lsun/font/LayoutPathImpl$SegmentPath;->data:[D

    aget-wide v6, v5, v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    add-int/lit8 v10, v2, 0x1

    aget-wide v10, v5, v10

    mul-double/2addr v10, v8

    double-to-int v8, v10

    int-to-float v8, v8

    div-float/2addr v8, v7

    add-int/lit8 v7, v2, 0x2

    aget-wide v9, v5, v7

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v9, v11

    double-to-int v5, v9

    int-to-float v5, v5

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v5, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
