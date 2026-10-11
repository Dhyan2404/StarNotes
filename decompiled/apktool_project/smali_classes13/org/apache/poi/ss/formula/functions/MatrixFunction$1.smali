.class final Lorg/apache/poi/ss/formula/functions/MatrixFunction$1;
.super Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$OneArrayArg;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;-><init>(ZZ)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$1;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    return-void
.end method


# virtual methods
.method public collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/MatrixFunction$1;->instance:Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p0

    instance-of p1, p1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz p1, :cond_1

    array-length p1, p0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public evaluate([[D)[[D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    if-ne p0, v0, :cond_0

    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    invoke-static {p0}, Lorg/apache/commons/math3/linear/MatrixUtils;->inverse(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method
