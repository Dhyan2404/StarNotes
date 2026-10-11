.class public interface abstract Ljava/backport/function/DoubleUnaryOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/backport/function/DoubleUnaryOperator;->lambda$identity$2(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(Ljava/backport/function/DoubleUnaryOperator;Ljava/backport/function/DoubleUnaryOperator;D)D
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/backport/function/DoubleUnaryOperator;->lambda$andThen$1(Ljava/backport/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c(Ljava/backport/function/DoubleUnaryOperator;Ljava/backport/function/DoubleUnaryOperator;D)D
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/backport/function/DoubleUnaryOperator;->lambda$compose$0(Ljava/backport/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static identity()Ljava/backport/function/DoubleUnaryOperator;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rff;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rff;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$andThen$1(Ljava/backport/function/DoubleUnaryOperator;D)D
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava/backport/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Ljava/backport/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private synthetic lambda$compose$0(Ljava/backport/function/DoubleUnaryOperator;D)D
    .locals 0

    invoke-interface {p1, p2, p3}, Ljava/backport/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava/backport/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$identity$2(D)D
    .locals 0

    return-wide p0
.end method


# virtual methods
.method public andThen(Ljava/backport/function/DoubleUnaryOperator;)Ljava/backport/function/DoubleUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/pff;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/pff;-><init>(Ljava/backport/function/DoubleUnaryOperator;Ljava/backport/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsDouble(D)D
.end method

.method public compose(Ljava/backport/function/DoubleUnaryOperator;)Ljava/backport/function/DoubleUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/qff;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/qff;-><init>(Ljava/backport/function/DoubleUnaryOperator;Ljava/backport/function/DoubleUnaryOperator;)V

    return-object v0
.end method
