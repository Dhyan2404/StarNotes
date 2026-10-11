.class public Lnet/sf/saxon/expr/sort/DescendingComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# instance fields
.field public final a:Lnet/sf/saxon/expr/sort/AtomicComparer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/DescendingComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/DescendingComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/sort/AtomicComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/DescendingComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/sort/AtomicComparer;->comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z

    move-result p0

    return p0
.end method

.method public getBaseComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/DescendingComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/DescendingComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {p0}, Lnet/sf/saxon/expr/sort/AtomicComparer;->getCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    return-object p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/DescendingComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {v0, p1}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/DescendingComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    if-eq p1, v0, :cond_0

    new-instance p0, Lnet/sf/saxon/expr/sort/DescendingComparer;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/DescendingComparer;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    :cond_0
    return-object p0
.end method

.method public save()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DESC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/DescendingComparer;->a:Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {p0}, Lnet/sf/saxon/expr/sort/AtomicComparer;->save()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
