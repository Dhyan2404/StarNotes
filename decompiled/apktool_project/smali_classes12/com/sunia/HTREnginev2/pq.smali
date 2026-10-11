.class public Lcom/sunia/HTREnginev2/pq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field public static final g:S = 0x4s


# instance fields
.field public final a:[[D

.field public final b:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field public final c:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field public final d:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field public final e:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field public final f:Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method public constructor <init>([D)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/pq;-><init>([DZ)V

    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    .line 3
    filled-new-array {v1, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, v0, Lcom/sunia/HTREnginev2/pq;->a:[[D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    .line 4
    iget-object v5, v0, Lcom/sunia/HTREnginev2/pq;->a:[[D

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x4

    add-int/2addr v6, v4

    aget-wide v6, p1, v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 5
    filled-new-array {v1, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 6
    filled-new-array {v1, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 7
    filled-new-array {v1, v1}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 8
    filled-new-array {v1, v1}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 9
    filled-new-array {v1, v1}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v1, :cond_2

    .line 10
    iget-object v10, v0, Lcom/sunia/HTREnginev2/pq;->a:[[D

    aget-object v10, v10, v8

    aget-wide v10, v10, v9

    .line 11
    aget-object v12, v3, v8

    int-to-double v13, v8

    mul-double/2addr v13, v10

    aput-wide v13, v12, v9

    .line 12
    aget-object v13, v4, v8

    int-to-double v14, v9

    mul-double/2addr v10, v14

    aput-wide v10, v13, v9

    .line 13
    aget-object v10, v5, v8

    add-int/lit8 v11, v8, -0x1

    int-to-double v1, v11

    aget-wide v16, v12, v9

    mul-double v1, v1, v16

    aput-wide v1, v10, v9

    .line 14
    aget-object v1, v6, v8

    add-int/lit8 v2, v9, -0x1

    int-to-double v10, v2

    aget-wide v16, v13, v9

    mul-double v10, v10, v16

    aput-wide v10, v1, v9

    .line 15
    aget-object v1, v7, v8

    aget-wide v10, v12, v9

    mul-double/2addr v14, v10

    aput-wide v14, v1, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x4

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x4

    goto :goto_2

    .line 16
    :cond_3
    new-instance v1, Lcom/sunia/HTREnginev2/pq$a;

    invoke-direct {v1, v0, v3}, Lcom/sunia/HTREnginev2/pq$a;-><init>(Lcom/sunia/HTREnginev2/pq;[[D)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->b:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 17
    new-instance v1, Lcom/sunia/HTREnginev2/pq$b;

    invoke-direct {v1, v0, v4}, Lcom/sunia/HTREnginev2/pq$b;-><init>(Lcom/sunia/HTREnginev2/pq;[[D)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->c:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 18
    new-instance v1, Lcom/sunia/HTREnginev2/pq$c;

    invoke-direct {v1, v0, v5}, Lcom/sunia/HTREnginev2/pq$c;-><init>(Lcom/sunia/HTREnginev2/pq;[[D)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->d:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 19
    new-instance v1, Lcom/sunia/HTREnginev2/pq$d;

    invoke-direct {v1, v0, v6}, Lcom/sunia/HTREnginev2/pq$d;-><init>(Lcom/sunia/HTREnginev2/pq;[[D)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 20
    new-instance v1, Lcom/sunia/HTREnginev2/pq$e;

    invoke-direct {v1, v0, v7}, Lcom/sunia/HTREnginev2/pq$e;-><init>(Lcom/sunia/HTREnginev2/pq;[[D)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->f:Lorg/apache/commons/math3/analysis/BivariateFunction;

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->b:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 22
    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->c:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 23
    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->d:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 24
    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 25
    iput-object v1, v0, Lcom/sunia/HTREnginev2/pq;->f:Lorg/apache/commons/math3/analysis/BivariateFunction;

    :goto_4
    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/pq;[D[D[[D)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/pq;->b([D[D[[D)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final b([D[D[[D)D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    move v2, p0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    move v4, p0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, p3, v2

    aget-wide v5, v5, v4

    aget-wide v7, p1, v2

    mul-double/2addr v5, v7

    aget-wide v7, p2, v4

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public c()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pq;->b:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object p0
.end method

.method public d()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pq;->d:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object p0
.end method

.method public e()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pq;->f:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object p0
.end method

.method public f()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pq;->c:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object p0
.end method

.method public g()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pq;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object p0
.end method

.method public value(DD)D
    .locals 11

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-ltz v2, :cond_1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v7

    if-gtz v2, :cond_1

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_0

    cmpl-double v0, p3, v7

    if-gtz v0, :cond_0

    mul-double v0, p1, p1

    mul-double v9, v0, p1

    const/4 v2, 0x4

    new-array v4, v2, [D

    aput-wide v7, v4, v5

    aput-wide p1, v4, v3

    const/4 p1, 0x2

    aput-wide v0, v4, p1

    const/4 p2, 0x3

    aput-wide v9, v4, p2

    mul-double v0, p3, p3

    mul-double v9, v0, p3

    new-array v2, v2, [D

    aput-wide v7, v2, v5

    aput-wide p3, v2, v3

    aput-wide v0, v2, p1

    aput-wide v9, v2, p2

    iget-object p1, p0, Lcom/sunia/HTREnginev2/pq;->a:[[D

    invoke-virtual {p0, v4, v2, p1}, Lcom/sunia/HTREnginev2/pq;->b([D[D[[D)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, v6, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, v6, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method
