.class public Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/type/AtomicType;

.field public final f:Lnet/sf/saxon/om/NamespaceResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/om/NamespaceResolver;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;->e:Lnet/sf/saxon/type/AtomicType;

    iput-object p2, p0, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;->f:Lnet/sf/saxon/om/NamespaceResolver;

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

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    if-nez p2, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;->f:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "XPTY0004"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "acFnRef"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p0}, Lnet/sf/saxon/type/AtomicType;->getTypeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    const-string v0, "name"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getArity()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v1}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;->e:Lnet/sf/saxon/type/AtomicType;

    const/16 v2, 0x6000

    invoke-static {p0, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    return-object v0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p0}, Lnet/sf/saxon/type/AtomicType;->getTypeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public isTrustedResultType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
