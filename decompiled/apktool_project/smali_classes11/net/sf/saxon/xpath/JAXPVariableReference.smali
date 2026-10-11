.class public Lnet/sf/saxon/xpath/JAXPVariableReference;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field public final n:Lnet/sf/saxon/om/StructuredQName;

.field public final o:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    iput-object p2, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->o:Ljavax/xml/xpath/XPathVariableResolver;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->o:Ljavax/xml/xpath/XPathVariableResolver;

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->toJaxpQName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/xml/xpath/XPathVariableResolver;->resolveVariable(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lnet/sf/saxon/expr/JPConverter;->allocate(Ljava/lang/Class;Ljava/lang/reflect/Type;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/expr/JPConverter;->convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public computeHashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 0

    const/high16 p0, 0x800000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p1, Lnet/sf/saxon/xpath/JAXPVariableReference;

    iget-object v0, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->o:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/xpath/JAXPVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;Ljavax/xml/xpath/XPathVariableResolver;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/xpath/JAXPVariableReference;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/xpath/JAXPVariableReference;

    iget-object v0, p1, Lnet/sf/saxon/xpath/JAXPVariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    iget-object v1, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lnet/sf/saxon/xpath/JAXPVariableReference;->o:Ljavax/xml/xpath/XPathVariableResolver;

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->o:Ljavax/xml/xpath/XPathVariableResolver;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "jaxpVar"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "name"

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPVariableReference;->n:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/xpath/JAXPVariableReference;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/xpath/JAXPVariableReference;->getExpressionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
