.class public Lnet/sf/saxon/type/EnumerationType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/AtomicType;


# instance fields
.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/EnumerationType;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public allowsDerivation(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V

    return-void
.end method

.method public atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public checkTypeDerivationIsOK(Lnet/sf/saxon/type/SchemaType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    return-void
.end method

.method public getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    const-string p0, "E"

    return-object p0
.end method

.method public getBlock()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDerivationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFinalProhibitions()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlainMemberTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lnet/sf/saxon/type/PlainType;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/type/EnumerationType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()I
    .locals 0

    const/16 p0, 0x201

    return p0
.end method

.method public getRedefinitionLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public getValidationStatus()Lnet/sf/saxon/type/SchemaValidationStatus;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/SchemaValidationStatus;->VALIDATED:Lnet/sf/saxon/type/SchemaValidationStatus;

    return-object p0
.end method

.method public getWhitespaceAction()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAbstract()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAnonymousType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAtomicType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isBuiltInType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isComplexType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdRefType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isListType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNamespaceSensitive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOrdered(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPlainType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPrimitiveType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSameType(Lnet/sf/saxon/type/SchemaType;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/type/EnumerationType;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/type/EnumerationType;->e:Ljava/util/Set;

    check-cast p1, Lnet/sf/saxon/type/EnumerationType;

    iget-object p1, p1, Lnet/sf/saxon/type/EnumerationType;->e:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimpleType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUnionType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 1

    instance-of p2, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/type/EnumerationType;->e:Ljava/util/Set;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public postprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    return-object p1
.end method

.method public preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    return-object p1
.end method

.method public validate(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p2

    sget-object p3, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/type/EnumerationType;->e:Ljava/util/Set;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The string \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not valid for the enumeration type "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
