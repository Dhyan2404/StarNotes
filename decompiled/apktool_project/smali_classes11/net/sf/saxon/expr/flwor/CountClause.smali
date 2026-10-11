.class public Lnet/sf/saxon/expr/flwor/CountClause;
.super Lnet/sf/saxon/expr/flwor/Clause;
.source "SourceFile"


# instance fields
.field public d:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/Clause;-><init>()V

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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/CountClause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/CountClause;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/CountClause;
    .locals 0

    .line 2
    new-instance p1, Lnet/sf/saxon/expr/flwor/CountClause;

    invoke-direct {p1}, Lnet/sf/saxon/expr/flwor/CountClause;-><init>()V

    .line 3
    iget-object p2, p0, Lnet/sf/saxon/expr/flwor/CountClause;->d:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->copy()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p2

    iput-object p2, p1, Lnet/sf/saxon/expr/flwor/CountClause;->d:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/flwor/Clause;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object p1
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "count"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/CountClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    const-string v0, "var"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->COUNT:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
    .locals 0

    new-instance p2, Lnet/sf/saxon/expr/flwor/CountClausePull;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/expr/flwor/CountClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/CountClause;)V

    return-object p2
.end method

.method public getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
    .locals 0

    new-instance p3, Lnet/sf/saxon/expr/flwor/CountClausePush;

    invoke-direct {p3, p2, p1, p0}, Lnet/sf/saxon/expr/flwor/CountClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/CountClause;)V

    return-object p3
.end method

.method public getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/CountClause;->d:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-object p0
.end method

.method public getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    const/4 v1, 0x0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/CountClause;->d:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    aput-object p0, v0, v1

    return-object v0
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

.method public setRangeVariable(Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/CountClause;->d:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "count $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/CountClause;->d:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
