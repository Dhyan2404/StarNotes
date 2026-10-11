.class public abstract Lsun/awt/geom/AreaOp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/geom/AreaOp$EOWindOp;,
        Lsun/awt/geom/AreaOp$NZWindOp;,
        Lsun/awt/geom/AreaOp$XorOp;,
        Lsun/awt/geom/AreaOp$IntOp;,
        Lsun/awt/geom/AreaOp$SubOp;,
        Lsun/awt/geom/AreaOp$AddOp;,
        Lsun/awt/geom/AreaOp$CAGOp;
    }
.end annotation


# static fields
.field public static final CTAG_LEFT:I = 0x0

.field public static final CTAG_RIGHT:I = 0x1

.field public static final ETAG_ENTER:I = 0x1

.field public static final ETAG_EXIT:I = -0x1

.field public static final ETAG_IGNORE:I = 0x0

.field private static EmptyChainList:[Lsun/awt/geom/ChainEnd; = null

.field private static EmptyLinkList:[Lsun/awt/geom/CurveLink; = null

.field public static final RSTAG_INSIDE:I = 0x1

.field public static final RSTAG_OUTSIDE:I = -0x1

.field private static YXTopComparator:Ljava/util/Comparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsun/awt/geom/AreaOp$1;

    invoke-direct {v0}, Lsun/awt/geom/AreaOp$1;-><init>()V

    sput-object v0, Lsun/awt/geom/AreaOp;->YXTopComparator:Ljava/util/Comparator;

    const/4 v0, 0x2

    new-array v1, v0, [Lsun/awt/geom/CurveLink;

    sput-object v1, Lsun/awt/geom/AreaOp;->EmptyLinkList:[Lsun/awt/geom/CurveLink;

    new-array v0, v0, [Lsun/awt/geom/ChainEnd;

    sput-object v0, Lsun/awt/geom/AreaOp;->EmptyChainList:[Lsun/awt/geom/ChainEnd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsun/awt/geom/AreaOp$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/awt/geom/AreaOp;-><init>()V

    return-void
.end method

.method private static addEdges(Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/awt/geom/Curve;

    invoke-virtual {v0}, Lsun/awt/geom/Curve;->getOrder()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lsun/awt/geom/Edge;

    invoke-direct {v1, v0, p2}, Lsun/awt/geom/Edge;-><init>(Lsun/awt/geom/Curve;I)V

    invoke-virtual {p0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finalizeSubCurves(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_3

    new-array v1, v0, [Lsun/awt/geom/ChainEnd;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lsun/awt/geom/ChainEnd;->linkTo(Lsun/awt/geom/ChainEnd;)Lsun/awt/geom/CurveLink;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Odd number of chains!"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static obstructs(DDI)Z
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p4, v0

    const/4 v1, 0x0

    cmpg-double p0, p0, p2

    if-nez p4, :cond_0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private pruneEdges(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-object v1

    :cond_0
    new-array v4, v2, [Lsun/awt/geom/Edge;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsun/awt/geom/Edge;

    sget-object v4, Lsun/awt/geom/AreaOp;->YXTopComparator:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-array v3, v3, [D

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v8, v2, :cond_1c

    aget-wide v10, v3, v7

    add-int/lit8 v12, v9, -0x1

    move v13, v12

    :goto_1
    if-lt v12, v8, :cond_3

    aget-object v14, v1, v12

    invoke-virtual {v14}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object v15

    invoke-virtual {v15}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide v15

    cmpl-double v15, v15, v10

    if-lez v15, :cond_2

    if-le v13, v12, :cond_1

    aput-object v14, v1, v13

    :cond_1
    add-int/lit8 v13, v13, -0x1

    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v13, 0x1

    if-lt v8, v9, :cond_6

    if-lt v9, v2, :cond_4

    goto/16 :goto_13

    :cond_4
    aget-object v10, v1, v9

    invoke-virtual {v10}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object v10

    invoke-virtual {v10}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v10

    aget-wide v12, v3, v7

    cmpl-double v12, v10, v12

    if-lez v12, :cond_5

    invoke-static {v4, v5}, Lsun/awt/geom/AreaOp;->finalizeSubCurves(Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_5
    aput-wide v10, v3, v7

    :cond_6
    :goto_2
    if-ge v9, v2, :cond_8

    aget-object v12, v1, v9

    invoke-virtual {v12}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object v12

    invoke-virtual {v12}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v12

    cmpl-double v12, v12, v10

    if-lez v12, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    aget-object v10, v1, v8

    invoke-virtual {v10}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object v10

    invoke-virtual {v10}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide v10

    const/4 v12, 0x1

    aput-wide v10, v3, v12

    if-ge v9, v2, :cond_9

    aget-object v10, v1, v9

    invoke-virtual {v10}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object v10

    invoke-virtual {v10}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v10

    aget-wide v13, v3, v12

    cmpl-double v13, v13, v10

    if-lez v13, :cond_9

    aput-wide v10, v3, v12

    :cond_9
    move v10, v8

    move v11, v12

    :goto_4
    if-ge v10, v9, :cond_e

    aget-object v13, v1, v10

    invoke-virtual {v13, v7}, Lsun/awt/geom/Edge;->setEquivalence(I)V

    move v14, v10

    :goto_5
    if-le v14, v8, :cond_d

    add-int/lit8 v15, v14, -0x1

    aget-object v15, v1, v15

    invoke-virtual {v13, v15, v3}, Lsun/awt/geom/Edge;->compareTo(Lsun/awt/geom/Edge;[D)I

    move-result v16

    aget-wide v17, v3, v12

    aget-wide v19, v3, v7

    cmpg-double v17, v17, v19

    if-lez v17, :cond_c

    if-ltz v16, :cond_b

    if-nez v16, :cond_d

    invoke-virtual {v15}, Lsun/awt/geom/Edge;->getEquivalence()I

    move-result v16

    if-nez v16, :cond_a

    add-int/lit8 v16, v11, 0x1

    invoke-virtual {v15, v11}, Lsun/awt/geom/Edge;->setEquivalence(I)V

    goto :goto_6

    :cond_a
    move/from16 v26, v16

    move/from16 v16, v11

    move/from16 v11, v26

    :goto_6
    invoke-virtual {v13, v11}, Lsun/awt/geom/Edge;->setEquivalence(I)V

    move/from16 v11, v16

    goto :goto_7

    :cond_b
    aput-object v15, v1, v14

    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backstepping to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v3, v12

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    aput-object v13, v1, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/AreaOp;->newRow()V

    aget-wide v10, v3, v7

    aget-wide v14, v3, v12

    move v13, v8

    :goto_8
    if-ge v13, v9, :cond_18

    aget-object v7, v1, v13

    invoke-virtual {v7}, Lsun/awt/geom/Edge;->getEquivalence()I

    move-result v12

    if-eqz v12, :cond_16

    move/from16 v17, v13

    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/AreaOp;->getState()I

    move-result v13

    move-object/from16 v21, v4

    const/4 v4, 0x1

    if-ne v13, v4, :cond_f

    const/4 v4, -0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x1

    :goto_9
    const/16 v16, 0x0

    move-wide/from16 v22, v14

    move-object/from16 v18, v16

    move-object/from16 v16, v7

    :goto_a
    invoke-virtual {v0, v7}, Lsun/awt/geom/AreaOp;->classify(Lsun/awt/geom/Edge;)I

    if-nez v18, :cond_10

    invoke-virtual {v7, v10, v11, v4}, Lsun/awt/geom/Edge;->isActiveFor(DI)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v18, v7

    :cond_10
    invoke-virtual {v7}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lsun/awt/geom/Curve;->getYBot()D

    move-result-wide v24

    cmpl-double v19, v24, v22

    if-lez v19, :cond_11

    move-object/from16 v16, v7

    move-wide/from16 v22, v24

    const/16 v19, 0x1

    move/from16 v24, v4

    goto :goto_b

    :cond_11
    move/from16 v24, v4

    const/16 v19, 0x1

    :goto_b
    add-int/lit8 v4, v17, 0x1

    if-ge v4, v9, :cond_13

    aget-object v7, v1, v4

    move-object/from16 v25, v5

    invoke-virtual {v7}, Lsun/awt/geom/Edge;->getEquivalence()I

    move-result v5

    if-eq v5, v12, :cond_12

    goto :goto_c

    :cond_12
    move/from16 v17, v4

    move/from16 v4, v24

    move-object/from16 v5, v25

    goto :goto_a

    :cond_13
    move-object/from16 v25, v5

    :goto_c
    add-int/lit8 v4, v4, -0x1

    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/AreaOp;->getState()I

    move-result v5

    if-ne v5, v13, :cond_14

    const/16 v24, 0x0

    goto :goto_e

    :cond_14
    if-eqz v18, :cond_15

    goto :goto_d

    :cond_15
    move-object/from16 v18, v16

    :goto_d
    move-object/from16 v7, v18

    :goto_e
    move/from16 v5, v24

    goto :goto_f

    :cond_16
    move-object/from16 v21, v4

    move-object/from16 v25, v5

    move/from16 v17, v13

    invoke-virtual {v0, v7}, Lsun/awt/geom/AreaOp;->classify(Lsun/awt/geom/Edge;)I

    move-result v4

    move v5, v4

    move/from16 v4, v17

    :goto_f
    if-eqz v5, :cond_17

    invoke-virtual {v7, v14, v15, v5}, Lsun/awt/geom/Edge;->record(DI)V

    new-instance v12, Lsun/awt/geom/CurveLink;

    invoke-virtual {v7}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object v7

    move-object v13, v12

    move-wide/from16 v22, v14

    move-object v14, v7

    move-wide v15, v10

    move-wide/from16 v17, v22

    move/from16 v19, v5

    invoke-direct/range {v13 .. v19}, Lsun/awt/geom/CurveLink;-><init>(Lsun/awt/geom/Curve;DDI)V

    invoke-virtual {v6, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_17
    move-wide/from16 v22, v14

    :goto_10
    const/4 v5, 0x1

    add-int/lit8 v13, v4, 0x1

    move v12, v5

    move-object/from16 v4, v21

    move-wide/from16 v14, v22

    move-object/from16 v5, v25

    goto/16 :goto_8

    :cond_18
    move-object/from16 v21, v4

    move-object/from16 v25, v5

    move-wide/from16 v22, v14

    invoke-virtual/range {p0 .. p0}, Lsun/awt/geom/AreaOp;->getState()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1b

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Still inside at end of active edge list!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "num curves = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v7, v9, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "num links = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "y top = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-wide v10, v3, v7

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-ge v9, v2, :cond_19

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "y top of next curve = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v9

    invoke-virtual {v7}, Lsun/awt/geom/Edge;->getCurve()Lsun/awt/geom/Curve;

    move-result-object v7

    invoke-virtual {v7}, Lsun/awt/geom/Curve;->getYTop()D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_19
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "no more curves"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_11
    move v4, v8

    :goto_12
    if-ge v4, v9, :cond_1b

    aget-object v5, v1, v4

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lsun/awt/geom/Edge;->getEquivalence()I

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  was equal to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_1b
    move-object/from16 v4, v21

    move-object/from16 v5, v25

    invoke-static {v4, v5, v6}, Lsun/awt/geom/AreaOp;->resolveLinks(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    const/4 v7, 0x0

    aput-wide v22, v3, v7

    goto/16 :goto_0

    :cond_1c
    :goto_13
    invoke-static {v4, v5}, Lsun/awt/geom/AreaOp;->finalizeSubCurves(Ljava/util/Vector;Ljava/util/Vector;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/awt/geom/CurveLink;

    invoke-virtual {v2}, Lsun/awt/geom/CurveLink;->getMoveto()Lsun/awt/geom/Curve;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_15
    move-object v3, v2

    :cond_1d
    invoke-virtual {v2}, Lsun/awt/geom/CurveLink;->getNext()Lsun/awt/geom/CurveLink;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v3, v2}, Lsun/awt/geom/CurveLink;->absorb(Lsun/awt/geom/CurveLink;)Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v3}, Lsun/awt/geom/CurveLink;->getSubCurve()Lsun/awt/geom/Curve;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1e
    invoke-virtual {v3}, Lsun/awt/geom/CurveLink;->getSubCurve()Lsun/awt/geom/Curve;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1f
    return-object v0
.end method

.method public static resolveLinks(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lsun/awt/geom/AreaOp;->EmptyLinkList:[Lsun/awt/geom/CurveLink;

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_12

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lsun/awt/geom/CurveLink;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v2

    const-string v3, "Odd number of chains!"

    if-nez v2, :cond_1

    sget-object v2, Lsun/awt/geom/AreaOp;->EmptyChainList:[Lsun/awt/geom/ChainEnd;

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_11

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lsun/awt/geom/ChainEnd;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->clear()V

    const/4 v4, 0x0

    aget-object v5, v2, v4

    const/4 v6, 0x1

    aget-object v7, v2, v6

    aget-object v8, v1, v4

    aget-object v9, v1, v6

    move v10, v4

    move v11, v10

    :goto_2
    if-nez v5, :cond_4

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v0

    and-int/2addr v0, v6

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_3
    if-nez v8, :cond_5

    move v12, v6

    goto :goto_4

    :cond_5
    move v12, v4

    :goto_4
    if-nez v5, :cond_6

    move v13, v6

    goto :goto_5

    :cond_6
    move v13, v4

    :goto_5
    if-nez v12, :cond_c

    if-nez v13, :cond_c

    and-int/lit8 v12, v10, 0x1

    if-nez v12, :cond_7

    invoke-virtual {v5}, Lsun/awt/geom/ChainEnd;->getX()D

    move-result-wide v12

    invoke-virtual {v7}, Lsun/awt/geom/ChainEnd;->getX()D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-nez v12, :cond_7

    move v12, v6

    goto :goto_6

    :cond_7
    move v12, v4

    :goto_6
    and-int/lit8 v13, v11, 0x1

    if-nez v13, :cond_8

    invoke-virtual {v8}, Lsun/awt/geom/CurveLink;->getX()D

    move-result-wide v13

    invoke-virtual {v9}, Lsun/awt/geom/CurveLink;->getX()D

    move-result-wide v15

    cmpl-double v13, v13, v15

    if-nez v13, :cond_8

    move v13, v6

    goto :goto_7

    :cond_8
    move v13, v4

    :goto_7
    if-nez v12, :cond_c

    if-nez v13, :cond_c

    invoke-virtual {v5}, Lsun/awt/geom/ChainEnd;->getX()D

    move-result-wide v12

    invoke-virtual {v8}, Lsun/awt/geom/CurveLink;->getX()D

    move-result-wide v14

    if-eqz v7, :cond_9

    cmpg-double v16, v12, v14

    if-gez v16, :cond_9

    move-object/from16 v16, v5

    invoke-virtual {v7}, Lsun/awt/geom/ChainEnd;->getX()D

    move-result-wide v4

    invoke-static {v4, v5, v14, v15, v10}, Lsun/awt/geom/AreaOp;->obstructs(DDI)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v6

    goto :goto_8

    :cond_9
    move-object/from16 v16, v5

    :cond_a
    const/4 v4, 0x0

    :goto_8
    if-eqz v9, :cond_b

    cmpg-double v5, v14, v12

    if-gez v5, :cond_b

    invoke-virtual {v9}, Lsun/awt/geom/CurveLink;->getX()D

    move-result-wide v14

    invoke-static {v14, v15, v12, v13, v11}, Lsun/awt/geom/AreaOp;->obstructs(DDI)Z

    move-result v5

    if-eqz v5, :cond_b

    move v13, v6

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    :goto_9
    move v12, v4

    goto :goto_a

    :cond_c
    move-object/from16 v16, v5

    :goto_a
    if-eqz v12, :cond_e

    move-object/from16 v5, v16

    invoke-virtual {v5, v7}, Lsun/awt/geom/ChainEnd;->linkTo(Lsun/awt/geom/ChainEnd;)Lsun/awt/geom/CurveLink;

    move-result-object v4

    move-object/from16 v14, p0

    if-eqz v4, :cond_d

    invoke-virtual {v14, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v10, v10, 0x2

    aget-object v5, v2, v10

    add-int/lit8 v4, v10, 0x1

    aget-object v7, v2, v4

    goto :goto_b

    :cond_e
    move-object/from16 v14, p0

    move-object/from16 v5, v16

    :goto_b
    if-eqz v13, :cond_f

    new-instance v4, Lsun/awt/geom/ChainEnd;

    const/4 v15, 0x0

    invoke-direct {v4, v8, v15}, Lsun/awt/geom/ChainEnd;-><init>(Lsun/awt/geom/CurveLink;Lsun/awt/geom/ChainEnd;)V

    new-instance v8, Lsun/awt/geom/ChainEnd;

    invoke-direct {v8, v9, v4}, Lsun/awt/geom/ChainEnd;-><init>(Lsun/awt/geom/CurveLink;Lsun/awt/geom/ChainEnd;)V

    invoke-virtual {v4, v8}, Lsun/awt/geom/ChainEnd;->setOtherEnd(Lsun/awt/geom/ChainEnd;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x2

    aget-object v8, v1, v11

    add-int/lit8 v4, v11, 0x1

    aget-object v9, v1, v4

    :cond_f
    if-nez v12, :cond_10

    if-nez v13, :cond_10

    invoke-virtual {v5, v8}, Lsun/awt/geom/ChainEnd;->addLink(Lsun/awt/geom/CurveLink;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v10, 0x1

    aget-object v4, v2, v4

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v11, 0x1

    aget-object v5, v1, v5

    move-object v8, v9

    move-object v9, v5

    move-object v5, v7

    move-object v7, v4

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_11
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Odd number of new curves!"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lsun/awt/geom/AreaOp;->addEdges(Ljava/util/Vector;Ljava/util/Vector;I)V

    const/4 p1, 0x1

    invoke-static {v0, p2, p1}, Lsun/awt/geom/AreaOp;->addEdges(Ljava/util/Vector;Ljava/util/Vector;I)V

    invoke-direct {p0, v0}, Lsun/awt/geom/AreaOp;->pruneEdges(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public abstract classify(Lsun/awt/geom/Edge;)I
.end method

.method public abstract getState()I
.end method

.method public abstract newRow()V
.end method
