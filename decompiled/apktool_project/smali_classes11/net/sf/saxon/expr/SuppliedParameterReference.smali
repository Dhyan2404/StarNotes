.class public Lnet/sf/saxon/expr/SuppliedParameterReference;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Lnet/sf/saxon/value/SequenceType;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    iput p1, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->n:I

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->o:Lnet/sf/saxon/value/SequenceType;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0

    :cond_0
    const p0, 0xe000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p1, Lnet/sf/saxon/expr/SuppliedParameterReference;

    iget v0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->n:I

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/SuppliedParameterReference;-><init>(I)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SuppliedParameterReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StackFrame;->popDynamicValue()Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->evaluateLocalVariable(I)Lnet/sf/saxon/om/Sequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lnet/sf/saxon/lib/StandardDiagnostics;

    invoke-direct {v1}, Lnet/sf/saxon/lib/StandardDiagnostics;-><init>()V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, p1, v2, v3}, Lnet/sf/saxon/lib/StandardDiagnostics;->logStackTrace(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/Logger;I)V

    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". No value has been set for parameter "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->n:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "supplied"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "slot"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "supplied"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/16 p0, 0x80

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->o:Lnet/sf/saxon/value/SequenceType;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->n:I

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SuppliedParameterReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method

.method public setSuppliedType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->o:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppliedParam("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method
