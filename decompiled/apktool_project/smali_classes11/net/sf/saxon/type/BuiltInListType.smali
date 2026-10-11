.class public Lnet/sf/saxon/type/BuiltInListType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/ListType;


# static fields
.field public static ANY_URIS:Lnet/sf/saxon/type/BuiltInListType;

.field public static ENTITIES:Lnet/sf/saxon/type/BuiltInListType;

.field public static IDREFS:Lnet/sf/saxon/type/BuiltInListType;

.field public static NMTOKENS:Lnet/sf/saxon/type/BuiltInListType;


# instance fields
.field public final e:I

.field public f:Lnet/sf/saxon/type/BuiltInAtomicType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ENTITIES"

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v1, v0}, Lnet/sf/saxon/type/BuiltInListType;->c(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/BuiltInListType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/BuiltInListType;->ENTITIES:Lnet/sf/saxon/type/BuiltInListType;

    const-string v0, "IDREFS"

    invoke-static {v1, v0}, Lnet/sf/saxon/type/BuiltInListType;->c(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/BuiltInListType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/BuiltInListType;->IDREFS:Lnet/sf/saxon/type/BuiltInListType;

    const-string v0, "NMTOKENS"

    invoke-static {v1, v0}, Lnet/sf/saxon/type/BuiltInListType;->c(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/BuiltInListType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/BuiltInListType;->NMTOKENS:Lnet/sf/saxon/type/BuiltInListType;

    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v1, "anonymous_schemaLocationType"

    invoke-static {v0, v1}, Lnet/sf/saxon/type/BuiltInListType;->c(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/BuiltInListType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/BuiltInListType;->ANY_URIS:Lnet/sf/saxon/type/BuiltInListType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/type/BuiltInListType;->e:I

    const/16 v0, 0x22d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x232

    if-eq p1, v0, :cond_2

    const/16 v0, 0x234

    if-eq p1, v0, :cond_1

    const/16 v0, 0x285

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/type/BuiltInListType;->f:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->ENTITY:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/type/BuiltInListType;->f:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_0

    :cond_2
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->IDREF:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/type/BuiltInListType;->f:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_0

    :cond_3
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->NMTOKEN:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/type/BuiltInListType;->f:Lnet/sf/saxon/type/BuiltInAtomicType;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/type/BuiltInListType;->b(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p3

    invoke-interface {p0, p3, p1, p2}, Lnet/sf/saxon/type/SimpleType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/BuiltInListType;
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/BuiltInListType;

    invoke-static {p0, p1}, Lnet/sf/saxon/om/StandardNames;->getFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/BuiltInListType;-><init>(I)V

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInListType;->getFingerprint()I

    move-result p0

    invoke-static {p0, v0}, Lnet/sf/saxon/type/BuiltInType;->register(ILnet/sf/saxon/type/SchemaType;)V

    return-object v0
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/type/BuiltInListType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error: value doesn\'t match its type annotation. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTypeDerivationIsOK(Lnet/sf/saxon/type/SchemaType;I)V
    .locals 0

    return-void
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

.method public getDerivationMethod()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInListType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/BuiltInListType;->e:I

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getDisplayName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q{http://www.w3.org/2001/XMLSchema}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInListType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFinalProhibitions()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/BuiltInListType;->e:I

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/SimpleType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/BuiltInListType;->f:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getKnownBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p0

    return-object p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/BuiltInListType;->e:I

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/BuiltInListType;->e:I

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRedefinitionLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInListType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "xs"

    invoke-direct {v0, v2, v1, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
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

.method public getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/value/Whitespace$Tokenizer;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/Whitespace$Tokenizer;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInListType;->getItemType()Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    :try_start_0
    new-instance p1, Lnet/sf/saxon/om/AtomicArray;

    new-instance v1, Lcom/sunia/HTREnginev2/mv;

    invoke-direct {v1, p0, p2, p3}, Lcom/sunia/HTREnginev2/mv;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)V

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/om/AtomicArray;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/type/ValidationException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/ValidationException;-><init>(Ljava/lang/Exception;)V

    throw p1
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
    .locals 1

    iget p0, p0, Lnet/sf/saxon/type/BuiltInListType;->e:I

    const/16 v0, 0x232

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isListType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNamespaceSensitive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSameType(Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInListType;->getFingerprint()I

    move-result p0

    if-ne p1, p0, :cond_0

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

.method public postprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p1
.end method

.method public preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p1
.end method

.method public validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInListType;->getItemType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/value/Whitespace$Tokenizer;

    invoke-direct {v1, p1}, Lnet/sf/saxon/value/Whitespace$Tokenizer;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lnet/sf/saxon/value/Whitespace$Tokenizer;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The built-in list type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/type/BuiltInListType;->e:I

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getDisplayName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not allow a zero-length list"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
