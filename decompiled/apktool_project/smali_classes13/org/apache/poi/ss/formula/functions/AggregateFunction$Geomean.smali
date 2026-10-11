.class Lorg/apache/poi/ss/formula/functions/AggregateFunction$Geomean;
.super Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Geomean"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;->COERCE:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->setMissingArgPolicy(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)V

    return-void
.end method


# virtual methods
.method public evaluate([D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method
