.class public Lcom/graphbuilder/curve/CatmullRomSpline;
.super Lcom/graphbuilder/curve/ParametricCurve;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/curve/CatmullRomSpline$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/graphbuilder/curve/CatmullRomSpline$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/graphbuilder/curve/CatmullRomSpline$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphbuilder/curve/CatmullRomSpline$a;

    invoke-direct {v0}, Lcom/graphbuilder/curve/CatmullRomSpline$a;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/CatmullRomSpline;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/ParametricCurve;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    sget-object p1, Lcom/graphbuilder/curve/CatmullRomSpline;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphbuilder/curve/CatmullRomSpline$b;

    iput-object p1, p0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    return-void
.end method


# virtual methods
.method public appendTo(Lcom/graphbuilder/curve/MultiPath;)V
    .locals 9

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/graphbuilder/curve/GroupIterator;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->getGroupSize()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0, v2, v2}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v3

    iget-object v4, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v5, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v5}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v4

    invoke-interface {v4}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    invoke-virtual {p0, v0}, Lcom/graphbuilder/curve/CatmullRomSpline;->eval([D)V

    iget-boolean v3, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/graphbuilder/curve/MultiPath;->moveTo([D)V

    :goto_1
    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0, v2, v2}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    :goto_2
    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->index_i()I

    move-result v0

    iget-object v3, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v3}, Lcom/graphbuilder/curve/GroupIterator;->count_j()I

    move-result v3

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_3

    iget-object v5, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v5}, Lcom/graphbuilder/curve/GroupIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    iget-object v5, p0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v5

    iget-object v6, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v7, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v7}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v6

    invoke-interface {v6}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v4, v0, v3}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->genPts(Lcom/graphbuilder/curve/ParametricCurve;DDLcom/graphbuilder/curve/MultiPath;)V

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Group iterator size < 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Group iterator not in range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public eval([D)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v1, v2

    mul-double v6, v4, v4

    mul-double v8, v6, v4

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    array-length v11, v1

    sub-int/2addr v11, v3

    if-ge v10, v11, :cond_0

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aget-wide v13, v11, v10

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v2

    aget-wide v15, v11, v10

    sub-double/2addr v13, v15

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v3

    aget-wide v15, v11, v10

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    const/16 v17, 0x2

    aget-object v11, v11, v17

    aget-wide v18, v11, v10

    sub-double v15, v15, v18

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v15, v15, v18

    add-double/2addr v13, v15

    mul-double/2addr v13, v8

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v2

    aget-wide v15, v11, v10

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v17

    aget-wide v18, v11, v10

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    add-double v15, v15, v18

    mul-double v15, v15, v20

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v3

    aget-wide v18, v11, v10

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    mul-double v18, v18, v20

    sub-double v15, v15, v18

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v12

    aget-wide v11, v11, v10

    sub-double/2addr v15, v11

    mul-double/2addr v15, v6

    add-double/2addr v13, v15

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v17

    aget-wide v11, v11, v10

    iget-object v15, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v15}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v15

    aget-object v15, v15, v2

    aget-wide v15, v15, v10

    sub-double/2addr v11, v15

    mul-double/2addr v11, v4

    add-double/2addr v13, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v13, v11

    iget-object v11, v0, Lcom/graphbuilder/curve/CatmullRomSpline;->a:Lcom/graphbuilder/curve/CatmullRomSpline$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/CatmullRomSpline$b;->a(Lcom/graphbuilder/curve/CatmullRomSpline$b;)[[D

    move-result-object v11

    aget-object v11, v11, v3

    aget-wide v11, v11, v10

    add-double/2addr v13, v11

    aput-wide v13, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public getSampleLimit()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
