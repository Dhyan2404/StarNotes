.class public final Lnet/sf/saxon/type/ErrorType;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/AtomicType;
.implements Lnet/sf/saxon/type/UnionType;
.implements Lnet/sf/saxon/type/PlainType;


# static fields
.field public static final i:Lnet/sf/saxon/type/ErrorType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/ErrorType;

    invoke-direct {v0}, Lnet/sf/saxon/type/ErrorType;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/ErrorType;->i:Lnet/sf/saxon/type/ErrorType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/type/ErrorType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/ErrorType;->i:Lnet/sf/saxon/type/ErrorType;

    return-object v0
.end method


# virtual methods
.method public allowsDerivation(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No expression can ever return a value of type xs:error"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public checkAgainstFacets(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public checkTypeDerivationIsOK(Lnet/sf/saxon/type/SchemaType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    if-eq p1, p0, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/type/SchemaException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Type xs:error is not validly derived from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/SchemaException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public containsListType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Item;",
            "Lnet/sf/saxon/type/TypeHierarchy;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "Evaluation of the supplied expression will always fail"

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/type/ErrorType;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p0

    return-object p0
.end method

.method public getBlock()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 2

    const-wide v0, -0x3f70c00000000000L    # -1000.0

    return-wide v0
.end method

.method public getDerivationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:error"

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:error"

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 0

    const-string p0, "Q{http://www.w3.org/2001/XMLSchema}error"

    return-object p0
.end method

.method public getFinalProhibitions()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    const/16 p0, 0x23f

    return p0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->ANY:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getKnownBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ErrorType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const/16 p0, 0x23f

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "error"

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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/type/ErrorType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()I
    .locals 0

    const/16 p0, 0x58

    return p0
.end method

.method public getRedefinitionLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getResultTypeOfCast()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ITEM:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const-string v1, "error"

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

    const-string v1, "error"

    const-string v2, "xs"

    invoke-direct {p0, v2, v0, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    const-string p1, "Cast to xs:error always fails"

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

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

.method public isAbstract()Z
    .locals 0

    const/4 p0, 0x1

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

    const/4 p0, 0x0

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

.method public isOrdered(Z)Z
    .locals 0

    const/4 p0, 0x0

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
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/type/ErrorType;

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

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

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

    invoke-virtual {p0}, Lnet/sf/saxon/type/ErrorType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:error"

    return-object p0
.end method

.method public validate(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    const-string p1, "No value is valid against type xs:error"

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    const-string p1, "No content is ever valid against the type xs:error"

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
