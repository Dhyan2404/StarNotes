.class public final Lsun/awt/geom/Crossings$NonZero;
.super Lsun/awt/geom/Crossings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/geom/Crossings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonZero"
.end annotation


# instance fields
.field private crosscounts:[I


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lsun/awt/geom/Crossings;-><init>(DDDD)V

    iget-object p1, p0, Lsun/awt/geom/Crossings;->yranges:[D

    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lsun/awt/geom/Crossings$NonZero;->crosscounts:[I

    return-void
.end method


# virtual methods
.method public final covers(DD)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lsun/awt/geom/Crossings;->limit:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v4, v1, 0x1

    aget-wide v5, v2, v1

    add-int/lit8 v1, v4, 0x1

    aget-wide v7, v2, v4

    cmpl-double v2, p1, v7

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double p1, p1, v5

    if-gez p1, :cond_1

    return v0

    :cond_1
    cmpg-double p1, p3, v7

    if-gtz p1, :cond_2

    return v3

    :cond_2
    move-wide p1, v7

    goto :goto_0

    :cond_3
    cmpl-double p0, p1, p3

    if-ltz p0, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method

.method public insert(IDDI)V
    .locals 6

    iget v0, p0, Lsun/awt/geom/Crossings;->limit:I

    sub-int v1, v0, p1

    iget-object v2, p0, Lsun/awt/geom/Crossings;->yranges:[D

    iget-object v3, p0, Lsun/awt/geom/Crossings$NonZero;->crosscounts:[I

    array-length v4, v2

    if-lt v0, v4, :cond_0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [D

    iput-object v0, p0, Lsun/awt/geom/Crossings;->yranges:[D

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lsun/awt/geom/Crossings;->limit:I

    add-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lsun/awt/geom/Crossings$NonZero;->crosscounts:[I

    div-int/lit8 v5, p1, 0x2

    invoke-static {v3, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-lez v1, :cond_1

    iget-object v0, p0, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v4, p1, 0x2

    invoke-static {v2, p1, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v0, p1, 0x2

    iget-object v2, p0, Lsun/awt/geom/Crossings$NonZero;->crosscounts:[I

    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v1, p1, 0x0

    aput-wide p2, v0, v1

    add-int/lit8 p2, p1, 0x1

    aput-wide p4, v0, p2

    iget-object p2, p0, Lsun/awt/geom/Crossings$NonZero;->crosscounts:[I

    div-int/lit8 p1, p1, 0x2

    aput p6, p2, p1

    iget p1, p0, Lsun/awt/geom/Crossings;->limit:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lsun/awt/geom/Crossings;->limit:I

    return-void
.end method

.method public record(DDI)V
    .locals 21

    move-object/from16 v7, p0

    move-wide/from16 v8, p3

    move/from16 v10, p5

    cmpl-double v0, p1, v8

    if-ltz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v11, v0

    :goto_0
    iget v0, v7, Lsun/awt/geom/Crossings;->limit:I

    if-ge v11, v0, :cond_1

    iget-object v1, v7, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v2, v11, 0x1

    aget-wide v1, v1, v2

    cmpl-double v1, p1, v1

    if-lez v1, :cond_1

    add-int/lit8 v11, v11, 0x2

    goto :goto_0

    :cond_1
    if-ge v11, v0, :cond_a

    iget-object v1, v7, Lsun/awt/geom/Crossings$NonZero;->crosscounts:[I

    div-int/lit8 v2, v11, 0x2

    aget v1, v1, v2

    iget-object v3, v7, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v4, v11, 0x0

    aget-wide v5, v3, v4

    add-int/lit8 v12, v11, 0x1

    aget-wide v13, v3, v12

    cmpl-double v15, v13, p1

    if-nez v15, :cond_3

    if-ne v1, v10, :cond_3

    add-int/lit8 v1, v11, 0x2

    if-ne v1, v0, :cond_2

    aput-wide v8, v3, v12

    return-void

    :cond_2
    invoke-virtual {v7, v11}, Lsun/awt/geom/Crossings$NonZero;->remove(I)V

    iget-object v0, v7, Lsun/awt/geom/Crossings$NonZero;->crosscounts:[I

    aget v0, v0, v2

    iget-object v1, v7, Lsun/awt/geom/Crossings;->yranges:[D

    aget-wide v2, v1, v4

    aget-wide v12, v1, v12

    move-wide v14, v5

    move-wide v4, v12

    move v6, v0

    move-wide v12, v2

    goto :goto_1

    :cond_3
    move-wide/from16 v19, v5

    move v6, v1

    move-wide v4, v13

    move-wide/from16 v14, p1

    move-wide/from16 v12, v19

    :goto_1
    cmpg-double v0, v8, v12

    if-gez v0, :cond_4

    move-object/from16 v0, p0

    move v1, v11

    move-wide v2, v14

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/awt/geom/Crossings$NonZero;->insert(IDDI)V

    return-void

    :cond_4
    cmpl-double v0, v8, v12

    if-nez v0, :cond_5

    if-ne v6, v10, :cond_5

    iget-object v0, v7, Lsun/awt/geom/Crossings;->yranges:[D

    aput-wide v14, v0, v11

    return-void

    :cond_5
    cmpg-double v0, v14, v12

    if-gez v0, :cond_6

    move-object/from16 v0, p0

    move v1, v11

    move-wide v2, v14

    move-wide v14, v4

    move-wide v4, v12

    move/from16 v16, v6

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/awt/geom/Crossings$NonZero;->insert(IDDI)V

    add-int/lit8 v11, v11, 0x2

    move-wide/from16 v19, v12

    move-wide v12, v14

    move-wide/from16 v14, v19

    goto :goto_2

    :cond_6
    move/from16 v16, v6

    cmpg-double v0, v12, v14

    if-gez v0, :cond_7

    move-object/from16 v0, p0

    move v1, v11

    move-wide v2, v12

    move-wide v12, v4

    move-wide v4, v14

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lsun/awt/geom/Crossings$NonZero;->insert(IDDI)V

    add-int/lit8 v11, v11, 0x2

    goto :goto_2

    :cond_7
    move-wide v12, v4

    :goto_2
    add-int v6, v16, v10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v17

    if-nez v6, :cond_8

    invoke-virtual {v7, v11}, Lsun/awt/geom/Crossings$NonZero;->remove(I)V

    goto :goto_3

    :cond_8
    iget-object v0, v7, Lsun/awt/geom/Crossings$NonZero;->crosscounts:[I

    div-int/lit8 v1, v11, 0x2

    aput v6, v0, v1

    iget-object v0, v7, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v1, v11, 0x1

    aput-wide v14, v0, v11

    add-int/lit8 v11, v1, 0x1

    aput-wide v17, v0, v1

    :goto_3
    cmpg-double v0, v17, v12

    if-gez v0, :cond_9

    move-object/from16 v0, p0

    move v1, v11

    move-wide/from16 v2, v17

    move-wide v4, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lsun/awt/geom/Crossings$NonZero;->insert(IDDI)V

    :cond_9
    move v1, v11

    move-wide/from16 v2, v17

    goto :goto_4

    :cond_a
    move-wide/from16 v2, p1

    move v1, v11

    :goto_4
    cmpg-double v0, v2, v8

    if-gez v0, :cond_b

    move-object/from16 v0, p0

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/awt/geom/Crossings$NonZero;->insert(IDDI)V

    :cond_b
    return-void
.end method

.method public remove(I)V
    .locals 3

    iget v0, p0, Lsun/awt/geom/Crossings;->limit:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lsun/awt/geom/Crossings;->limit:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object v1, p0, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lsun/awt/geom/Crossings$NonZero;->crosscounts:[I

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method
