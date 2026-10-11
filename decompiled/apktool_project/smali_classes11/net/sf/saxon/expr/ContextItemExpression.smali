.class public Lnet/sf/saxon/expr/ContextItemExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public n:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

.field public o:Ljava/lang/String;

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    sget-object v0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->DEFAULT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    iput-object v0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->n:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    const-string v0, "XPDY0002"

    iput-object v0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->p:Z

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 0

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    :cond_0
    return-object p2
.end method

.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public computeHashCode()I
    .locals 0

    const p0, 0x6936a17a

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeSpecialProperties()I

    move-result p0

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance p1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    iget-object v0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->n:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    iput-object v0, p1, Lnet/sf/saxon/expr/ContextItemExpression;->n:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    iget-object v0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->o:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/expr/ContextItemExpression;->setErrorCodeForUndefinedContext(Ljava/lang/String;Z)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public final d(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->p:Z

    const-string v1, "The context item is absent"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/ContextItemExpression;->getErrorCodeForUndefinedContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/ContextItemExpression;->getErrorCodeForUndefinedContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/expr/Expression;->dynamicError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/expr/ContextItemExpression;

    return p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/ContextItemExpression;->d(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    return-object v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "dot"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/ContextItemExpression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->n:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->isPossiblyAbsent()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "flags"

    const-string v0, "a"

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getErrorCodeForUndefinedContext()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "dot"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->n:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getNetCost()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    return-object p1
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ContextItemExpr"

    return-object p0
.end method

.method public isContextPossiblyUndefined()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->n:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->isPossiblyAbsent()Z

    move-result p0

    return p0
.end method

.method public isSubtreeExpression()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/ContextItemExpression;->d(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    invoke-static {v0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

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

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "The context item is undefined at this point"

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/ContextItemExpression;->getErrorCodeForUndefinedContext()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    iget-boolean p2, p0, Lnet/sf/saxon/expr/ContextItemExpression;->p:Z

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public setErrorCodeForUndefinedContext(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/ContextItemExpression;->o:Ljava/lang/String;

    iput-boolean p2, p0, Lnet/sf/saxon/expr/ContextItemExpression;->p:Z

    return-void
.end method

.method public setStaticInfo(Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/ContextItemExpression;->n:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    return-void
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/pattern/AnchorPattern;->getInstance()Lnet/sf/saxon/pattern/AnchorPattern;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    const-string p0, "."

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "."

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string p2, "Evaluation will always fail: there is no context item"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    new-instance p1, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/ContextItemExpression;->getErrorCodeForUndefinedContext()Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lnet/sf/saxon/expr/ContextItemExpression;->p:Z

    const-string v1, "There is no context item"

    invoke-direct {p1, v1, p2, v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/ErrorExpression;->setOriginalExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_0
    iput-object p2, p0, Lnet/sf/saxon/expr/ContextItemExpression;->n:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    return-object p0
.end method
