.class public Lnet/sf/saxon/value/QNameValue;
.super Lnet/sf/saxon/value/QualifiedNameValue;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/value/QualifiedNameValue;-><init>()V

    .line 3
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    if-nez p4, :cond_0

    .line 4
    sget-object p4, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    .line 5
    :cond_0
    iput-object p4, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lnet/sf/saxon/value/QualifiedNameValue;-><init>()V

    .line 7
    invoke-static {p3}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 8
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    if-eqz p5, :cond_3

    if-nez p2, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    if-nez p5, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "QName has null namespace but non-empty prefix"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FOCA0002"

    .line 11
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 12
    throw p0

    .line 13
    :cond_3
    :goto_0
    new-instance p5, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {p5, p1, p2, p3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    .line 14
    iput-object p4, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void

    .line 15
    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Malformed local name in QName: \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FORG0001"

    .line 16
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 17
    throw p0
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lnet/sf/saxon/value/QualifiedNameValue;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 19
    iput-object p1, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    .line 20
    iput-object p2, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "typeLabel"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "qName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/QNameValue;

    iget-object p0, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/value/QNameValue;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/QNameValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    check-cast p1, Lnet/sf/saxon/value/QNameValue;

    iget-object p1, p1, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    sget-object v0, Lnet/sf/saxon/value/QNameValue$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/value/StringValue;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->NCNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Component of QName must be URI, Local Name, or Prefix"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p1, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getLocalName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->NCNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    return-object p1
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result p0

    return p0
.end method
