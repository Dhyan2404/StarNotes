.class public Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CubicCurve"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public j:D

.field public k:D

.field public l:D

.field public m:D

.field public n:D


# direct methods
.method public constructor <init>(DDDDDDDD)V
    .locals 15

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-double v1, p13, p1

    iput-wide v1, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->a:D

    sub-double v3, p15, p3

    iput-wide v3, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->b:D

    sub-double v5, p5, p1

    iput-wide v5, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->c:D

    sub-double v7, p7, p3

    iput-wide v7, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->d:D

    sub-double v9, p9, p1

    iput-wide v9, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->e:D

    sub-double v11, p11, p3

    iput-wide v11, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->f:D

    add-double v13, v5, v5

    add-double/2addr v13, v5

    iput-wide v13, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->k:D

    add-double v5, v9, v9

    add-double/2addr v5, v9

    sub-double/2addr v5, v13

    sub-double/2addr v5, v13

    iput-wide v5, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->i:D

    sub-double/2addr v1, v5

    sub-double/2addr v1, v13

    iput-wide v1, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->g:D

    add-double v9, v7, v7

    add-double/2addr v9, v7

    iput-wide v9, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->l:D

    add-double v7, v11, v11

    add-double/2addr v7, v11

    sub-double/2addr v7, v9

    sub-double/2addr v7, v9

    iput-wide v7, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->j:D

    sub-double/2addr v3, v7

    sub-double/2addr v3, v9

    iput-wide v3, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->h:D

    add-double v3, v1, v1

    add-double/2addr v3, v1

    iput-wide v3, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->m:D

    add-double/2addr v5, v5

    iput-wide v5, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->n:D

    return-void
.end method


# virtual methods
.method public a([DI[DIDDZI)I
    .locals 12

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v4, p4

    move/from16 v2, p10

    move v3, v1

    move v1, p2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-wide v5, p3, v3

    const-wide v7, -0x411b074a771c970fL    # -1.0E-5

    cmpl-double v7, v5, v7

    if-lez v7, :cond_0

    const-wide v7, 0x3ff0000a7c5ac472L    # 1.00001

    cmpg-double v7, v5, v7

    if-gez v7, :cond_0

    iget-wide v7, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->g:D

    mul-double/2addr v7, v5

    iget-wide v9, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->i:D

    add-double/2addr v7, v9

    mul-double/2addr v7, v5

    iget-wide v9, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->k:D

    add-double/2addr v7, v9

    mul-double/2addr v7, v5

    cmpg-double v9, p5, v7

    if-gtz v9, :cond_0

    cmpg-double v9, v7, p7

    if-gtz v9, :cond_0

    add-int/lit8 v9, v1, 0x1

    aput-wide v5, p1, v1

    add-int/lit8 v1, v9, 0x1

    aput-wide v7, p1, v9

    add-int/lit8 v7, v1, 0x1

    iget-wide v8, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->h:D

    mul-double/2addr v8, v5

    iget-wide v10, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->j:D

    add-double/2addr v8, v10

    mul-double/2addr v8, v5

    iget-wide v10, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->l:D

    add-double/2addr v8, v10

    mul-double/2addr v5, v8

    aput-wide v5, p1, v1

    add-int/lit8 v1, v7, 0x1

    int-to-double v5, v2

    aput-wide v5, p1, v7

    if-eqz p9, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b([DIDD)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v3, p2

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_b

    aget-wide v4, p1, v1

    const-wide v6, -0x411b074a771c970fL    # -1.0E-5

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_a

    const-wide v8, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v8, v4, v8

    if-lez v8, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v10, v4, v8

    const-wide/16 v11, 0x0

    if-gez v10, :cond_3

    cmpg-double v4, p3, v11

    if-gez v4, :cond_a

    iget-wide v4, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->c:D

    cmpl-double v6, v4, v11

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v6, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->e:D

    cmpl-double v8, v6, v4

    if-eqz v8, :cond_2

    sub-double v4, v6, v4

    goto :goto_1

    :cond_2
    iget-wide v4, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->a:D

    sub-double/2addr v4, v6

    :goto_1
    cmpg-double v4, v4, v11

    if-gez v4, :cond_a

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_3
    const-wide v13, 0x3fefffeb074a771dL    # 0.99999

    cmpl-double v10, v4, v13

    if-lez v10, :cond_6

    iget-wide v4, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->b:D

    cmpg-double v4, p3, v4

    if-gez v4, :cond_a

    iget-wide v4, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->a:D

    iget-wide v6, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->e:D

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_4

    sub-double/2addr v4, v6

    goto :goto_2

    :cond_4
    iget-wide v4, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->c:D

    cmpl-double v8, v6, v4

    if-eqz v8, :cond_5

    sub-double v4, v6, v4

    :cond_5
    :goto_2
    cmpl-double v4, v4, v11

    if-lez v4, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget-wide v13, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->h:D

    mul-double/2addr v13, v4

    iget-wide v11, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->j:D

    add-double/2addr v13, v11

    mul-double/2addr v13, v4

    iget-wide v10, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->l:D

    add-double/2addr v13, v10

    mul-double/2addr v13, v4

    cmpl-double v10, v13, p5

    if-lez v10, :cond_a

    iget-wide v10, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->m:D

    mul-double v12, v4, v10

    iget-wide v8, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->n:D

    add-double/2addr v12, v8

    mul-double/2addr v12, v4

    iget-wide v14, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->k:D

    add-double/2addr v12, v14

    cmpl-double v14, v12, v6

    if-lez v14, :cond_8

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v16, v12, v14

    if-gez v16, :cond_8

    add-double/2addr v10, v10

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_a

    cmpl-double v4, v4, v14

    if-lez v4, :cond_7

    goto :goto_4

    :cond_7
    iget-wide v12, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->a:D

    :cond_8
    const-wide/16 v4, 0x0

    cmpl-double v4, v12, v4

    if-lez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_3

    :cond_9
    const/4 v4, -0x1

    :goto_3
    add-int/2addr v2, v4

    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return v2
.end method

.method public c([D)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->k:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->n:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->m:D

    aput-wide v2, v0, v1

    invoke-static {v0, p1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->solveQuad([D[D)I

    move-result p0

    return p0
.end method

.method public d([D)I
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->l:D

    aput-wide v2, v0, v1

    iget-wide v1, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->j:D

    add-double/2addr v1, v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    iget-wide v1, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->h:D

    add-double v3, v1, v1

    add-double/2addr v3, v1

    const/4 p0, 0x2

    aput-wide v3, v0, p0

    invoke-static {v0, p1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->solveQuad([D[D)I

    move-result p0

    return p0
.end method

.method public e([DD)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    neg-double p2, p2

    aput-wide p2, v0, v1

    const/4 p2, 0x1

    iget-wide v1, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->k:D

    aput-wide v1, v0, p2

    const/4 p2, 0x2

    iget-wide v1, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->i:D

    aput-wide v1, v0, p2

    const/4 p2, 0x3

    iget-wide v1, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$CubicCurve;->g:D

    aput-wide v1, v0, p2

    invoke-static {v0, p1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->solveCubic([D[D)I

    move-result p0

    return p0
.end method
