.class public Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuadCurve"
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


# direct methods
.method public constructor <init>(DDDDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-double/2addr p9, p1

    iput-wide p9, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->a:D

    sub-double/2addr p11, p3

    iput-wide p11, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->b:D

    sub-double/2addr p5, p1

    iput-wide p5, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->c:D

    sub-double/2addr p7, p3

    iput-wide p7, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->d:D

    add-double/2addr p5, p5

    iput-wide p5, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->g:D

    sub-double/2addr p9, p5

    iput-wide p9, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->e:D

    add-double/2addr p7, p7

    iput-wide p7, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->h:D

    sub-double/2addr p11, p7

    iput-wide p11, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->f:D

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

    iget-wide v7, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->e:D

    mul-double/2addr v7, v5

    iget-wide v9, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->g:D

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

    iget-wide v8, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->f:D

    mul-double/2addr v8, v5

    iget-wide v10, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->h:D

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
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v3, p2

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_8

    aget-wide v4, p1, v1

    const-wide v6, -0x411b074a771c970fL    # -1.0E-5

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_7

    const-wide v8, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v8, v4, v8

    if-lez v8, :cond_0

    goto :goto_3

    :cond_0
    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v10, v4, v8

    const-wide/16 v11, 0x0

    if-gez v10, :cond_2

    cmpg-double v4, p3, v11

    if-gez v4, :cond_7

    iget-wide v4, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->c:D

    cmpl-double v6, v4, v11

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v6, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->a:D

    sub-double v4, v6, v4

    :goto_1
    cmpg-double v4, v4, v11

    if-gez v4, :cond_7

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    const-wide v13, 0x3fefffeb074a771dL    # 0.99999

    cmpl-double v10, v4, v13

    if-lez v10, :cond_4

    iget-wide v4, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->b:D

    cmpg-double v4, p3, v4

    if-gez v4, :cond_7

    iget-wide v4, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->a:D

    iget-wide v6, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->c:D

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_3

    sub-double v6, v4, v6

    :cond_3
    cmpl-double v4, v6, v11

    if-lez v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-wide v13, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->f:D

    mul-double/2addr v13, v4

    iget-wide v11, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->h:D

    add-double/2addr v13, v11

    mul-double/2addr v13, v4

    cmpl-double v10, v13, p5

    if-lez v10, :cond_7

    iget-wide v10, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->e:D

    mul-double/2addr v4, v10

    iget-wide v10, v0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->c:D

    add-double/2addr v4, v10

    cmpl-double v6, v4, v6

    if-lez v6, :cond_5

    cmpg-double v6, v4, v8

    if-gez v6, :cond_5

    goto :goto_3

    :cond_5
    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, -0x1

    :goto_2
    add-int/2addr v2, v4

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return v2
.end method

.method public c([D)I
    .locals 8

    iget-wide v0, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-wide v6, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->g:D

    neg-double v6, v6

    add-double/2addr v0, v0

    div-double/2addr v6, v0

    aput-wide v6, p1, v5

    const/4 v5, 0x1

    :cond_0
    iget-wide v0, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->f:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v5, 0x1

    iget-wide v3, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->h:D

    neg-double v3, v3

    add-double/2addr v0, v0

    div-double/2addr v3, v0

    aput-wide v3, p1, v5

    move v5, v2

    :cond_1
    return v5
.end method

.method public d([DD)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    neg-double p2, p2

    aput-wide p2, v0, v1

    const/4 p2, 0x1

    iget-wide v1, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->g:D

    aput-wide v1, v0, p2

    const/4 p2, 0x2

    iget-wide v1, p0, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing$QuadCurve;->e:D

    aput-wide v1, v0, p2

    invoke-static {v0, p1}, Lcom/graphbuilder/org/apache/harmony/awt/gl/Crossing;->solveQuad([D[D)I

    move-result p0

    return p0
.end method
