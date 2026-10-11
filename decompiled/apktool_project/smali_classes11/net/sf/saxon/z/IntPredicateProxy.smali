.class public interface abstract Lnet/sf/saxon/z/IntPredicateProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# direct methods
.method private synthetic a(Lnet/sf/saxon/z/IntPredicateProxy;I)Z
    .locals 0

    invoke-interface {p0, p2}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

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

.method public static synthetic b(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/z/IntPredicateProxy;->a(Lnet/sf/saxon/z/IntPredicateProxy;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract test(I)Z
.end method

.method public union(Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/smi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/smi;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-static {v0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method
