.class public Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;,
        Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I

.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public constructor <init>(IIDDD)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_3

    if-lez p2, :cond_2

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p3, v2

    if-gtz v2, :cond_1

    cmpg-double v0, p5, v0

    if-ltz v0, :cond_0

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->c:I

    .line 3
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->d:I

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->e:D

    .line 5
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->f:D

    .line 6
    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->g:D

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->a:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b:Ljava/util/List;

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 12
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public constructor <init>(IIDDDLorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(IIDDD)V

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_0

    .line 14
    invoke-virtual {p9}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->nextVector()[D

    move-result-object p4

    invoke-virtual {p0, p4, p1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->add([DZ)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V
    .locals 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->c:I

    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->c:I

    .line 17
    iget v0, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->d:I

    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->d:I

    .line 18
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->e:D

    iput-wide v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->e:D

    .line 19
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->f:D

    iput-wide v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->f:D

    .line 20
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->g:D

    iput-wide v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->g:D

    .line 21
    iget-object v1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->a:Ljava/util/List;

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->a:Ljava/util/List;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b:Ljava/util/List;

    .line 23
    iget-object p1, p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;

    .line 24
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;->a()D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;->b()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;-><init>(DD)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;-><init>(DD)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public add([DZ)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->d:I

    if-ge v0, v1, :cond_2

    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->c:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->a:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$a;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_0
    invoke-direct {v1, p1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$a;-><init>([D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b:Ljava/util/List;

    new-instance p1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;-><init>(DD)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget p0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->c:I

    invoke-direct {p2, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    iget p0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method public final b([DDD)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$a;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$a;->a()[D

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/math3/util/MathArrays;->cosAngle([D[D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    mul-double/2addr v1, p4

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->f:D

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;->a()D

    move-result-wide v3

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b:Ljava/util/List;

    new-instance v4, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;

    invoke-direct {v4, v1, v2, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;-><init>(DD)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()D
    .locals 13

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;->a()D

    move-result-wide v9

    cmpl-double v11, v9, v2

    if-eqz v11, :cond_0

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;->b()D

    move-result-wide v11

    mul-double/2addr v11, v9

    add-double/2addr v4, v11

    add-double/2addr v6, v9

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-double v0, v1

    iget v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->d:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->e:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    div-double/2addr v4, v6

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->g:D

    :goto_1
    return-wide v4
.end method

.method public copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V

    return-object v0
.end method

.method public getDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->c:I

    return p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->d:I

    return p0
.end method

.method public value([D[[D[DDD)D
    .locals 13

    move-object v0, p2

    move-wide/from16 v1, p4

    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->a()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    move-object v6, p1

    invoke-static {v5, p1}, Lorg/apache/commons/math3/util/MathArrays;->ebeSubtract([D[D)[D

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/math3/util/MathArrays;->safeNorm([D)D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpg-double v5, v11, p6

    if-gez v5, :cond_0

    aget-wide v0, p3, v4

    return-wide v0

    :cond_0
    neg-double v11, v1

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v11

    aget-wide v9, p3, v4

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->b([DDD)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->c()D

    move-result-wide v0

    return-wide v0

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method
