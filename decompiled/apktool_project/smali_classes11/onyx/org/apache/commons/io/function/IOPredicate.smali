.class public interface abstract Lonyx/org/apache/commons/io/function/IOPredicate;
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
.method private synthetic a(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p2}, Lonyx/org/apache/commons/io/function/IOPredicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lonyx/org/apache/commons/io/function/IOPredicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static alwaysFalse()Lonyx/org/apache/commons/io/function/IOPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/sunia/HTREnginev2/bae;->e:Lonyx/org/apache/commons/io/function/IOPredicate;

    return-object v0
.end method

.method public static alwaysTrue()Lonyx/org/apache/commons/io/function/IOPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/sunia/HTREnginev2/bae;->f:Lonyx/org/apache/commons/io/function/IOPredicate;

    return-object v0
.end method

.method public static synthetic b(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/function/IOPredicate;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic c(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p2}, Lonyx/org/apache/commons/io/function/IOPredicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Lonyx/org/apache/commons/io/function/IOPredicate;->test(Ljava/lang/Object;)Z

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

.method private synthetic d(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->test(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic e(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOPredicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/function/IOPredicate;Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOPredicate;->a(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOPredicate;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/function/IOPredicate;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEqual(Ljava/lang/Object;)Lonyx/org/apache/commons/io/function/IOPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/zdi;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/zdi;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/aei;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/aei;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static synthetic j(Lonyx/org/apache/commons/io/function/IOPredicate;Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOPredicate;->c(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public and(Lonyx/org/apache/commons/io/function/IOPredicate;)Lonyx/org/apache/commons/io/function/IOPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "-TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/wdi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/wdi;-><init>(Lonyx/org/apache/commons/io/function/IOPredicate;Lonyx/org/apache/commons/io/function/IOPredicate;)V

    return-object v0
.end method

.method public asPredicate()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/xdi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xdi;-><init>(Lonyx/org/apache/commons/io/function/IOPredicate;)V

    return-object v0
.end method

.method public negate()Lonyx/org/apache/commons/io/function/IOPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ydi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ydi;-><init>(Lonyx/org/apache/commons/io/function/IOPredicate;)V

    return-object v0
.end method

.method public or(Lonyx/org/apache/commons/io/function/IOPredicate;)Lonyx/org/apache/commons/io/function/IOPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "-TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/vdi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/vdi;-><init>(Lonyx/org/apache/commons/io/function/IOPredicate;Lonyx/org/apache/commons/io/function/IOPredicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
