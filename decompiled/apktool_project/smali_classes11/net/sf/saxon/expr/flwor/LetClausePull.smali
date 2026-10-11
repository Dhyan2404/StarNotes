.class public Lnet/sf/saxon/expr/flwor/LetClausePull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/expr/flwor/TuplePull;

.field public b:Lnet/sf/saxon/expr/flwor/LetClause;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/LetClause;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/LetClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/LetClausePull;->b:Lnet/sf/saxon/expr/flwor/LetClause;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/LetClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;->close()V

    return-void
.end method

.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/LetClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/LetClausePull;->b:Lnet/sf/saxon/expr/flwor/LetClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LetClause;->getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/LetClausePull;->b:Lnet/sf/saxon/expr/flwor/LetClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LetClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/LetClausePull;->b:Lnet/sf/saxon/expr/flwor/LetClause;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p0

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    const/4 p0, 0x1

    return p0
.end method
