.class public Lnet/sf/saxon/z/IntPredicateLambda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntPredicateProxy;


# instance fields
.field public a:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(Ljava/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/IntPredicateLambda;->a:Ljava/util/function/IntPredicate;

    return-void
.end method

.method public static of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntPredicateLambda;

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntPredicateLambda;-><init>(Ljava/util/function/IntPredicate;)V

    return-object v0
.end method


# virtual methods
.method public test(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntPredicateLambda;->a:Ljava/util/function/IntPredicate;

    invoke-interface {p0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p0

    return p0
.end method
