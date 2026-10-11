.class public Lorg/apache/commons/math3/optim/MaxEval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    iput p1, p0, Lorg/apache/commons/math3/optim/MaxEval;->e:I

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public static unlimited()Lorg/apache/commons/math3/optim/MaxEval;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/optim/MaxEval;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getMaxEval()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optim/MaxEval;->e:I

    return p0
.end method
