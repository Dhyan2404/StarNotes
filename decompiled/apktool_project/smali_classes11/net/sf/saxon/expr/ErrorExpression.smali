.class public Lnet/sf/saxon/expr/ErrorExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public final n:Lnet/sf/saxon/s9api/XmlProcessingError;

.field public o:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "XXXX9999"

    const/4 v1, 0x0

    const-string v2, "Unspecified error"

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    check-cast p0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setTypeError(Z)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p1, Lnet/sf/saxon/expr/ErrorExpression;

    iget-object v0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/ErrorExpression;->o:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/ErrorExpression;->setOriginalExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    iget-object v1, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {v1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {v1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {v1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getErrorCode()Lnet/sf/saxon/s9api/QName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {v1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getErrorCode()Lnet/sf/saxon/s9api/QName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->isTypeError()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v0

    :cond_1
    invoke-static {v0}, Lnet/sf/saxon/trans/XPathException;->fromXmlProcessingError(Lnet/sf/saxon/s9api/XmlProcessingError;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "error"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {v0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {v0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getErrorCode()Lnet/sf/saxon/s9api/QName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->isTypeError()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    const-string v0, "isTypeErr"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getErrorCodeLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getErrorCode()Lnet/sf/saxon/s9api/QName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getException()Lnet/sf/saxon/s9api/XmlProcessingError;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "errorExpr"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isTypeError()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ErrorExpression;->n:Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->isTypeError()Z

    move-result p0

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/ErrorExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    const/4 p0, 0x0

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

.method public setOriginalExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/ErrorExpression;->o:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/ErrorExpression;->o:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/ErrorExpression;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/ErrorExpression;->o:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/ErrorExpression;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

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
