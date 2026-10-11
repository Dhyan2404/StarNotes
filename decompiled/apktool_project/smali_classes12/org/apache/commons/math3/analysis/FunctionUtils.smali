.class public Lorg/apache/commons/math3/analysis/FunctionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs add([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$p;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$p;-><init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method

.method public static varargs add([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$n;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$n;-><init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs add([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$o;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$o;-><init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static collector(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Identity;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/Identity;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->collector(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;

    move-result-object p0

    return-object p0
.end method

.method public static collector(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$b;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/apache/commons/math3/analysis/FunctionUtils$b;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;DLorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static combine(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$a;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils$a;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs compose([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$m;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$m;-><init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method

.method public static varargs compose([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$k;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$k;-><init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs compose([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$l;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$l;-><init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static fix1stArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$c;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils$c;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;D)V

    return-object v0
.end method

.method public static fix2ndArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$d;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils$d;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;D)V

    return-object v0
.end method

.method public static varargs multiply([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$s;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$s;-><init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method

.method public static varargs multiply([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$q;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$q;-><init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs multiply([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$r;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$r;-><init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-lez p5, :cond_2

    cmpl-double v0, p1, p3

    const/4 v1, 0x0

    if-gez v0, :cond_1

    new-array v0, p5, [D

    sub-double/2addr p3, p1

    int-to-double v2, p5

    div-double/2addr p3, v2

    :goto_0
    if-ge v1, p5, :cond_0

    int-to-double v2, v1

    mul-double/2addr v2, p3

    add-double/2addr v2, p1

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public static toDifferentiableMultivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$g;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$g;-><init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static toDifferentiableMultivariateVectorFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$i;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$i;-><init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)V

    return-object v0
.end method

.method public static toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$e;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$e;-><init>(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static toMultivariateDifferentiableFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$h;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$h;-><init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)V

    return-object v0
.end method

.method public static toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$j;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$j;-><init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)V

    return-object v0
.end method

.method public static toUnivariateDifferential(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$f;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$f;-><init>(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method
