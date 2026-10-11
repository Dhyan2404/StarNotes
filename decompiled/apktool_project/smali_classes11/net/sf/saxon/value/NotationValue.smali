.class public final Lnet/sf/saxon/value/NotationValue;
.super Lnet/sf/saxon/value/QualifiedNameValue;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lnet/sf/saxon/value/QualifiedNameValue;-><init>()V

    .line 13
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    .line 14
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lnet/sf/saxon/value/QualifiedNameValue;-><init>()V

    .line 16
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    .line 17
    iput-object p4, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/QualifiedNameValue;-><init>()V

    if-eqz p4, :cond_1

    .line 2
    invoke-static {p3}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Malformed local name in NOTATION: \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FORG0001"

    .line 4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 5
    throw p0

    :cond_1
    :goto_0
    const-string v0, ""

    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    if-nez p2, :cond_3

    move-object p2, v0

    :cond_3
    if-eqz p4, :cond_5

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "NOTATION has null namespace but non-empty prefix"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FOCA0002"

    .line 8
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 9
    throw p0

    .line 10
    :cond_5
    :goto_1
    new-instance p4, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {p4, p1, p2, p3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    .line 11
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
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
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/NotationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/value/NotationValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/NotationValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/QualifiedNameValue;->qName:Lnet/sf/saxon/om/StructuredQName;

    check-cast p1, Lnet/sf/saxon/value/NotationValue;

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

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

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

.method public show()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTATION("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getClarkName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
