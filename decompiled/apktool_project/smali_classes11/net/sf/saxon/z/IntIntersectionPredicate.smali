.class public Lnet/sf/saxon/z/IntIntersectionPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntPredicateProxy;


# instance fields
.field public final a:Lnet/sf/saxon/z/IntPredicateProxy;

.field public final b:Lnet/sf/saxon/z/IntPredicateProxy;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/IntIntersectionPredicate;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    iput-object p2, p0, Lnet/sf/saxon/z/IntIntersectionPredicate;->b:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method

.method public static makeIntersection(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntIntersectionPredicate;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/z/IntIntersectionPredicate;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)V

    return-object v0
.end method


# virtual methods
.method public getOperands()[Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sf/saxon/z/IntPredicateProxy;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/sf/saxon/z/IntIntersectionPredicate;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lnet/sf/saxon/z/IntIntersectionPredicate;->b:Lnet/sf/saxon/z/IntPredicateProxy;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public test(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/z/IntIntersectionPredicate;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v0, p1}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntIntersectionPredicate;->b:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {p0, p1}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/z/IntIntersectionPredicate;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/z/IntIntersectionPredicate;->b:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
