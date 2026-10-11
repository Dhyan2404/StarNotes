.class public interface abstract Ljava/backport/function/IntUnaryOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Ljava/backport/function/IntUnaryOperator;Ljava/backport/function/IntUnaryOperator;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/backport/function/IntUnaryOperator;->lambda$compose$0(Ljava/backport/function/IntUnaryOperator;I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(I)I
    .locals 0

    invoke-static {p0}, Ljava/backport/function/IntUnaryOperator;->lambda$identity$2(I)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/backport/function/IntUnaryOperator;Ljava/backport/function/IntUnaryOperator;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/backport/function/IntUnaryOperator;->lambda$andThen$1(Ljava/backport/function/IntUnaryOperator;I)I

    move-result p0

    return p0
.end method

.method public static identity()Ljava/backport/function/IntUnaryOperator;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xmi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xmi;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$andThen$1(Ljava/backport/function/IntUnaryOperator;I)I
    .locals 0

    invoke-interface {p0, p2}, Ljava/backport/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/backport/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$compose$0(Ljava/backport/function/IntUnaryOperator;I)I
    .locals 0

    invoke-interface {p1, p2}, Ljava/backport/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/backport/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$identity$2(I)I
    .locals 0

    return p0
.end method


# virtual methods
.method public andThen(Ljava/backport/function/IntUnaryOperator;)Ljava/backport/function/IntUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/ymi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/ymi;-><init>(Ljava/backport/function/IntUnaryOperator;Ljava/backport/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsInt(I)I
.end method

.method public compose(Ljava/backport/function/IntUnaryOperator;)Ljava/backport/function/IntUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/wmi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/wmi;-><init>(Ljava/backport/function/IntUnaryOperator;Ljava/backport/function/IntUnaryOperator;)V

    return-object v0
.end method
