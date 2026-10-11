.class public Lcom/graphbuilder/curve/BSpline;
.super Lcom/graphbuilder/curve/ParametricCurve;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/curve/BSpline$b;
    }
.end annotation


# static fields
.field public static final NON_UNIFORM:I = 0x2

.field public static final UNIFORM_CLAMPED:I = 0x0

.field public static final UNIFORM_UNCLAMPED:I = 0x1

.field public static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/graphbuilder/curve/BSpline$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/graphbuilder/curve/BSpline$b;

.field public b:Lcom/graphbuilder/curve/ValueVector;

.field public c:D

.field public d:D

.field public e:I

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphbuilder/curve/BSpline$a;

    invoke-direct {v0}, Lcom/graphbuilder/curve/BSpline$a;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/BSpline;->i:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/ParametricCurve;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    sget-object p1, Lcom/graphbuilder/curve/BSpline;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphbuilder/curve/BSpline$b;

    iput-object p1, p0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    new-instance p1, Lcom/graphbuilder/curve/ValueVector;

    const/16 p2, 0x8

    new-array v0, p2, [D

    fill-array-data v0, :array_0

    invoke-direct {p1, v0, p2}, Lcom/graphbuilder/curve/ValueVector;-><init>([DI)V

    iput-object p1, p0, Lcom/graphbuilder/curve/BSpline;->b:Lcom/graphbuilder/curve/ValueVector;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/graphbuilder/curve/BSpline;->c:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Lcom/graphbuilder/curve/BSpline;->d:D

    const/4 p1, 0x1

    iput p1, p0, Lcom/graphbuilder/curve/BSpline;->e:I

    const/4 p2, 0x4

    iput p2, p0, Lcom/graphbuilder/curve/BSpline;->f:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/graphbuilder/curve/BSpline;->g:I

    iput-boolean p1, p0, Lcom/graphbuilder/curve/BSpline;->h:Z

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public N(DI)D
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v0, Lcom/graphbuilder/curve/BSpline;->f:I

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_b

    iget-object v3, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v3

    add-int v6, p3, v2

    aget-wide v7, v3, v6

    iget-object v3, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v3

    const/4 v9, 0x1

    add-int/2addr v6, v9

    aget-wide v10, v3, v6

    cmpl-double v3, p1, v7

    if-ltz v3, :cond_a

    cmpg-double v3, p1, v10

    if-gtz v3, :cond_a

    cmpl-double v3, v7, v10

    if-eqz v3, :cond_a

    iget v3, v0, Lcom/graphbuilder/curve/BSpline;->f:I

    add-int/lit8 v6, v3, -0x2

    sub-int/2addr v3, v2

    sub-int/2addr v3, v9

    :goto_1
    if-ltz v3, :cond_0

    iget-object v7, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/BSpline$b;->c(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v7

    aput v1, v7, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    if-lez v2, :cond_2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_1

    iget-object v7, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v7

    aput v3, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v3

    const v7, 0x7fffffff

    aput v7, v3, v2

    goto :goto_3

    :cond_2
    iget-object v3, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v3

    aput v6, v3, v1

    iget-object v3, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v3

    iget v7, v0, Lcom/graphbuilder/curve/BSpline;->f:I

    aput v7, v3, v9

    :goto_3
    move v3, v1

    :goto_4
    iget-object v7, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v7

    aget v7, v7, v3

    iget-object v8, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v8}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v8

    add-int/lit8 v10, v3, 0x1

    aget v8, v8, v10

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_9

    sub-int v7, v6, v2

    add-int/lit8 v8, v2, -0x1

    iget v10, v0, Lcom/graphbuilder/curve/BSpline;->f:I

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move v14, v1

    move v13, v6

    :goto_5
    if-ltz v13, :cond_4

    if-ltz v8, :cond_3

    iget-object v15, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v15

    aget v15, v15, v8

    if-ne v15, v13, :cond_3

    add-int v15, p3, v14

    iget-object v1, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v1

    add-int v16, v15, v10

    aget-wide v16, v1, v16

    sub-double v18, v16, p1

    iget-object v1, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v1

    add-int/2addr v15, v9

    aget-wide v20, v1, v15

    sub-double v16, v16, v20

    div-double v18, v18, v16

    mul-double v11, v11, v18

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    :cond_3
    iget-object v1, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/BSpline$b;->c(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v1

    aget v1, v1, v7

    add-int v1, p3, v1

    iget-object v15, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v15

    aget-wide v16, v15, v1

    sub-double v18, p1, v16

    iget-object v15, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v15

    add-int/2addr v1, v10

    sub-int/2addr v1, v9

    aget-wide v20, v15, v1

    sub-double v20, v20, v16

    div-double v18, v18, v20

    mul-double v11, v11, v18

    add-int/lit8 v7, v7, -0x1

    :goto_6
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v10, v10, -0x1

    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    if-lez v2, :cond_6

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_7
    iget-object v8, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v8}, Lcom/graphbuilder/curve/BSpline$b;->c(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v8

    aget v10, v8, v1

    add-int/2addr v10, v9

    aput v10, v8, v1

    iget-object v8, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v8}, Lcom/graphbuilder/curve/BSpline$b;->c(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v8

    aget v8, v8, v1

    if-le v8, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    move v7, v9

    goto :goto_7

    :cond_5
    if-eqz v7, :cond_6

    add-int/lit8 v7, v1, -0x1

    :goto_8
    if-ltz v7, :cond_6

    iget-object v8, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v8}, Lcom/graphbuilder/curve/BSpline$b;->c(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v8

    iget-object v10, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v10}, Lcom/graphbuilder/curve/BSpline$b;->c(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v10

    aget v10, v10, v1

    aput v10, v8, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    :cond_6
    add-double/2addr v4, v11

    iget-object v1, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v1

    aget v7, v1, v3

    add-int/2addr v7, v9

    aput v7, v1, v3

    iget-object v1, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v1

    aget v1, v1, v3

    if-le v1, v6, :cond_7

    goto :goto_a

    :cond_7
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_8

    iget-object v7, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/BSpline$b;->e(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v7

    aput v1, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_9
    move v3, v10

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_b
    :goto_a
    return-wide v4
.end method

.method public appendTo(Lcom/graphbuilder/curve/MultiPath;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    iget-object v1, v0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    iget-object v2, v0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    invoke-virtual {v2}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/graphbuilder/curve/GroupIterator;->isInRange(II)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/GroupIterator;->getGroupSize()I

    move-result v1

    iget v2, v0, Lcom/graphbuilder/curve/BSpline;->f:I

    sub-int v4, v1, v2

    if-ltz v4, :cond_c

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v2

    array-length v2, v2

    if-ge v2, v1, :cond_0

    iget-object v2, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    mul-int/lit8 v6, v1, 0x2

    new-array v6, v6, [D

    invoke-static {v2, v6}, Lcom/graphbuilder/curve/BSpline$b;->b(Lcom/graphbuilder/curve/BSpline$b;[D)[D

    :cond_0
    iget-wide v6, v0, Lcom/graphbuilder/curve/BSpline;->c:D

    iget-wide v8, v0, Lcom/graphbuilder/curve/BSpline;->d:D

    iget v2, v0, Lcom/graphbuilder/curve/BSpline;->g:I

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v2, v10, :cond_3

    iget-object v2, v0, Lcom/graphbuilder/curve/BSpline;->b:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v2}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v2

    iget-object v4, v0, Lcom/graphbuilder/curve/BSpline;->b:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v4, v3}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v12

    aput-wide v12, v2, v3

    move v2, v11

    :goto_0
    if-ge v2, v1, :cond_9

    iget-object v3, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v3

    iget-object v4, v0, Lcom/graphbuilder/curve/BSpline;->b:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v4, v2}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v12

    aput-wide v12, v3, v2

    iget-object v3, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v3

    aget-wide v3, v3, v2

    iget-object v12, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v12}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v12

    add-int/lit8 v13, v2, -0x1

    aget-wide v12, v12, v13

    cmpg-double v3, v3, v12

    if-ltz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Knot not in sorted order! (knot["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] < knot["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-1])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "knotVector.size("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/graphbuilder/curve/BSpline;->b:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") != "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-ne v2, v11, :cond_5

    add-int/lit8 v2, v1, -0x1

    int-to-double v14, v2

    div-double v14, v12, v14

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v2, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v2

    int-to-double v12, v3

    mul-double/2addr v12, v14

    aput-wide v12, v2, v3

    add-int/lit8 v3, v3, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_4
    iget-boolean v1, v0, Lcom/graphbuilder/curve/BSpline;->h:Z

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/graphbuilder/curve/BSpline;->f:I

    add-int/lit8 v2, v1, -0x1

    int-to-double v2, v2

    mul-double v6, v2, v14

    sub-int/2addr v1, v11

    int-to-double v1, v1

    mul-double/2addr v1, v14

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v8, v12, v1

    goto :goto_5

    :cond_5
    if-nez v2, :cond_9

    add-int/lit8 v2, v4, 0x1

    int-to-double v14, v2

    div-double v14, v12, v14

    :goto_2
    iget v2, v0, Lcom/graphbuilder/curve/BSpline;->f:I

    const-wide/16 v12, 0x0

    if-ge v3, v2, :cond_6

    iget-object v2, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v2

    aput-wide v12, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v11

    :goto_3
    if-gt v3, v4, :cond_7

    iget-object v12, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v12}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v12

    add-int/lit8 v13, v2, 0x1

    int-to-double v10, v3

    mul-double/2addr v10, v14

    aput-wide v10, v12, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v13

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    goto :goto_3

    :cond_7
    :goto_4
    if-ge v2, v1, :cond_8

    iget-object v3, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-boolean v1, v0, Lcom/graphbuilder/curve/BSpline;->h:Z

    if-eqz v1, :cond_9

    move-wide v3, v10

    const-wide/16 v1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    move-wide v1, v6

    move-wide v3, v8

    :goto_6
    iget-object v6, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v6}, Lcom/graphbuilder/curve/BSpline$b;->c(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v6

    array-length v6, v6

    iget v7, v0, Lcom/graphbuilder/curve/BSpline;->f:I

    if-ge v6, v7, :cond_a

    iget-object v6, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    new-array v7, v7, [I

    invoke-static {v6, v7}, Lcom/graphbuilder/curve/BSpline$b;->d(Lcom/graphbuilder/curve/BSpline$b;[I)[I

    iget-object v6, v0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    iget v7, v0, Lcom/graphbuilder/curve/BSpline;->f:I

    mul-int/2addr v7, v8

    new-array v7, v7, [I

    invoke-static {v6, v7}, Lcom/graphbuilder/curve/BSpline$b;->f(Lcom/graphbuilder/curve/BSpline$b;[I)[I

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    new-array v6, v6, [D

    invoke-virtual/range {p1 .. p1}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result v7

    aput-wide v1, v6, v7

    invoke-virtual {v0, v6}, Lcom/graphbuilder/curve/BSpline;->eval([D)V

    iget-boolean v7, v0, Lcom/graphbuilder/curve/Curve;->connect:Z

    if-eqz v7, :cond_b

    invoke-virtual {v5, v6}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    goto :goto_7

    :cond_b
    invoke-virtual {v5, v6}, Lcom/graphbuilder/curve/MultiPath;->moveTo([D)V

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->genPts(Lcom/graphbuilder/curve/ParametricCurve;DDLcom/graphbuilder/curve/MultiPath;)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "group iterator size - degree < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Group iterator not in range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eval([D)V
    .locals 14

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, p1, v0

    iget-object v3, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v3}, Lcom/graphbuilder/curve/GroupIterator;->getGroupSize()I

    move-result v3

    iget-object v4, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v1, v2, v4}, Lcom/graphbuilder/curve/BSpline;->N(DI)D

    move-result-wide v6

    iget-object v8, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v9, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v9}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v8

    invoke-interface {v8}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v8

    move v9, v5

    :goto_1
    if-ge v9, v0, :cond_0

    aget-wide v10, p1, v9

    aget-wide v12, v8, v9

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    aput-wide v10, p1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDegree()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/BSpline;->f:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getKnotVector()Lcom/graphbuilder/curve/ValueVector;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/BSpline;->b:Lcom/graphbuilder/curve/ValueVector;

    return-object p0
.end method

.method public getKnotVectorType()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/BSpline;->g:I

    return p0
.end method

.method public getSampleLimit()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/BSpline;->e:I

    return p0
.end method

.method public getUseDefaultInterval()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/curve/BSpline;->h:Z

    return p0
.end method

.method public resetMemory()V
    .locals 3

    iget-object v0, p0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v0}, Lcom/graphbuilder/curve/BSpline$b;->c(Lcom/graphbuilder/curve/BSpline$b;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    new-array v2, v1, [I

    invoke-static {v0, v2}, Lcom/graphbuilder/curve/BSpline$b;->d(Lcom/graphbuilder/curve/BSpline$b;[I)[I

    iget-object v0, p0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    new-array v2, v1, [I

    invoke-static {v0, v2}, Lcom/graphbuilder/curve/BSpline$b;->f(Lcom/graphbuilder/curve/BSpline$b;[I)[I

    :cond_0
    iget-object v0, p0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    invoke-static {v0}, Lcom/graphbuilder/curve/BSpline$b;->a(Lcom/graphbuilder/curve/BSpline$b;)[D

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/graphbuilder/curve/BSpline;->a:Lcom/graphbuilder/curve/BSpline$b;

    new-array v0, v1, [D

    invoke-static {p0, v0}, Lcom/graphbuilder/curve/BSpline$b;->b(Lcom/graphbuilder/curve/BSpline$b;[D)[D

    :cond_1
    return-void
.end method

.method public setDegree(I)V
    .locals 0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphbuilder/curve/BSpline;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Degree > 0 required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInterval(DD)V
    .locals 1

    cmpl-double v0, p1, p3

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lcom/graphbuilder/curve/BSpline;->c:D

    iput-wide p3, p0, Lcom/graphbuilder/curve/BSpline;->d:D

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "t_min <= t_max required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setKnotVector(Lcom/graphbuilder/curve/ValueVector;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphbuilder/curve/BSpline;->b:Lcom/graphbuilder/curve/ValueVector;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Knot-vector cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setKnotVectorType(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/graphbuilder/curve/BSpline;->g:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown knot-vector type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSampleLimit(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/graphbuilder/curve/BSpline;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sample-limit >= 0 required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUseDefaultInterval(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/BSpline;->h:Z

    return-void
.end method

.method public t_max()D
    .locals 2

    iget-wide v0, p0, Lcom/graphbuilder/curve/BSpline;->d:D

    return-wide v0
.end method

.method public t_min()D
    .locals 2

    iget-wide v0, p0, Lcom/graphbuilder/curve/BSpline;->c:D

    return-wide v0
.end method
