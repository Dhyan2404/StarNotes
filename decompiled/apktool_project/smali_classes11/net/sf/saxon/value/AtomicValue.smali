.class public abstract Lnet/sf/saxon/value/AtomicValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Item;
.implements Lnet/sf/saxon/om/AtomicSequence;
.implements Lnet/sf/saxon/type/ConversionResult;
.implements Lnet/sf/saxon/om/IdentityComparable;


# instance fields
.field protected typeLabel:Lnet/sf/saxon/type/AtomicType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asAtomic()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    return-object p0
.end method

.method public asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 2

    :try_start_0
    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No implicit timezone available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method

.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/expr/StaticContext;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p3, :cond_3

    instance-of p3, p1, Lnet/sf/saxon/type/SimpleType;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lnet/sf/saxon/type/SimpleType;

    goto :goto_0

    :cond_0
    instance-of p3, p1, Lnet/sf/saxon/type/ComplexType;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p3}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Lnet/sf/saxon/type/ComplexType;->getSimpleContentType()Lnet/sf/saxon/type/SimpleType;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-interface {p3, p0, v0, p1}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0

    :cond_3
    instance-of p2, p1, Lnet/sf/saxon/type/ComplexType;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p2}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-interface {p2}, Lnet/sf/saxon/type/ComplexType;->isMixedContent()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Complex type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not allow text content "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p2

    :cond_5
    :goto_1
    return-void
.end method

.method public checkValidInJavascript()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public abstract copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
.end method

.method public effectiveBooleanValue()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effective boolean value is not defined for an atomic value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    const-string p0, "FORG0006"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "equals() not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public final getCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Data type does not support component extraction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->ATOMIC:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
.end method

.method public abstract getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
.end method

.method public final getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p0, v0}, Lnet/sf/saxon/type/SimpleType;->postprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public abstract getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation
.end method

.method public abstract getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hashCode() not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic head()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public final head()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 1
    return-object p0
.end method

.method public identityHashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->hashCode()I

    move-result p0

    return p0
.end method

.method public isIdentical(Lnet/sf/saxon/om/IdentityComparable;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/AtomicValue;->isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 1

    .line 1
    invoke-static {}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->getInstance()Lnet/sf/saxon/expr/sort/SimpleTypeComparison;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->equal(Lnet/sf/saxon/om/AtomicSequence;Lnet/sf/saxon/om/AtomicSequence;)Z

    move-result p0

    return p0
.end method

.method public isNaN()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUntypedAtomic()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/AtomicValue;->itemAt(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public final itemAt(I)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->iterate()Lnet/sf/saxon/tree/iter/SingleAtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->iterate()Lnet/sf/saxon/tree/iter/SingleAtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/tree/iter/SingleAtomicIterator;
    .locals 0

    .line 4
    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;->makeIterator(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;

    return-object p0
.end method

.method public bridge synthetic iterate()Lnet/sf/saxon/tree/iter/SingletonIterator;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->iterate()Lnet/sf/saxon/tree/iter/SingleAtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/tree/jiter/MonoIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/jiter/MonoIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public setTypeLabel(Lnet/sf/saxon/type/AtomicType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public show()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->show()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
