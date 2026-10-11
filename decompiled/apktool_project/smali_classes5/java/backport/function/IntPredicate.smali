.class public interface abstract Ljava/backport/function/IntPredicate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Ljava/backport/function/IntPredicate;I)Z
    .locals 0

    invoke-direct {p0, p1}, Ljava/backport/function/IntPredicate;->lambda$negate$1(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/backport/function/IntPredicate;Ljava/backport/function/IntPredicate;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/backport/function/IntPredicate;->lambda$and$0(Ljava/backport/function/IntPredicate;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/backport/function/IntPredicate;Ljava/backport/function/IntPredicate;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/backport/function/IntPredicate;->lambda$or$2(Ljava/backport/function/IntPredicate;I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$and$0(Ljava/backport/function/IntPredicate;I)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava/backport/function/IntPredicate;->test(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/backport/function/IntPredicate;->test(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$negate$1(I)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/backport/function/IntPredicate;->test(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$or$2(Ljava/backport/function/IntPredicate;I)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava/backport/function/IntPredicate;->test(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Ljava/backport/function/IntPredicate;->test(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public and(Ljava/backport/function/IntPredicate;)Ljava/backport/function/IntPredicate;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/pmi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/pmi;-><init>(Ljava/backport/function/IntPredicate;Ljava/backport/function/IntPredicate;)V

    return-object v0
.end method

.method public negate()Ljava/backport/function/IntPredicate;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qmi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qmi;-><init>(Ljava/backport/function/IntPredicate;)V

    return-object v0
.end method

.method public or(Ljava/backport/function/IntPredicate;)Ljava/backport/function/IntPredicate;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/rmi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/rmi;-><init>(Ljava/backport/function/IntPredicate;Ljava/backport/function/IntPredicate;)V

    return-object v0
.end method

.method public abstract test(I)Z
.end method
