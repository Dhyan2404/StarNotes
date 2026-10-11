.class public abstract Lnet/sf/saxon/expr/CastingExpression;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# instance fields
.field protected converter:Lnet/sf/saxon/type/Converter;

.field public o:Lnet/sf/saxon/type/AtomicType;

.field public final p:Lnet/sf/saxon/type/AtomicType;

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/CastingExpression;->r:Z

    iput-boolean p3, p0, Lnet/sf/saxon/expr/CastingExpression;->q:Z

    iput-object p2, p0, Lnet/sf/saxon/expr/CastingExpression;->o:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p2}, Lnet/sf/saxon/type/PlainType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/CastingExpression;->p:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method


# virtual methods
.method public allowsEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/CastingExpression;->q:Z

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeSpecialProperties()I

    move-result p0

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x6000

    goto :goto_0

    :cond_0
    const/16 p2, 0x4000

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "e"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "as"

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getConverter()Lnet/sf/saxon/type/Converter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    return-object p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x800

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getTargetPrimitiveType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/CastingExpression;->p:Lnet/sf/saxon/type/AtomicType;

    return-object p0
.end method

.method public getTargetType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/CastingExpression;->o:Lnet/sf/saxon/type/AtomicType;

    return-object p0
.end method

.method public isOperandIsStringLiteral()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/CastingExpression;->r:Z

    return p0
.end method

.method public setAllowEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/CastingExpression;->q:Z

    return-void
.end method

.method public setOperandIsStringLiteral(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/CastingExpression;->r:Z

    return-void
.end method

.method public setTargetType(Lnet/sf/saxon/type/AtomicType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/CastingExpression;->o:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/CastingExpression;->o:Lnet/sf/saxon/type/AtomicType;

    instance-of v0, v0, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/CastingExpression;->o:Lnet/sf/saxon/type/AtomicType;

    check-cast v1, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->whyDisallowedType(Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/type/BuiltInAtomicType;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    const-string v2, "XPST0080"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method
