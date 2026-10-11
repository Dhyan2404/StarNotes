.class public Lcom/sunia/HTREnginev2/oq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field public static final b:S = 0x4s


# instance fields
.field public final a:[[D


# direct methods
.method public constructor <init>([D)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    filled-new-array {v0, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/sunia/HTREnginev2/oq;->a:[[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/oq;->a:[[D

    aget-object v3, v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_0

    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v2

    aget-wide v5, p1, v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a([D[D[[D)D
    .locals 6

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge p0, v2, :cond_0

    aget-object v2, p3, p0

    invoke-static {v2, p2}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v2

    aget-wide v4, p1, p0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
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

    iget-object p1, p0, Lcom/sunia/HTREnginev2/oq;->a:[[D

    invoke-virtual {p0, v4, v2, p1}, Lcom/sunia/HTREnginev2/oq;->a([D[D[[D)D

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
