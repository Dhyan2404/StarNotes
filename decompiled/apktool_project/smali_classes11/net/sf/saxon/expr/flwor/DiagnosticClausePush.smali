.class public Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;
.super Lnet/sf/saxon/expr/flwor/TuplePush;
.source "SourceFile"


# instance fields
.field public b:Lnet/sf/saxon/expr/flwor/TuplePush;

.field public c:Lnet/sf/saxon/expr/flwor/DiagnosticClause;

.field public d:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/DiagnosticClause;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;-><init>(Lnet/sf/saxon/event/Outputter;)V

    const/4 p1, 0x1

    iput p1, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->d:I

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->c:Lnet/sf/saxon/expr/flwor/DiagnosticClause;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->close()V

    return-void
.end method

.method public processTuple(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->c:Lnet/sf/saxon/expr/flwor/DiagnosticClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->c:Lnet/sf/saxon/expr/flwor/DiagnosticClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getTraceFunctionDestination()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FLWOR-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Lnet/sf/saxon/functions/Trace;->traceItem(Lnet/sf/saxon/om/Item;Ljava/lang/String;Lnet/sf/saxon/lib/Logger;)V

    move v3, v6

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    iget p1, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;->d:I

    return-void
.end method
