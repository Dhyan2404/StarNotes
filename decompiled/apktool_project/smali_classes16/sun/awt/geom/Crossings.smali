.class public abstract Lsun/awt/geom/Crossings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/geom/Crossings$NonZero;,
        Lsun/awt/geom/Crossings$EvenOdd;
    }
.end annotation


# static fields
.field public static final debug:Z


# instance fields
.field limit:I

.field private tmp:Ljava/util/Vector;

.field xhi:D

.field xlo:D

.field yhi:D

.field ylo:D

.field yranges:[D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/awt/geom/Crossings;->limit:I

    const/16 v0, 0xa

    new-array v0, v0, [D

    iput-object v0, p0, Lsun/awt/geom/Crossings;->yranges:[D

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lsun/awt/geom/Crossings;->tmp:Ljava/util/Vector;

    iput-wide p1, p0, Lsun/awt/geom/Crossings;->xlo:D

    iput-wide p3, p0, Lsun/awt/geom/Crossings;->ylo:D

    iput-wide p5, p0, Lsun/awt/geom/Crossings;->xhi:D

    iput-wide p7, p0, Lsun/awt/geom/Crossings;->yhi:D

    return-void
.end method

.method public static findCrossings(Ljava/awt/geom/PathIterator;DDDD)Lsun/awt/geom/Crossings;
    .locals 20

    .line 6
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lsun/awt/geom/Crossings$EvenOdd;

    move-object v1, v0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lsun/awt/geom/Crossings$EvenOdd;-><init>(DDDD)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lsun/awt/geom/Crossings$NonZero;

    move-object v1, v0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lsun/awt/geom/Crossings$NonZero;-><init>(DDDD)V

    :goto_0
    const/16 v1, 0x17

    new-array v10, v1, [D

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v11, v4

    move-wide v13, v11

    move-wide v2, v13

    .line 9
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_c

    move-object/from16 v8, p0

    .line 10
    invoke-interface {v8, v10}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v1

    const/16 v16, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v9, :cond_7

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v1, v7, :cond_5

    const/4 v7, 0x4

    if-eq v1, v6, :cond_3

    if-eq v1, v7, :cond_1

    goto/16 :goto_2

    :cond_1
    cmpl-double v1, v13, v4

    if-eqz v1, :cond_2

    move-object v1, v0

    move-wide v6, v11

    move-wide v8, v13

    .line 11
    invoke-virtual/range {v1 .. v9}, Lsun/awt/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v15

    :cond_2
    move-wide v2, v11

    move-wide v4, v13

    goto/16 :goto_2

    :cond_3
    aget-wide v6, v10, v7

    const/4 v1, 0x5

    aget-wide v8, v10, v1

    move-object/from16 p1, v0

    move-wide/from16 p2, v2

    move-wide/from16 p4, v4

    move-object/from16 p6, v10

    .line 12
    invoke-virtual/range {p1 .. p6}, Lsun/awt/geom/Crossings;->accumulateCubic(DD[D)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v15

    :cond_4
    move-wide v2, v6

    move-wide v4, v8

    goto :goto_2

    :cond_5
    aget-wide v7, v10, v7

    aget-wide v16, v10, v6

    move-object/from16 p1, v0

    move-wide/from16 p2, v2

    move-wide/from16 p4, v4

    move-object/from16 p6, v10

    .line 13
    invoke-virtual/range {p1 .. p6}, Lsun/awt/geom/Crossings;->accumulateQuad(DD[D)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v15

    :cond_6
    move-wide v2, v7

    move-wide/from16 v4, v16

    goto :goto_2

    :cond_7
    aget-wide v16, v10, v16

    aget-wide v18, v10, v9

    move-object v1, v0

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    .line 14
    invoke-virtual/range {v1 .. v9}, Lsun/awt/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v15

    :cond_8
    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    goto :goto_2

    :cond_9
    cmpl-double v1, v13, v4

    if-eqz v1, :cond_a

    move-object v1, v0

    move-wide v6, v11

    move v11, v9

    move-wide v8, v13

    .line 15
    invoke-virtual/range {v1 .. v9}, Lsun/awt/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v15

    :cond_a
    move v11, v9

    :cond_b
    aget-wide v2, v10, v16

    aget-wide v4, v10, v11

    move-wide v11, v2

    move-wide v13, v4

    .line 16
    :goto_2
    invoke-interface/range {p0 .. p0}, Ljava/awt/geom/PathIterator;->next()V

    goto/16 :goto_1

    :cond_c
    cmpl-double v1, v13, v4

    if-eqz v1, :cond_d

    move-object/from16 p0, v0

    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v11

    move-wide/from16 p7, v13

    .line 17
    invoke-virtual/range {p0 .. p8}, Lsun/awt/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v15

    :cond_d
    return-object v0
.end method

.method public static findCrossings(Ljava/util/Vector;DDDD)Lsun/awt/geom/Crossings;
    .locals 10

    .line 1
    new-instance v9, Lsun/awt/geom/Crossings$EvenOdd;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lsun/awt/geom/Crossings$EvenOdd;-><init>(DDDD)V

    .line 2
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/awt/geom/Curve;

    .line 5
    invoke-virtual {v1, v9}, Lsun/awt/geom/Curve;->accumulateCrossings(Lsun/awt/geom/Crossings;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_1
    return-object v9
.end method


# virtual methods
.method public accumulateCubic(DD[D)Z
    .locals 15

    move-object v0, p0

    move-wide/from16 v4, p3

    iget-wide v1, v0, Lsun/awt/geom/Crossings;->ylo:D

    cmpg-double v3, v4, v1

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x5

    const/4 v9, 0x0

    if-gez v3, :cond_0

    aget-wide v10, p5, v7

    cmpg-double v3, v10, v1

    if-gez v3, :cond_0

    aget-wide v10, p5, v6

    cmpg-double v3, v10, v1

    if-gez v3, :cond_0

    aget-wide v10, p5, v8

    cmpg-double v3, v10, v1

    if-gez v3, :cond_0

    return v9

    :cond_0
    iget-wide v10, v0, Lsun/awt/geom/Crossings;->yhi:D

    cmpl-double v3, v4, v10

    if-lez v3, :cond_1

    aget-wide v12, p5, v7

    cmpl-double v3, v12, v10

    if-lez v3, :cond_1

    aget-wide v12, p5, v6

    cmpl-double v3, v12, v10

    if-lez v3, :cond_1

    aget-wide v12, p5, v8

    cmpl-double v3, v12, v10

    if-lez v3, :cond_1

    return v9

    :cond_1
    iget-wide v10, v0, Lsun/awt/geom/Crossings;->xhi:D

    cmpl-double v3, p1, v10

    const/4 v6, 0x4

    const/4 v12, 0x2

    if-lez v3, :cond_2

    aget-wide v13, p5, v9

    cmpl-double v3, v13, v10

    if-lez v3, :cond_2

    aget-wide v13, p5, v12

    cmpl-double v3, v13, v10

    if-lez v3, :cond_2

    aget-wide v13, p5, v6

    cmpl-double v3, v13, v10

    if-lez v3, :cond_2

    return v9

    :cond_2
    iget-wide v10, v0, Lsun/awt/geom/Crossings;->xlo:D

    cmpg-double v3, p1, v10

    if-gez v3, :cond_4

    aget-wide v13, p5, v9

    cmpg-double v3, v13, v10

    if-gez v3, :cond_4

    aget-wide v12, p5, v12

    cmpg-double v3, v12, v10

    if-gez v3, :cond_4

    aget-wide v12, p5, v6

    cmpg-double v3, v12, v10

    if-gez v3, :cond_4

    aget-wide v6, p5, v8

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_3

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aget-wide v3, p5, v8

    iget-wide v5, v0, Lsun/awt/geom/Crossings;->yhi:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v5, 0x1

    move-wide/from16 p1, v1

    move-wide/from16 p3, v3

    move/from16 p5, v5

    invoke-virtual/range {p0 .. p5}, Lsun/awt/geom/Crossings;->record(DDI)V

    goto :goto_0

    :cond_3
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-wide v6, v0, Lsun/awt/geom/Crossings;->yhi:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v5, -0x1

    move-wide/from16 p1, v1

    move-wide/from16 p3, v3

    move/from16 p5, v5

    invoke-virtual/range {p0 .. p5}, Lsun/awt/geom/Crossings;->record(DDI)V

    :goto_0
    return v9

    :cond_4
    iget-object v1, v0, Lsun/awt/geom/Crossings;->tmp:Ljava/util/Vector;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lsun/awt/geom/Curve;->insertCubic(Ljava/util/Vector;DD[D)V

    iget-object v1, v0, Lsun/awt/geom/Crossings;->tmp:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/awt/geom/Curve;

    invoke-virtual {v2, p0}, Lsun/awt/geom/Curve;->accumulateCrossings(Lsun/awt/geom/Crossings;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v7

    :cond_6
    iget-object v0, v0, Lsun/awt/geom/Crossings;->tmp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return v9
.end method

.method public accumulateLine(DDDD)Z
    .locals 10

    cmpg-double v0, p3, p7

    if-gtz v0, :cond_0

    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 1
    invoke-virtual/range {v0 .. v9}, Lsun/awt/geom/Crossings;->accumulateLine(DDDDI)Z

    move-result v0

    return v0

    :cond_0
    const/4 v9, -0x1

    move-object v0, p0

    move-wide v1, p5

    move-wide/from16 v3, p7

    move-wide v5, p1

    move-wide v7, p3

    .line 2
    invoke-virtual/range {v0 .. v9}, Lsun/awt/geom/Crossings;->accumulateLine(DDDDI)Z

    move-result v0

    return v0
.end method

.method public accumulateLine(DDDDI)Z
    .locals 18

    move-object/from16 v0, p0

    .line 3
    iget-wide v1, v0, Lsun/awt/geom/Crossings;->yhi:D

    cmpg-double v3, v1, p3

    const/4 v4, 0x0

    if-lez v3, :cond_a

    iget-wide v5, v0, Lsun/awt/geom/Crossings;->ylo:D

    cmpl-double v3, v5, p7

    if-ltz v3, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget-wide v7, v0, Lsun/awt/geom/Crossings;->xhi:D

    cmpl-double v3, p1, v7

    if-ltz v3, :cond_1

    cmpl-double v3, p5, v7

    if-ltz v3, :cond_1

    return v4

    :cond_1
    cmpl-double v3, p3, p7

    const/4 v9, 0x1

    if-nez v3, :cond_4

    .line 5
    iget-wide v0, v0, Lsun/awt/geom/Crossings;->xlo:D

    cmpl-double v2, p1, v0

    if-gez v2, :cond_2

    cmpl-double v0, p5, v0

    if-ltz v0, :cond_3

    :cond_2
    move v4, v9

    :cond_3
    return v4

    :cond_4
    sub-double v10, p5, p1

    sub-double v12, p7, p3

    cmpg-double v3, p3, v5

    if-gez v3, :cond_5

    sub-double v14, v5, p3

    mul-double/2addr v14, v10

    div-double/2addr v14, v12

    add-double v14, p1, v14

    goto :goto_0

    :cond_5
    move-wide/from16 v14, p1

    move-wide/from16 v5, p3

    :goto_0
    cmpg-double v3, v1, p7

    if-gez v3, :cond_6

    sub-double v16, v1, p3

    mul-double v16, v16, v10

    div-double v16, v16, v12

    add-double v10, p1, v16

    goto :goto_1

    :cond_6
    move-wide/from16 v10, p5

    move-wide/from16 v1, p7

    :goto_1
    cmpl-double v3, v14, v7

    if-ltz v3, :cond_7

    cmpl-double v3, v10, v7

    if-ltz v3, :cond_7

    return v4

    .line 6
    :cond_7
    iget-wide v7, v0, Lsun/awt/geom/Crossings;->xlo:D

    cmpl-double v3, v14, v7

    if-gtz v3, :cond_9

    cmpl-double v3, v10, v7

    if-lez v3, :cond_8

    goto :goto_2

    :cond_8
    move-wide/from16 p1, v5

    move-wide/from16 p3, v1

    move/from16 p5, p9

    .line 7
    invoke-virtual/range {p0 .. p5}, Lsun/awt/geom/Crossings;->record(DDI)V

    return v4

    :cond_9
    :goto_2
    return v9

    :cond_a
    :goto_3
    return v4
.end method

.method public accumulateQuad(DD[D)Z
    .locals 14

    move-object v0, p0

    move-wide/from16 v4, p3

    iget-wide v1, v0, Lsun/awt/geom/Crossings;->ylo:D

    cmpg-double v3, v4, v1

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x0

    if-gez v3, :cond_0

    aget-wide v9, p5, v7

    cmpg-double v3, v9, v1

    if-gez v3, :cond_0

    aget-wide v9, p5, v6

    cmpg-double v3, v9, v1

    if-gez v3, :cond_0

    return v8

    :cond_0
    iget-wide v9, v0, Lsun/awt/geom/Crossings;->yhi:D

    cmpl-double v3, v4, v9

    if-lez v3, :cond_1

    aget-wide v11, p5, v7

    cmpl-double v3, v11, v9

    if-lez v3, :cond_1

    aget-wide v11, p5, v6

    cmpl-double v3, v11, v9

    if-lez v3, :cond_1

    return v8

    :cond_1
    iget-wide v9, v0, Lsun/awt/geom/Crossings;->xhi:D

    cmpl-double v3, p1, v9

    const/4 v11, 0x2

    if-lez v3, :cond_2

    aget-wide v12, p5, v8

    cmpl-double v3, v12, v9

    if-lez v3, :cond_2

    aget-wide v12, p5, v11

    cmpl-double v3, v12, v9

    if-lez v3, :cond_2

    return v8

    :cond_2
    iget-wide v9, v0, Lsun/awt/geom/Crossings;->xlo:D

    cmpg-double v3, p1, v9

    if-gez v3, :cond_5

    aget-wide v12, p5, v8

    cmpg-double v3, v12, v9

    if-gez v3, :cond_5

    aget-wide v11, p5, v11

    cmpg-double v3, v11, v9

    if-gez v3, :cond_5

    aget-wide v9, p5, v6

    cmpg-double v3, v4, v9

    if-gez v3, :cond_3

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aget-wide v3, p5, v6

    iget-wide v5, v0, Lsun/awt/geom/Crossings;->yhi:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v5, 0x1

    move-wide p1, v1

    move-wide/from16 p3, v3

    move/from16 p5, v5

    invoke-virtual/range {p0 .. p5}, Lsun/awt/geom/Crossings;->record(DDI)V

    goto :goto_0

    :cond_3
    cmpl-double v3, v4, v9

    if-lez v3, :cond_4

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-wide v6, v0, Lsun/awt/geom/Crossings;->yhi:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v5, -0x1

    move-wide p1, v1

    move-wide/from16 p3, v3

    move/from16 p5, v5

    invoke-virtual/range {p0 .. p5}, Lsun/awt/geom/Crossings;->record(DDI)V

    :cond_4
    :goto_0
    return v8

    :cond_5
    iget-object v1, v0, Lsun/awt/geom/Crossings;->tmp:Ljava/util/Vector;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lsun/awt/geom/Curve;->insertQuad(Ljava/util/Vector;DD[D)V

    iget-object v1, v0, Lsun/awt/geom/Crossings;->tmp:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/awt/geom/Curve;

    invoke-virtual {v2, p0}, Lsun/awt/geom/Curve;->accumulateCrossings(Lsun/awt/geom/Crossings;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v7

    :cond_7
    iget-object v0, v0, Lsun/awt/geom/Crossings;->tmp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return v8
.end method

.method public abstract covers(DD)Z
.end method

.method public final getXHi()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Crossings;->xhi:D

    return-wide v0
.end method

.method public final getXLo()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Crossings;->xlo:D

    return-wide v0
.end method

.method public final getYHi()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Crossings;->yhi:D

    return-wide v0
.end method

.method public final getYLo()D
    .locals 2

    iget-wide v0, p0, Lsun/awt/geom/Crossings;->ylo:D

    return-wide v0
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Lsun/awt/geom/Crossings;->limit:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public print()V
    .locals 7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Crossings ["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  bounds = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lsun/awt/geom/Crossings;->ylo:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lsun/awt/geom/Crossings;->yhi:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lsun/awt/geom/Crossings;->limit:I

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/awt/geom/Crossings;->yranges:[D

    aget-wide v5, v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public abstract record(DDI)V
.end method
