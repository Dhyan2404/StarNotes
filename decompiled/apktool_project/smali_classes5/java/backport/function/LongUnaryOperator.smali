.class public interface abstract Ljava/backport/function/LongUnaryOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Ljava/backport/function/LongUnaryOperator;Ljava/backport/function/LongUnaryOperator;J)J
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/backport/function/LongUnaryOperator;->lambda$andThen$1(Ljava/backport/function/LongUnaryOperator;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(Ljava/backport/function/LongUnaryOperator;Ljava/backport/function/LongUnaryOperator;J)J
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/backport/function/LongUnaryOperator;->lambda$compose$0(Ljava/backport/function/LongUnaryOperator;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c(J)J
    .locals 0

    invoke-static {p0, p1}, Ljava/backport/function/LongUnaryOperator;->lambda$identity$2(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static identity()Ljava/backport/function/LongUnaryOperator;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/o5j;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/o5j;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$andThen$1(Ljava/backport/function/LongUnaryOperator;J)J
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava/backport/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Ljava/backport/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private synthetic lambda$compose$0(Ljava/backport/function/LongUnaryOperator;J)J
    .locals 0

    invoke-interface {p1, p2, p3}, Ljava/backport/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava/backport/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$identity$2(J)J
    .locals 0

    return-wide p0
.end method


# virtual methods
.method public andThen(Ljava/backport/function/LongUnaryOperator;)Ljava/backport/function/LongUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/n5j;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/n5j;-><init>(Ljava/backport/function/LongUnaryOperator;Ljava/backport/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsLong(J)J
.end method

.method public compose(Ljava/backport/function/LongUnaryOperator;)Ljava/backport/function/LongUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/m5j;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/m5j;-><init>(Ljava/backport/function/LongUnaryOperator;Ljava/backport/function/LongUnaryOperator;)V

    return-object v0
.end method
