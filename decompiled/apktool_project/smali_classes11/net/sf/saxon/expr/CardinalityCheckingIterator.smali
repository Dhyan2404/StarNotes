.class public final Lnet/sf/saxon/expr/CardinalityCheckingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Lnet/sf/saxon/s9api/Location;

.field public g:Lnet/sf/saxon/om/Item;

.field public h:Lnet/sf/saxon/om/Item;

.field public i:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;ILnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->g:Lnet/sf/saxon/om/Item;

    iput-object v0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->h:Lnet/sf/saxon/om/Item;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->i:I

    iput-object p1, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p4, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->f:Lnet/sf/saxon/s9api/Location;

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p4

    iput-object p4, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->g:Lnet/sf/saxon/om/Item;

    if-nez p4, :cond_0

    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "An empty sequence is not allowed as the "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p4, 0x2000

    if-ne p2, p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The only value allowed for the "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is an empty sequence"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->h:Lnet/sf/saxon/om/Item;

    if-eqz p1, :cond_2

    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "A sequence of more than one item is not allowed as the "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lnet/sf/saxon/tree/iter/TwoItemIterator;

    iget-object p4, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->g:Lnet/sf/saxon/om/Item;

    iget-object v0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->h:Lnet/sf/saxon/om/Item;

    invoke-direct {p2, p4, v0}, Lnet/sf/saxon/tree/iter/TwoItemIterator;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)V

    const/4 p4, 0x2

    invoke-static {p2, p4}, Lnet/sf/saxon/expr/CardinalityChecker;->depictSequenceStart(Lnet/sf/saxon/om/SequenceIterator;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    iget-object p0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->f:Lnet/sf/saxon/s9api/Location;

    invoke-direct {v0, p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const-string p0, "FORG"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->i:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_4

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->g:Lnet/sf/saxon/om/Item;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->i:I

    return-object v0

    :cond_1
    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->h:Lnet/sf/saxon/om/Item;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput v1, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->i:I

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_5

    iput v1, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->i:I

    goto :goto_2

    :cond_5
    iget v1, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;->i:I

    :goto_2
    return-object v0
.end method
