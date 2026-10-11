.class public Lorg/apache/commons/math3/linear/EigenDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/EigenDecomposition$b;
    }
.end annotation


# static fields
.field public static final l:D = 1.0E-12


# instance fields
.field public a:B

.field public b:[D

.field public c:[D

.field public d:Lcom/sunia/HTREnginev2/snn;

.field public e:[D

.field public f:[D

.field public g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

.field public h:Lorg/apache/commons/math3/linear/RealMatrix;

.field public i:Lorg/apache/commons/math3/linear/RealMatrix;

.field public j:Lorg/apache/commons/math3/linear/RealMatrix;

.field public final k:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 2
    iput-byte v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->a:B

    .line 3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v0, v2

    .line 4
    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->k:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->e(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 6
    iget-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->d:Lcom/sunia/HTREnginev2/snn;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/snn;->c()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->b([[D)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->d(Lorg/apache/commons/math3/linear/RealMatrix;)Lcom/sunia/HTREnginev2/z5m;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->c(Lcom/sunia/HTREnginev2/z5m;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 11
    iput-byte v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->a:B

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->k:Z

    .line 13
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->b:[D

    .line 14
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->c:[D

    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->d:Lcom/sunia/HTREnginev2/snn;

    .line 16
    array-length p1, p1

    .line 17
    filled-new-array {p1, p1}, [I

    move-result-object p2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 18
    aget-object v1, p2, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;->b([[D)V

    return-void
.end method

.method public constructor <init>([D[DD)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>([D[D)V

    return-void
.end method


# virtual methods
.method public final a(DDDD)Lorg/apache/commons/math3/complex/Complex;
    .locals 0

    new-instance p0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {p1, p5, p6, p7, p8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final b([[D)V
    .locals 37

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, [[D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->b:[D

    array-length v2, v2

    new-array v3, v2, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    new-array v3, v2, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    new-array v3, v2, [D

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->b:[D

    aget-wide v7, v7, v5

    aput-wide v7, v6, v5

    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->c:[D

    aget-wide v6, v6, v5

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->b:[D

    aget-wide v7, v7, v6

    aput-wide v7, v5, v6

    const-wide/16 v7, 0x0

    aput-wide v7, v3, v6

    move v5, v4

    move-wide v9, v7

    :goto_1
    if-ge v5, v2, :cond_3

    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v11, v11, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, v9

    if-lez v11, :cond_1

    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v9, v9, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    :cond_1
    aget-wide v11, v3, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, v9

    if-lez v11, :cond_2

    aget-wide v9, v3, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    cmpl-double v5, v9, v7

    if-eqz v5, :cond_6

    move v5, v4

    :goto_2
    if-ge v5, v2, :cond_6

    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v11, v11, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    sget-wide v13, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v15, v13, v9

    cmpg-double v11, v11, v15

    if-gtz v11, :cond_4

    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aput-wide v7, v11, v5

    :cond_4
    aget-wide v11, v3, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    mul-double/2addr v13, v9

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_5

    aput-wide v7, v3, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_3
    if-ge v5, v2, :cond_12

    move v9, v4

    :cond_7
    move v10, v5

    :goto_4
    if-ge v10, v6, :cond_9

    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v11, v11, v10

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    iget-object v13, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, v13, v14

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v11, v15

    aget-wide v15, v3, v10

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v15, v11

    cmpl-double v11, v15, v11

    if-nez v11, :cond_8

    goto :goto_5

    :cond_8
    move v10, v14

    goto :goto_4

    :cond_9
    :goto_5
    if-eq v10, v5, :cond_11

    iget-byte v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->a:B

    if-eq v9, v11, :cond_10

    add-int/lit8 v9, v9, 0x1

    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    add-int/lit8 v12, v5, 0x1

    aget-wide v12, v11, v12

    aget-wide v14, v11, v5

    sub-double/2addr v12, v14

    aget-wide v14, v3, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    mul-double v14, v12, v12

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v18

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    cmpg-double v11, v12, v7

    if-gez v11, :cond_a

    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v20, v11, v10

    aget-wide v22, v11, v5

    sub-double v20, v20, v22

    aget-wide v22, v3, v5

    sub-double/2addr v12, v14

    goto :goto_6

    :cond_a
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v20, v11, v10

    aget-wide v22, v11, v5

    sub-double v20, v20, v22

    aget-wide v22, v3, v5

    add-double/2addr v12, v14

    :goto_6
    div-double v22, v22, v12

    add-double v20, v20, v22

    add-int/lit8 v11, v10, -0x1

    move-wide/from16 v24, v7

    move-wide/from16 v12, v18

    move-wide/from16 v22, v12

    :goto_7
    if-lt v11, v5, :cond_e

    aget-wide v14, v3, v11

    mul-double/2addr v12, v14

    mul-double v22, v22, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    cmpl-double v14, v14, v26

    if-ltz v14, :cond_b

    div-double v14, v20, v12

    mul-double v26, v14, v14

    add-double v26, v26, v18

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    add-int/lit8 v28, v11, 0x1

    mul-double v12, v12, v26

    aput-wide v12, v3, v28

    div-double v12, v18, v26

    mul-double/2addr v14, v12

    move-wide/from16 v35, v14

    move-wide/from16 v14, v26

    move-wide/from16 v26, v35

    goto :goto_8

    :cond_b
    div-double v12, v12, v20

    mul-double v14, v12, v12

    add-double v14, v14, v18

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    add-int/lit8 v26, v11, 0x1

    mul-double v27, v20, v14

    aput-wide v27, v3, v26

    div-double v26, v18, v14

    mul-double v12, v12, v26

    :goto_8
    add-int/lit8 v28, v11, 0x1

    aget-wide v29, v3, v28

    cmpl-double v29, v29, v7

    if-nez v29, :cond_c

    iget-object v12, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v16, v12, v28

    sub-double v16, v16, v24

    aput-wide v16, v12, v28

    aput-wide v7, v3, v10

    goto :goto_a

    :cond_c
    iget-object v14, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v20, v14, v28

    sub-double v20, v20, v24

    aget-wide v24, v14, v11

    sub-double v24, v24, v20

    mul-double v24, v24, v12

    mul-double v29, v26, v16

    mul-double v29, v29, v22

    add-double v24, v24, v29

    mul-double v29, v12, v24

    add-double v20, v20, v29

    aput-wide v20, v14, v28

    mul-double v14, v26, v24

    sub-double v20, v14, v22

    move v14, v4

    :goto_9
    if-ge v14, v2, :cond_d

    aget-object v15, v1, v14

    aget-wide v22, v15, v28

    aget-wide v31, v15, v11

    mul-double v31, v31, v12

    mul-double v33, v26, v22

    add-double v31, v31, v33

    aput-wide v31, v15, v28

    aget-wide v31, v15, v11

    mul-double v31, v31, v26

    mul-double v22, v22, v12

    sub-double v31, v31, v22

    aput-wide v31, v15, v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v11, v11, -0x1

    move-wide/from16 v14, v24

    move-wide/from16 v22, v26

    move-wide/from16 v24, v29

    goto/16 :goto_7

    :cond_e
    :goto_a
    cmpl-double v12, v14, v7

    if-nez v12, :cond_f

    if-lt v11, v5, :cond_f

    goto :goto_b

    :cond_f
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v12, v11, v5

    sub-double v12, v12, v24

    aput-wide v12, v11, v5

    aput-wide v20, v3, v5

    aput-wide v7, v3, v10

    goto :goto_b

    :cond_10
    new-instance v1, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-byte v0, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->a:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v1

    :cond_11
    :goto_b
    if-ne v10, v5, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_12
    move v3, v4

    :goto_c
    if-ge v3, v2, :cond_16

    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v5, v5, v3

    add-int/lit8 v9, v3, 0x1

    move v11, v3

    move v10, v9

    :goto_d
    if-ge v10, v2, :cond_14

    iget-object v12, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v12, v12, v10

    cmpl-double v14, v12, v5

    if-lez v14, :cond_13

    move v11, v10

    move-wide v5, v12

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_14
    if-eq v11, v3, :cond_15

    iget-object v10, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v12, v10, v3

    aput-wide v12, v10, v11

    aput-wide v5, v10, v3

    move v5, v4

    :goto_e
    if-ge v5, v2, :cond_15

    aget-object v6, v1, v5

    aget-wide v12, v6, v3

    aget-wide v14, v6, v11

    aput-wide v14, v6, v3

    aput-wide v12, v6, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_15
    move v3, v9

    goto :goto_c

    :cond_16
    move v3, v4

    move-wide v5, v7

    :goto_f
    if-ge v3, v2, :cond_18

    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v9, v9, v3

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, v5

    if-lez v9, :cond_17

    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_18
    cmpl-double v3, v5, v7

    if-eqz v3, :cond_1a

    move v3, v4

    :goto_10
    if-ge v3, v2, :cond_1a

    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v9, v9, v3

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    sget-wide v11, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v11, v5

    cmpg-double v9, v9, v11

    if-gez v9, :cond_19

    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aput-wide v7, v9, v3

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1a
    new-array v3, v2, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-array v3, v2, [D

    move v5, v4

    :goto_11
    if-ge v5, v2, :cond_1c

    move v6, v4

    :goto_12
    if-ge v6, v2, :cond_1b

    aget-object v7, v1, v6

    aget-wide v7, v7, v5

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1b
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1c
    return-void
.end method

.method public final c(Lcom/sunia/HTREnginev2/z5m;)V
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/HTREnginev2/z5m;->f()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/HTREnginev2/z5m;->d()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v11

    array-length v12, v10

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-wide/from16 v16, v13

    move v0, v15

    :goto_0
    if-ge v0, v12, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-static {v1, v15}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    :goto_1
    if-ge v1, v12, :cond_0

    aget-object v2, v10, v0

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double v16, v16, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    const-wide v5, 0x3d719799812dea11L    # 1.0E-12

    move-wide/from16 v1, v16

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-nez v0, :cond_1a

    add-int/lit8 v7, v12, -0x1

    move v8, v7

    move-wide/from16 v18, v13

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    :goto_2
    if-ltz v8, :cond_14

    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v24, v0, v8

    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aget-wide v5, v0, v8

    invoke-static {v5, v6, v13, v14}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_9

    aget-object v0, v10, v8

    aput-wide v26, v0, v8

    add-int/lit8 v0, v8, -0x1

    move v3, v8

    move-wide/from16 v1, v18

    :goto_3
    if-ltz v0, :cond_8

    aget-object v4, v10, v0

    aget-wide v4, v4, v0

    sub-double v4, v4, v24

    move v6, v3

    :goto_4
    if-gt v6, v8, :cond_2

    aget-object v18, v10, v0

    aget-wide v18, v18, v6

    aget-object v22, v10, v6

    aget-wide v22, v22, v8

    mul-double v18, v18, v22

    add-double v13, v13, v18

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    iget-object v6, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aget-wide v30, v6, v0

    const-wide/16 v32, 0x0

    const-wide v34, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v30 .. v35}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v6

    if-gez v6, :cond_3

    move-wide/from16 v20, v4

    move/from16 p1, v7

    move-object/from16 v30, v11

    move/from16 v31, v12

    move-wide v1, v13

    goto/16 :goto_7

    :cond_3
    iget-object v3, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    move/from16 p1, v7

    aget-wide v6, v3, v0

    move-object/from16 v30, v11

    move/from16 v31, v12

    const-wide/16 v11, 0x0

    invoke-static {v6, v7, v11, v12}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v3

    if-eqz v3, :cond_5

    cmpl-double v3, v4, v11

    if-eqz v3, :cond_4

    aget-object v3, v10, v0

    neg-double v6, v13

    div-double/2addr v6, v4

    aput-wide v6, v3, v8

    goto :goto_5

    :cond_4
    aget-object v3, v10, v0

    neg-double v4, v13

    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v6, v6, v16

    div-double/2addr v4, v6

    aput-wide v4, v3, v8

    goto :goto_5

    :cond_5
    aget-object v3, v10, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v11, v3, v6

    aget-object v7, v10, v6

    aget-wide v18, v7, v0

    iget-object v7, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v22, v7, v0

    sub-double v32, v22, v24

    sub-double v22, v22, v24

    mul-double v32, v32, v22

    iget-object v7, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aget-wide v22, v7, v0

    mul-double v22, v22, v22

    add-double v32, v32, v22

    mul-double v22, v11, v1

    mul-double v34, v20, v13

    sub-double v22, v22, v34

    div-double v22, v22, v32

    aput-wide v22, v3, v8

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v34

    cmpl-double v3, v32, v34

    if-lez v3, :cond_6

    aget-object v3, v10, v6

    neg-double v6, v13

    mul-double v4, v4, v22

    sub-double/2addr v6, v4

    div-double/2addr v6, v11

    aput-wide v6, v3, v8

    goto :goto_5

    :cond_6
    aget-object v3, v10, v6

    neg-double v4, v1

    mul-double v18, v18, v22

    sub-double v4, v4, v18

    div-double v4, v4, v20

    aput-wide v4, v3, v8

    :goto_5
    aget-object v3, v10, v0

    aget-wide v3, v3, v8

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    sget-wide v5, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    cmpl-double v5, v5, v26

    if-lez v5, :cond_7

    move v5, v0

    :goto_6
    if-gt v5, v8, :cond_7

    aget-object v6, v10, v5

    aget-wide v11, v6, v8

    div-double/2addr v11, v3

    aput-wide v11, v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    move v3, v0

    :goto_7
    add-int/lit8 v0, v0, -0x1

    move/from16 v7, p1

    move-wide/from16 v22, v13

    move-object/from16 v11, v30

    move/from16 v12, v31

    const-wide/16 v13, 0x0

    goto/16 :goto_3

    :cond_8
    move-object/from16 v30, v11

    move/from16 v31, v12

    move-wide/from16 v18, v1

    move/from16 v36, v7

    goto/16 :goto_e

    :cond_9
    move/from16 p1, v7

    move-object/from16 v30, v11

    move/from16 v31, v12

    move-wide v0, v13

    cmpg-double v2, v5, v0

    if-gez v2, :cond_13

    add-int/lit8 v11, v8, -0x1

    aget-object v0, v10, v8

    aget-wide v0, v0, v11

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    aget-object v2, v10, v11

    aget-wide v2, v2, v8

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    aget-object v0, v10, v11

    aget-object v1, v10, v8

    aget-wide v2, v1, v11

    div-double v2, v5, v2

    aput-wide v2, v0, v11

    aget-wide v2, v1, v8

    sub-double v2, v2, v24

    neg-double v2, v2

    aget-wide v12, v1, v11

    div-double/2addr v2, v12

    aput-wide v2, v0, v8

    move/from16 v12, p1

    move-wide/from16 v32, v5

    move v13, v8

    goto :goto_8

    :cond_a
    const-wide/16 v1, 0x0

    aget-object v0, v10, v11

    aget-wide v3, v0, v8

    neg-double v3, v3

    aget-wide v12, v0, v11

    sub-double v12, v12, v24

    move-object/from16 v0, p0

    move-wide/from16 v32, v5

    move-wide v5, v12

    move/from16 v12, p1

    move v13, v8

    move-wide/from16 v7, v32

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->a(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    aget-object v1, v10, v11

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v1, v11

    aget-object v1, v10, v11

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    aput-wide v2, v1, v13

    :goto_8
    aget-object v0, v10, v13

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v11

    aput-wide v26, v0, v13

    add-int/lit8 v8, v13, -0x2

    move v14, v8

    move v0, v11

    move-wide/from16 v7, v18

    move-wide/from16 v5, v22

    :goto_9
    if-ltz v14, :cond_12

    move v15, v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    :goto_a
    if-gt v15, v13, :cond_b

    aget-object v18, v10, v14

    aget-wide v18, v18, v15

    aget-object v22, v10, v15

    aget-wide v34, v22, v11

    mul-double v34, v34, v18

    add-double v3, v3, v34

    aget-wide v22, v22, v13

    mul-double v18, v18, v22

    add-double v1, v1, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_b
    aget-object v15, v10, v14

    aget-wide v18, v15, v14

    sub-double v18, v18, v24

    iget-object v15, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aget-wide v34, v15, v14

    const-wide/16 v36, 0x0

    const-wide v38, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v34 .. v39}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v15

    if-gez v15, :cond_c

    move-wide v5, v3

    move/from16 v36, v12

    move v7, v13

    move-wide/from16 v20, v18

    goto/16 :goto_d

    :cond_c
    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    move-wide/from16 v22, v5

    aget-wide v5, v0, v14

    move-wide/from16 v34, v7

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v0

    if-eqz v0, :cond_d

    neg-double v3, v3

    neg-double v5, v1

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide/from16 v7, v22

    move-wide/from16 v5, v18

    move-wide/from16 v42, v7

    move-wide/from16 v40, v34

    move-wide/from16 v7, v32

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->a(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    aget-object v1, v10, v14

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v1, v11

    aget-object v1, v10, v14

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    aput-wide v2, v1, v13

    move/from16 v36, v12

    move/from16 v37, v13

    move-wide/from16 v18, v40

    move-wide/from16 v12, v42

    goto/16 :goto_b

    :cond_d
    move-wide/from16 v42, v22

    move-wide/from16 v40, v34

    aget-object v0, v10, v14

    add-int/lit8 v15, v14, 0x1

    aget-wide v22, v0, v15

    aget-object v0, v10, v15

    aget-wide v34, v0, v14

    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide v5, v0, v14

    sub-double v7, v5, v24

    sub-double v36, v5, v24

    mul-double v7, v7, v36

    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aget-wide v36, v0, v14

    mul-double v36, v36, v36

    add-double v7, v7, v36

    mul-double v36, v32, v32

    sub-double v7, v7, v36

    sub-double v5, v5, v24

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v36

    mul-double v5, v5, v32

    move/from16 v36, v12

    move/from16 v37, v13

    const-wide/16 v12, 0x0

    invoke-static {v7, v8, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v5, v6, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v7, v7, v16

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    add-double v28, v28, v38

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    add-double v28, v28, v38

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    add-double v28, v28, v38

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    add-double v28, v28, v38

    mul-double v7, v7, v28

    :cond_e
    move-wide/from16 v12, v42

    mul-double v38, v22, v12

    mul-double v42, v20, v3

    sub-double v38, v38, v42

    mul-double v42, v32, v1

    add-double v38, v38, v42

    move-wide/from16 v42, v12

    move-wide/from16 v12, v40

    mul-double v40, v22, v12

    mul-double v44, v20, v1

    sub-double v40, v40, v44

    mul-double v44, v32, v3

    sub-double v40, v40, v44

    move-object/from16 v0, p0

    move-wide/from16 v44, v12

    move-wide v12, v1

    move-wide/from16 v1, v38

    move-wide/from16 v38, v12

    move-wide v12, v3

    move-wide/from16 v3, v40

    move-wide/from16 v40, v5

    move-wide v5, v7

    move-wide/from16 v7, v40

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->a(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    aget-object v1, v10, v14

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v1, v11

    aget-object v1, v10, v14

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    aput-wide v2, v1, v37

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_f

    aget-object v0, v10, v15

    neg-double v1, v12

    aget-object v3, v10, v14

    aget-wide v4, v3, v11

    mul-double v4, v4, v18

    sub-double/2addr v1, v4

    aget-wide v4, v3, v37

    mul-double v5, v32, v4

    add-double/2addr v1, v5

    div-double v1, v1, v22

    aput-wide v1, v0, v11

    move-wide/from16 v1, v38

    neg-double v1, v1

    aget-wide v4, v3, v37

    mul-double v18, v18, v4

    sub-double v1, v1, v18

    aget-wide v3, v3, v11

    mul-double v5, v32, v3

    sub-double/2addr v1, v5

    div-double v1, v1, v22

    aput-wide v1, v0, v37

    move-wide/from16 v12, v42

    move-wide/from16 v18, v44

    goto :goto_b

    :cond_f
    move-wide/from16 v12, v42

    neg-double v0, v12

    aget-object v2, v10, v14

    aget-wide v3, v2, v11

    mul-double v3, v3, v34

    sub-double v3, v0, v3

    move-wide/from16 v7, v44

    neg-double v0, v7

    aget-wide v5, v2, v37

    mul-double v34, v34, v5

    sub-double v5, v0, v34

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide/from16 v5, v20

    move-wide/from16 v18, v7

    move-wide/from16 v7, v32

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->a(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    aget-object v1, v10, v15

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v1, v11

    aget-object v1, v10, v15

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    aput-wide v2, v1, v37

    :goto_b
    aget-object v0, v10, v14

    aget-wide v0, v0, v11

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    aget-object v2, v10, v14

    aget-wide v2, v2, v37

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    cmpl-double v2, v2, v26

    if-lez v2, :cond_10

    move v2, v14

    move/from16 v7, v37

    :goto_c
    if-gt v2, v7, :cond_11

    aget-object v3, v10, v2

    aget-wide v4, v3, v11

    div-double/2addr v4, v0

    aput-wide v4, v3, v11

    aget-wide v4, v3, v7

    div-double/2addr v4, v0

    aput-wide v4, v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_10
    move/from16 v7, v37

    :cond_11
    move-wide v5, v12

    move v0, v14

    move-wide/from16 v1, v18

    :goto_d
    add-int/lit8 v14, v14, -0x1

    move v13, v7

    move/from16 v12, v36

    const/4 v15, 0x0

    move-wide v7, v1

    goto/16 :goto_9

    :cond_12
    move-wide/from16 v18, v7

    move/from16 v36, v12

    move v7, v13

    move-wide v12, v5

    move-wide/from16 v22, v12

    goto :goto_f

    :cond_13
    move/from16 v36, p1

    :goto_e
    move v7, v8

    :goto_f
    add-int/lit8 v8, v7, -0x1

    move-object/from16 v11, v30

    move/from16 v12, v31

    move/from16 v7, v36

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_14
    move/from16 v36, v7

    move-object/from16 v30, v11

    move/from16 v31, v12

    :goto_10
    if-ltz v7, :cond_17

    move/from16 v12, v36

    const/4 v0, 0x0

    :goto_11
    if-gt v0, v12, :cond_16

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_12
    invoke-static {v7, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    if-gt v3, v4, :cond_15

    aget-object v4, v30, v0

    aget-wide v4, v4, v3

    aget-object v6, v10, v3

    aget-wide v13, v6, v7

    mul-double/2addr v4, v13

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_15
    aget-object v3, v30, v0

    aput-wide v1, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_16
    add-int/lit8 v7, v7, -0x1

    move/from16 v36, v12

    goto :goto_10

    :cond_17
    move/from16 v0, v31

    new-array v1, v0, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    iput-object v1, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_19

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_18

    aget-object v4, v30, v3

    aget-wide v4, v4, v2

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_18
    iget-object v3, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_19
    return-void

    :cond_1a
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final d(Lorg/apache/commons/math3/linear/RealMatrix;)Lcom/sunia/HTREnginev2/z5m;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/sunia/HTREnginev2/z5m;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/sunia/HTREnginev2/z5m;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/z5m;->f()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    array-length v3, v2

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    array-length v5, v4

    if-ge v3, v5, :cond_2

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v5, v2, v4

    aget-wide v6, v5, v3

    const-wide/16 v8, 0x0

    const-wide v10, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v2, v4

    aget-wide v6, v5, v4

    aget-object v8, v2, v3

    aget-wide v9, v8, v3

    sub-double/2addr v9, v6

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v9, v11

    mul-double v11, v9, v9

    aget-wide v13, v5, v3

    aget-wide v15, v8, v4

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    add-double/2addr v6, v9

    aput-wide v6, v5, v3

    iget-object v8, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aput-wide v11, v8, v3

    aput-wide v6, v5, v4

    neg-double v5, v11

    aput-wide v5, v8, v4

    move v3, v4

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-object v5, v2, v3

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final e(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/snn;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/snn;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->d:Lcom/sunia/HTREnginev2/snn;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/snn;->b()[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->b:[D

    iget-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->d:Lcom/sunia/HTREnginev2/snn;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/snn;->e()[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->c:[D

    return-void
.end method

.method public getD()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-wide v3, v1, v0

    const-wide/16 v5, 0x0

    const-wide v7, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aget-wide v3, v3, v0

    invoke-interface {v1, v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aget-wide v3, v3, v0

    invoke-interface {v1, v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getDeterminant()D
    .locals 6

    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    array-length v0, p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p0, v3

    mul-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getEigenvector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p0

    return-object p0
.end method

.method public getImagEigenvalue(I)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getImagEigenvalues()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getRealEigenvalue(I)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getRealEigenvalues()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->hasComplexEigenvalues()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition$b;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/apache/commons/math3/linear/EigenDecomposition$b;-><init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/EigenDecomposition$a;)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->e:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0

    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v0, v0

    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->j:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v0, v0

    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->j:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->j:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->g:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->j:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public hasComplexEigenvalues()Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->f:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
