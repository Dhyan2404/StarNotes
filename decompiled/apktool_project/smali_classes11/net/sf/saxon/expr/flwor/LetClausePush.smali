.class public Lnet/sf/saxon/expr/flwor/LetClausePush;
.super Lnet/sf/saxon/expr/flwor/TuplePush;
.source "SourceFile"


# instance fields
.field public b:Lnet/sf/saxon/expr/flwor/TuplePush;

.field public c:Lnet/sf/saxon/expr/flwor/LetClause;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/LetClause;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;-><init>(Lnet/sf/saxon/event/Outputter;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/LetClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/LetClausePush;->c:Lnet/sf/saxon/expr/flwor/LetClause;

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

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/LetClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->close()V

    return-void
.end method

.method public processTuple(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/LetClausePush;->c:Lnet/sf/saxon/expr/flwor/LetClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LetClause;->getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/LetClausePush;->c:Lnet/sf/saxon/expr/flwor/LetClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LetClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/LetClausePush;->c:Lnet/sf/saxon/expr/flwor/LetClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/LetClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method
