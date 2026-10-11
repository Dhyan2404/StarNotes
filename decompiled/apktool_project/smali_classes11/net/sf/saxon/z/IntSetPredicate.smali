.class public Lnet/sf/saxon/z/IntSetPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntPredicateProxy;


# static fields
.field public static final ALWAYS_FALSE:Lnet/sf/saxon/z/IntPredicateProxy;

.field public static final ALWAYS_TRUE:Lnet/sf/saxon/z/IntPredicateProxy;


# instance fields
.field public final a:Lnet/sf/saxon/z/IntSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/umi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/umi;-><init>()V

    invoke-static {v0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/z/IntSetPredicate;->ALWAYS_TRUE:Lnet/sf/saxon/z/IntPredicateProxy;

    new-instance v0, Lcom/sunia/HTREnginev2/vmi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/vmi;-><init>()V

    invoke-static {v0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/z/IntSetPredicate;->ALWAYS_FALSE:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/z/IntSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lnet/sf/saxon/z/IntSetPredicate;->a:Lnet/sf/saxon/z/IntSet;

    return-void
.end method

.method public static synthetic c(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/z/IntSetPredicate;->e(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/z/IntSetPredicate;->f(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic f(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getIntSet()Lnet/sf/saxon/z/IntSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntSetPredicate;->a:Lnet/sf/saxon/z/IntSet;

    return-object p0
.end method

.method public test(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntSetPredicate;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/z/IntSetPredicate;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
