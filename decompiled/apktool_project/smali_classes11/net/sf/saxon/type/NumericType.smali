.class public Lnet/sf/saxon/type/NumericType;
.super Lnet/sf/saxon/type/LocalUnionType;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/SimpleType;


# static fields
.field public static f:Lnet/sf/saxon/type/NumericType;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/sf/saxon/type/AtomicType;

    const/4 v1, 0x0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/LocalUnionType;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/type/NumericType;
    .locals 3

    const-class v0, Lnet/sf/saxon/type/NumericType;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/sf/saxon/type/NumericType;->f:Lnet/sf/saxon/type/NumericType;

    if-nez v1, :cond_0

    new-instance v1, Lnet/sf/saxon/type/NumericType;

    invoke-direct {v1}, Lnet/sf/saxon/type/NumericType;-><init>()V

    sput-object v1, Lnet/sf/saxon/type/NumericType;->f:Lnet/sf/saxon/type/NumericType;

    const/16 v2, 0x27b

    invoke-static {v2, v1}, Lnet/sf/saxon/type/BuiltInType;->register(ILnet/sf/saxon/type/SchemaType;)V

    :cond_0
    sget-object v1, Lnet/sf/saxon/type/NumericType;->f:Lnet/sf/saxon/type/NumericType;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isNumericType(Lnet/sf/saxon/type/ItemType;)Z
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->analyzeContentExpression(Lnet/sf/saxon/type/SimpleType;Lnet/sf/saxon/expr/Expression;I)V

    return-void
.end method

.method public atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public checkAgainstFacets(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

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

.method public containsListType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    return-object p0
.end method

.method public getBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p0

    return-object p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    const-string p0, "A"

    return-object p0
.end method

.method public getBlock()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    return-wide v0
.end method

.method public getDerivationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:numeric"

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:numeric"

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 0

    const-string p0, "Q(http://www.w3.org/2001/XMLSchema}numeric"

    return-object p0
.end method

.method public getFinalProhibitions()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    const/16 p0, 0x27b

    return p0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->ATOMIC:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "numeric"

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

    invoke-virtual {p0}, Lnet/sf/saxon/type/LocalUnionType;->getMemberTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/type/NumericType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()I
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getRedefinitionLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getResultTypeOfCast()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const-string v1, "numeric"

    const-string v2, "xs"

    invoke-direct {p0, v2, v0, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2001/XMLSchema"

    return-object p0
.end method

.method public getTypeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const-string v1, "numeric"

    const-string v2, "xs"

    invoke-direct {p0, v2, v0, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/NumericType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/NumericType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0
.end method

.method public getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/DoubleValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-static {}, Lnet/sf/saxon/type/StringToDouble;->getInstance()Lnet/sf/saxon/type/StringToDouble;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide p2

    .line 4
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 5
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot convert string \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" to xs:numeric"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Lnet/sf/saxon/type/ValidationFailure;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public getValidationStatus()Lnet/sf/saxon/type/SchemaValidationStatus;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/SchemaValidationStatus;->VALIDATED:Lnet/sf/saxon/type/SchemaValidationStatus;

    return-object p0
.end method

.method public getWhitespaceAction()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public isAnonymousType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomicType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isBuiltInType()Z
    .locals 0

    const/4 p0, 0x1

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

.method public isPlainType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSameType(Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/type/NumericType;

    return p0
.end method

.method public isSimpleType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUnionType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/value/NumericValue;

    return p0
.end method

.method public postprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p1
.end method

.method public preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p1
.end method

.method public toExportString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/NumericType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:numeric"

    return-object p0
.end method

.method public validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    :try_start_0
    invoke-static {}, Lnet/sf/saxon/type/StringToDouble;->getInstance()Lnet/sf/saxon/type/StringToDouble;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
