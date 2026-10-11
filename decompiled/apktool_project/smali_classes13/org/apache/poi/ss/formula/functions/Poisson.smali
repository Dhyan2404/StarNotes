.class public Lorg/apache/poi/ss/formula/functions/Poisson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field private static final DEFAULT_RETURN_RESULT:D = 1.0

.field public static final instance:Lorg/apache/poi/ss/formula/functions/Poisson;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Poisson;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Poisson;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Poisson;->instance:Lorg/apache/poi/ss/formula/functions/Poisson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkArgument(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    const-wide/16 v0, 0x0

    cmpg-double p0, p0, v0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method public static evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    .line 2
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 4
    aget-object v0, p0, v0

    const/4 v1, 0x1

    .line 5
    aget-object v1, p0, v1

    const/4 v2, 0x2

    .line 6
    aget-object p0, p0, v2

    .line 7
    :try_start_0
    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-static {v1, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    .line 9
    invoke-static {v2, v3, p1, p2}, Lorg/apache/poi/ss/formula/functions/Poisson;->isDefaultResult(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0

    .line 11
    :cond_1
    invoke-static {v2, v3}, Lorg/apache/poi/ss/formula/functions/Poisson;->checkArgument(D)V

    .line 12
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/Poisson;->checkArgument(D)V

    .line 13
    check-cast p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p0

    .line 14
    new-instance v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(D)V

    if-eqz p0, :cond_2

    double-to-int p0, v2

    .line 15
    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->cumulativeProbability(I)D

    move-result-wide p0

    goto :goto_0

    :cond_2
    double-to-int p0, v2

    .line 16
    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->probability(I)D

    move-result-wide p0

    .line 17
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    .line 18
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    .line 19
    :catch_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 20
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method private static isDefaultResult(DD)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    cmpl-double p0, p2, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    invoke-static {p1, p0, p2}, Lorg/apache/poi/ss/formula/functions/Poisson;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
