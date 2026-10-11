.class public final Lsun/awt/geom/Crossings$EvenOdd;
.super Lsun/awt/geom/Crossings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/geom/Crossings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EvenOdd"
.end annotation


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lsun/awt/geom/Crossings;-><init>(DDDD)V

    return-void
.end method


# virtual methods
.method public final covers(DD)Z
    .locals 3

    iget v0, p0, Lsun/awt/geom/Crossings;->limit:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lsun/awt/geom/Crossings;->yranges:[D

    aget-wide v0, p0, v2

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    aget-wide v0, p0, p1

    cmpl-double p0, v0, p3

    if-ltz p0, :cond_0

    move v2, p1

    :cond_0
    return v2
.end method

.method public record(DDI)V
    .locals 17

    move-object/from16 v0, p0

    cmpl-double v1, p1, p3

    if-ltz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v0, Lsun/awt/geom/Crossings;->limit:I

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v4, v2, 0x1

    aget-wide v3, v3, v4

    cmpl-double v3, p1, v3

    if-lez v3, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p3

    move v6, v2

    move v7, v6

    move-wide/from16 v2, p1

    :goto_1
    iget v8, v0, Lsun/awt/geom/Crossings;->limit:I

    if-ge v6, v8, :cond_9

    iget-object v9, v0, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v10, v6, 0x1

    aget-wide v11, v9, v6

    add-int/lit8 v6, v10, 0x1

    aget-wide v13, v9, v10

    cmpg-double v10, v4, v11

    if-gez v10, :cond_3

    add-int/lit8 v8, v7, 0x1

    aput-wide v2, v9, v7

    add-int/lit8 v7, v8, 0x1

    aput-wide v4, v9, v8

    move-wide v2, v11

    :cond_2
    move-wide v4, v13

    goto :goto_1

    :cond_3
    cmpg-double v10, v2, v11

    if-gez v10, :cond_4

    move-wide v15, v2

    move-wide v2, v11

    move-wide v11, v15

    :cond_4
    cmpg-double v10, v4, v13

    if-gez v10, :cond_5

    goto :goto_2

    :cond_5
    move-wide v15, v4

    move-wide v4, v13

    move-wide v13, v15

    :goto_2
    cmpl-double v10, v2, v4

    if-nez v10, :cond_6

    move-wide v2, v11

    goto :goto_3

    :cond_6
    if-lez v10, :cond_7

    move-wide v15, v2

    move-wide v2, v4

    move-wide v4, v15

    :cond_7
    cmpl-double v10, v11, v2

    if-eqz v10, :cond_8

    add-int/lit8 v10, v7, 0x1

    aput-wide v11, v9, v7

    add-int/lit8 v7, v10, 0x1

    aput-wide v2, v9, v10

    :cond_8
    move-wide v2, v4

    :goto_3
    cmpl-double v4, v2, v13

    if-ltz v4, :cond_2

    move-wide v4, v13

    :cond_9
    if-ge v7, v6, :cond_a

    if-ge v6, v8, :cond_a

    iget-object v9, v0, Lsun/awt/geom/Crossings;->yranges:[D

    sub-int/2addr v8, v6

    invoke-static {v9, v6, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iget v8, v0, Lsun/awt/geom/Crossings;->limit:I

    sub-int/2addr v8, v6

    add-int/2addr v7, v8

    cmpg-double v6, v2, v4

    if-gez v6, :cond_c

    iget-object v6, v0, Lsun/awt/geom/Crossings;->yranges:[D

    array-length v8, v6

    if-lt v7, v8, :cond_b

    add-int/lit8 v8, v7, 0xa

    new-array v8, v8, [D

    invoke-static {v6, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v8, v0, Lsun/awt/geom/Crossings;->yranges:[D

    :cond_b
    iget-object v1, v0, Lsun/awt/geom/Crossings;->yranges:[D

    add-int/lit8 v6, v7, 0x1

    aput-wide v2, v1, v7

    add-int/lit8 v7, v6, 0x1

    aput-wide v4, v1, v6

    :cond_c
    iput v7, v0, Lsun/awt/geom/Crossings;->limit:I

    return-void
.end method
