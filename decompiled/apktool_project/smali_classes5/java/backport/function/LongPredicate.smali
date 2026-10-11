.class public interface abstract Ljava/backport/function/LongPredicate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Ljava/backport/function/LongPredicate;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/backport/function/LongPredicate;->lambda$negate$1(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/backport/function/LongPredicate;Ljava/backport/function/LongPredicate;J)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/backport/function/LongPredicate;->lambda$or$2(Ljava/backport/function/LongPredicate;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/backport/function/LongPredicate;Ljava/backport/function/LongPredicate;J)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/backport/function/LongPredicate;->lambda$and$0(Ljava/backport/function/LongPredicate;J)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$and$0(Ljava/backport/function/LongPredicate;J)Z
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava/backport/function/LongPredicate;->test(J)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/backport/function/LongPredicate;->test(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$negate$1(J)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/backport/function/LongPredicate;->test(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$or$2(Ljava/backport/function/LongPredicate;J)Z
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava/backport/function/LongPredicate;->test(J)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2, p3}, Ljava/backport/function/LongPredicate;->test(J)Z

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
.method public and(Ljava/backport/function/LongPredicate;)Ljava/backport/function/LongPredicate;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/h5j;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/h5j;-><init>(Ljava/backport/function/LongPredicate;Ljava/backport/function/LongPredicate;)V

    return-object v0
.end method

.method public negate()Ljava/backport/function/LongPredicate;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/i5j;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/i5j;-><init>(Ljava/backport/function/LongPredicate;)V

    return-object v0
.end method

.method public or(Ljava/backport/function/LongPredicate;)Ljava/backport/function/LongPredicate;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/g5j;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/g5j;-><init>(Ljava/backport/function/LongPredicate;Ljava/backport/function/LongPredicate;)V

    return-object v0
.end method

.method public abstract test(J)Z
.end method
