.class public Lorg/apache/poi/ss/formula/functions/Covar;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instanceP:Lorg/apache/poi/ss/formula/functions/Covar;

.field public static final instanceS:Lorg/apache/poi/ss/formula/functions/Covar;


# instance fields
.field private final sampleBased:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Covar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/Covar;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Covar;->instanceP:Lorg/apache/poi/ss/formula/functions/Covar;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Covar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/Covar;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Covar;->instanceS:Lorg/apache/poi/ss/formula/functions/Covar;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/Covar;->sampleBased:Z

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3, p4}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->getNumberArrays(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance p2, Lorg/apache/commons/math3/stat/correlation/Covariance;

    invoke-direct {p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>()V

    const/4 p3, 0x0

    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-virtual {p3}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object p3

    const/4 p4, 0x1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object p1

    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/functions/Covar;->sampleBased:Z

    .line 4
    invoke-virtual {p2, p3, p1, p0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->covariance([D[DZ)D

    move-result-wide p0

    .line 5
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 6
    :catch_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_1
    move-exception p0

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 8
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, p2, v1, p1}, Lorg/apache/poi/ss/formula/functions/Covar;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
