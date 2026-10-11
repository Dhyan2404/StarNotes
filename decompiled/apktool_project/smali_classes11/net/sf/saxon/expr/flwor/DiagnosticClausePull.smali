.class public Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/expr/flwor/TuplePull;

.field public b:Lnet/sf/saxon/expr/flwor/DiagnosticClause;

.field public c:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/DiagnosticClause;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->c:I

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->b:Lnet/sf/saxon/expr/flwor/DiagnosticClause;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;->close()V

    return-void
.end method

.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->b:Lnet/sf/saxon/expr/flwor/DiagnosticClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->b:Lnet/sf/saxon/expr/flwor/DiagnosticClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getTraceFunctionDestination()Lnet/sf/saxon/lib/Logger;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FLWOR<- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, p1}, Lnet/sf/saxon/functions/Trace;->traceItem(Lnet/sf/saxon/om/Item;Ljava/lang/String;Lnet/sf/saxon/lib/Logger;)V

    move v2, v5

    goto :goto_0

    :cond_1
    iget p1, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;->c:I

    return v1
.end method
