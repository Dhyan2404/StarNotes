.class public Lcom/graphbuilder/curve/CubicBSpline;
.super Lcom/graphbuilder/curve/ParametricCurve;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/curve/CubicBSpline$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/graphbuilder/curve/CubicBSpline$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/graphbuilder/curve/CubicBSpline$b;

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphbuilder/curve/CubicBSpline$a;

    invoke-direct {v0}, Lcom/graphbuilder/curve/CubicBSpline$a;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/CubicBSpline;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/ParametricCurve;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    sget-object p1, Lcom/graphbuilder/curve/CubicBSpline;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphbuilder/curve/CubicBSpline$b;

    iput-object p1, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/CubicBSpline;->b:Z

    return-void
.end method


# virtual methods
.method public appendTo(Lcom/graphbuilder/curve/MultiPath;)V
    .locals 13

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/graphbuilder/curve/GroupIterator;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->getGroupSize()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_8

    iget-boolean v3, p0, Lcom/graphbuilder/curve/CubicBSpline;->b:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v3, v0}, Lcom/graphbuilder/curve/CubicBSpline$b;->b(Lcom/graphbuilder/curve/CubicBSpline$b;I)I

    iget-object v3, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v3, v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->e(Lcom/graphbuilder/curve/CubicBSpline$b;I)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    const/4 v5, -0x1

    invoke-static {v3, v5}, Lcom/graphbuilder/curve/CubicBSpline$b;->b(Lcom/graphbuilder/curve/CubicBSpline$b;I)I

    iget-object v3, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v3, v4}, Lcom/graphbuilder/curve/CubicBSpline$b;->e(Lcom/graphbuilder/curve/CubicBSpline$b;I)I

    :goto_0
    iget-object v3, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v3, v2, v2}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v5, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/CubicBSpline$b;->g(Lcom/graphbuilder/curve/CubicBSpline$b;)[[D

    move-result-object v5

    iget-object v6, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v7, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v7}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v6

    invoke-interface {v6}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [D

    invoke-virtual {p0, v3}, Lcom/graphbuilder/curve/CubicBSpline;->eval([D)V

    iget-boolean v5, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    if-eqz v5, :cond_2

    invoke-virtual {p1, v3}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Lcom/graphbuilder/curve/MultiPath;->moveTo([D)V

    :goto_2
    const/4 v3, 0x3

    move v5, v2

    move v6, v5

    :cond_3
    :goto_3
    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v7, p0

    move-object v12, p1

    invoke-static/range {v7 .. v12}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->genPts(Lcom/graphbuilder/curve/ParametricCurve;DDLcom/graphbuilder/curve/MultiPath;)V

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_4

    return-void

    :cond_4
    iget-object v7, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v7, v5, v6}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    iget-object v5, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v5}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    iget-object v5, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v5}, Lcom/graphbuilder/curve/GroupIterator;->index_i()I

    move-result v5

    iget-object v6, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v6}, Lcom/graphbuilder/curve/GroupIterator;->count_j()I

    move-result v6

    move v7, v2

    :goto_4
    if-ge v7, v1, :cond_5

    iget-object v8, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v8}, Lcom/graphbuilder/curve/CubicBSpline$b;->g(Lcom/graphbuilder/curve/CubicBSpline$b;)[[D

    move-result-object v8

    iget-object v9, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v10, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v10}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v9

    invoke-interface {v9}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    iget-boolean v7, p0, Lcom/graphbuilder/curve/CubicBSpline;->b:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x7

    if-ge v0, v7, :cond_6

    iget-object v7, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/CubicBSpline$b;->f(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/CubicBSpline$b;->d(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v7

    if-eq v7, v4, :cond_7

    iget-object v7, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/CubicBSpline$b;->f(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    :cond_7
    iget-object v7, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/CubicBSpline$b;->d(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v7

    if-ne v7, v4, :cond_3

    add-int/lit8 v7, v0, -0x2

    if-ne v3, v7, :cond_3

    iget-object v7, p0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/CubicBSpline$b;->f(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Group iterator size < 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Group iterator not in range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public eval([D)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v1, v2

    mul-double v6, v4, v4

    mul-double v8, v6, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v4

    mul-double v12, v10, v10

    mul-double v14, v12, v10

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->a(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    const/16 v16, 0x0

    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    aput-wide v14, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v12, v12, v17

    mul-double/2addr v12, v4

    const/4 v4, 0x1

    aput-wide v12, v2, v4

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v10, v10, v17

    mul-double/2addr v10, v6

    const/4 v4, 0x2

    aput-wide v10, v2, v4

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    const/4 v4, 0x3

    aput-wide v8, v2, v4

    goto/16 :goto_0

    :cond_0
    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->a(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    const/4 v3, 0x5

    const-wide/high16 v19, 0x4022000000000000L    # 9.0

    const-wide/high16 v21, 0x401c000000000000L    # 7.0

    const-wide/high16 v23, 0x4010000000000000L    # 4.0

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->d(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    aput-wide v14, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v21, v21, v8

    div-double v21, v21, v23

    mul-double v19, v19, v6

    div-double v19, v19, v25

    sub-double v21, v21, v19

    mul-double v4, v4, v17

    add-double v21, v21, v4

    const/4 v3, 0x1

    aput-wide v21, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    neg-double v3, v8

    mul-double v6, v6, v17

    div-double v6, v6, v25

    add-double/2addr v3, v6

    const/4 v5, 0x2

    aput-wide v3, v2, v5

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v8, v8, v23

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    goto/16 :goto_0

    :cond_1
    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v3, v14, v23

    aput-wide v3, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    neg-double v3, v14

    mul-double v5, v12, v17

    div-double v5, v5, v25

    add-double/2addr v3, v5

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v14, v14, v21

    div-double v14, v14, v23

    mul-double v12, v12, v19

    div-double v12, v12, v25

    sub-double/2addr v14, v12

    mul-double v10, v10, v17

    add-double/2addr v14, v10

    const/4 v3, 0x2

    aput-wide v14, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    goto/16 :goto_0

    :cond_2
    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->a(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    const/4 v3, 0x6

    const-wide v27, 0x3fe2aaaaaaaaaaabL    # 0.5833333333333334

    const-wide/high16 v29, 0x4014000000000000L    # 5.0

    const-wide v31, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide/high16 v33, -0x3fda000000000000L    # -11.0

    const-wide/high16 v35, 0x4018000000000000L    # 6.0

    const-wide/high16 v37, 0x4028000000000000L    # 12.0

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->d(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    aput-wide v14, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v21, v21, v8

    div-double v21, v21, v23

    mul-double v19, v19, v6

    div-double v19, v19, v25

    sub-double v21, v21, v19

    mul-double v4, v4, v17

    add-double v21, v21, v4

    const/4 v3, 0x1

    aput-wide v21, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v33, v33, v8

    div-double v33, v33, v37

    mul-double v6, v6, v17

    div-double v6, v6, v25

    add-double v33, v33, v6

    const/4 v3, 0x2

    aput-wide v33, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v8, v8, v35

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    goto/16 :goto_0

    :cond_3
    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->d(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v14, v14, v23

    aput-wide v14, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v21, v21, v8

    div-double v21, v21, v37

    mul-double v29, v29, v6

    div-double v29, v29, v23

    sub-double v21, v21, v29

    div-double v10, v4, v23

    add-double v21, v21, v10

    add-double v21, v21, v27

    const/4 v3, 0x1

    aput-wide v21, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    const-wide/high16 v10, -0x3fe4000000000000L    # -7.0

    mul-double/2addr v10, v8

    div-double v10, v10, v37

    div-double v6, v6, v25

    add-double/2addr v10, v6

    div-double v4, v4, v25

    add-double/2addr v10, v4

    add-double v10, v10, v31

    const/4 v3, 0x2

    aput-wide v10, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v8, v8, v23

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    goto/16 :goto_0

    :cond_4
    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v3, v14, v35

    aput-wide v3, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v33, v33, v14

    div-double v33, v33, v37

    mul-double v3, v12, v17

    div-double v3, v3, v25

    add-double v33, v33, v3

    const/4 v3, 0x1

    aput-wide v33, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v14, v14, v21

    div-double v14, v14, v23

    mul-double v12, v12, v19

    div-double v12, v12, v25

    sub-double/2addr v14, v12

    mul-double v10, v10, v17

    add-double/2addr v14, v10

    const/4 v3, 0x2

    aput-wide v14, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    goto/16 :goto_0

    :cond_5
    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->d(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    aput-wide v14, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v21, v21, v8

    div-double v21, v21, v23

    mul-double v19, v19, v6

    div-double v19, v19, v25

    sub-double v21, v21, v19

    mul-double v4, v4, v17

    add-double v21, v21, v4

    const/4 v3, 0x1

    aput-wide v21, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v33, v33, v8

    div-double v33, v33, v37

    mul-double v6, v6, v17

    div-double v6, v6, v25

    add-double v33, v33, v6

    const/4 v3, 0x2

    aput-wide v33, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v8, v8, v35

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    goto/16 :goto_0

    :cond_6
    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->d(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v14, v14, v23

    aput-wide v14, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v21, v21, v8

    div-double v21, v21, v37

    mul-double v29, v29, v6

    div-double v29, v29, v23

    sub-double v21, v21, v29

    div-double v10, v4, v23

    add-double v21, v21, v10

    add-double v21, v21, v27

    const/4 v3, 0x1

    aput-wide v21, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    neg-double v10, v8

    div-double v10, v10, v25

    div-double v6, v6, v25

    add-double/2addr v10, v6

    div-double v4, v4, v25

    add-double/2addr v10, v4

    add-double v10, v10, v31

    const/4 v3, 0x2

    aput-wide v10, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v8, v8, v35

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x2

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->d(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    if-ne v2, v3, :cond_8

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v14, v14, v35

    aput-wide v14, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v10, v8, v25

    sub-double/2addr v10, v6

    const-wide v12, 0x3fe5555555555555L    # 0.6666666666666666

    add-double/2addr v10, v12

    const/4 v3, 0x1

    aput-wide v10, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    neg-double v10, v8

    add-double/2addr v10, v6

    add-double/2addr v10, v4

    div-double v10, v10, v25

    add-double v10, v10, v31

    const/4 v3, 0x2

    aput-wide v10, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v8, v8, v35

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->d(Lcom/graphbuilder/curve/CubicBSpline$b;)I

    move-result v2

    if-ne v2, v3, :cond_9

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v3, v14, v35

    aput-wide v3, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    neg-double v3, v14

    div-double v3, v3, v25

    div-double v5, v12, v25

    add-double/2addr v3, v5

    div-double v5, v10, v25

    add-double/2addr v3, v5

    add-double v3, v3, v31

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v14, v14, v21

    div-double v14, v14, v37

    mul-double v12, v12, v29

    div-double v12, v12, v23

    sub-double/2addr v14, v12

    div-double v10, v10, v23

    add-double/2addr v14, v10

    add-double v14, v14, v27

    const/4 v3, 0x2

    aput-wide v14, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v8, v8, v23

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    goto :goto_0

    :cond_9
    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    div-double v3, v14, v35

    aput-wide v3, v2, v16

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v33, v33, v14

    div-double v33, v33, v37

    mul-double v3, v12, v17

    div-double v3, v3, v25

    add-double v33, v33, v3

    const/4 v3, 0x1

    aput-wide v33, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    mul-double v14, v14, v21

    div-double v14, v14, v23

    mul-double v12, v12, v19

    div-double v12, v12, v25

    sub-double/2addr v14, v12

    mul-double v10, v10, v17

    add-double/2addr v14, v10

    const/4 v3, 0x2

    aput-wide v14, v2, v3

    iget-object v2, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v2}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v2

    const/4 v3, 0x3

    aput-wide v8, v2, v3

    :goto_0
    move/from16 v2, v16

    const/4 v3, 0x4

    :goto_1
    if-ge v2, v3, :cond_b

    move/from16 v4, v16

    :goto_2
    array-length v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    aget-wide v7, v1, v4

    iget-object v5, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/CubicBSpline$b;->g(Lcom/graphbuilder/curve/CubicBSpline$b;)[[D

    move-result-object v5

    aget-object v5, v5, v2

    aget-wide v9, v5, v4

    iget-object v5, v0, Lcom/graphbuilder/curve/CubicBSpline;->a:Lcom/graphbuilder/curve/CubicBSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/CubicBSpline$b;->c(Lcom/graphbuilder/curve/CubicBSpline$b;)[D

    move-result-object v5

    aget-wide v11, v5, v2

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public getInterpolateEndpoints()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/curve/CubicBSpline;->b:Z

    return p0
.end method

.method public getSampleLimit()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setInterpolateEndpoints(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/CubicBSpline;->b:Z

    return-void
.end method
