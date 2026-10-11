.class public Lorg/apache/poi/ss/formula/functions/Correl;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Correl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Correl;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Correl;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Correl;->instance:Lorg/apache/poi/ss/formula/functions/Correl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :try_start_0
    invoke-static {p3, p4}, Lorg/apache/poi/ss/formula/functions/ArrayFunctionUtils;->getNumberArrays(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>()V

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlation([D[D)D

    move-result-wide p0

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method
