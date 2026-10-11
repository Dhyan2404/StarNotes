.class public Lnet/sf/saxon/tree/iter/AtomizingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Lnet/sf/saxon/om/AtomicSequence;

.field public g:I

.field public h:I

.field public i:Lnet/sf/saxon/expr/parser/RoleDiagnostic;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->g:I

    iput v0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->h:I

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/AtomizingIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/AtomicValue;
    .locals 4

    .line 2
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v2, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->g:I

    iget v3, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->h:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 4
    iput v1, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->g:I

    invoke-interface {v0, v2}, Lnet/sf/saxon/om/AtomicSequence;->itemAt(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    iput-object v1, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    .line 6
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    :try_start_0
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    return-object v0

    .line 10
    :cond_2
    iput-object v0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->g:I

    .line 12
    invoke-interface {v0}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->h:I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->i:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    if-nez v1, :cond_3

    .line 14
    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p0

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Failed while atomizing the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->i:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    .line 17
    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p0, v1}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p0

    .line 18
    :cond_4
    iput-object v1, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    return-object v1
.end method

.method public setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/AtomizingIterator;->i:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-void
.end method
