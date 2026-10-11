.class public Lnet/sf/saxon/expr/flwor/TraceClause;
.super Lnet/sf/saxon/expr/flwor/Clause;
.source "SourceFile"


# instance fields
.field public final d:Lnet/sf/saxon/expr/flwor/Clause;

.field public e:Lnet/sf/saxon/om/NamespaceResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/Clause;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/Clause;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/TraceClause;->d:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/TraceClause;->e:Lnet/sf/saxon/om/NamespaceResolver;

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/TraceClause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/TraceClause;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/TraceClause;
    .locals 0

    .line 2
    new-instance p2, Lnet/sf/saxon/expr/flwor/TraceClause;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/TraceClause;->d:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/expr/flwor/TraceClause;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/Clause;)V

    return-object p2
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "trace"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->TRACE:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/TraceClause;->e:Lnet/sf/saxon/om/NamespaceResolver;

    return-object p0
.end method

.method public getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
    .locals 1

    new-instance p2, Lnet/sf/saxon/expr/flwor/TraceClausePull;

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/TraceClause;->d:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-direct {p2, p1, p0, v0}, Lnet/sf/saxon/expr/flwor/TraceClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/TraceClause;Lnet/sf/saxon/expr/flwor/Clause;)V

    return-object p2
.end method

.method public getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
    .locals 1

    new-instance p3, Lnet/sf/saxon/expr/flwor/TraceClausePush;

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/TraceClause;->d:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-direct {p3, p2, p1, p0, v0}, Lnet/sf/saxon/expr/flwor/TraceClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/TraceClause;Lnet/sf/saxon/expr/flwor/Clause;)V

    return-object p3
.end method

.method public processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/TraceClause;->e:Lnet/sf/saxon/om/NamespaceResolver;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "trace"

    return-object p0
.end method
