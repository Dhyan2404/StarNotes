.class public interface abstract Ljava/backport/function/Predicate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Ljava/backport/function/Predicate;Ljava/backport/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/backport/function/Predicate;->lambda$or$2(Ljava/backport/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/backport/function/Predicate;Ljava/backport/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/backport/function/Predicate;->lambda$and$0(Ljava/backport/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/backport/function/Predicate;->lambda$isEqual$3(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/backport/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Ljava/backport/function/Predicate;->lambda$negate$1(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEqual(Ljava/lang/Object;)Ljava/backport/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/backport/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/y5l;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/y5l;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/a6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/a6l;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$and$0(Ljava/backport/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava/backport/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/backport/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isEqual$3(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$negate$1(Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/backport/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$or$2(Ljava/backport/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava/backport/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Ljava/backport/function/Predicate;->test(Ljava/lang/Object;)Z

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
.method public and(Ljava/backport/function/Predicate;)Ljava/backport/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/backport/function/Predicate<",
            "-TT;>;)",
            "Ljava/backport/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/w5l;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/w5l;-><init>(Ljava/backport/function/Predicate;Ljava/backport/function/Predicate;)V

    return-object v0
.end method

.method public negate()Ljava/backport/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/backport/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/u5l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/u5l;-><init>(Ljava/backport/function/Predicate;)V

    return-object v0
.end method

.method public or(Ljava/backport/function/Predicate;)Ljava/backport/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/backport/function/Predicate<",
            "-TT;>;)",
            "Ljava/backport/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/s5l;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/s5l;-><init>(Ljava/backport/function/Predicate;Ljava/backport/function/Predicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
