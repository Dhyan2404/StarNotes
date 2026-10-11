.class public Lnet/sf/saxon/type/TypeHierarchy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/type/TypeHierarchy$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/type/TypeHierarchy$b;",
            "Lnet/sf/saxon/type/Affinity;",
            ">;"
        }
    .end annotation
.end field

.field protected config:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/TypeHierarchy;->config:Lnet/sf/saxon/Configuration;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/TypeHierarchy;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->j(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->l(Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->i(Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->m(Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->k(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/type/TypeHierarchy;->n(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lnet/sf/saxon/type/Affinity;Lnet/sf/saxon/type/Affinity;)Lnet/sf/saxon/type/Affinity;
    .locals 2

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    if-eq p0, v0, :cond_1

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne p0, v1, :cond_2

    :cond_1
    if-eq p1, v0, :cond_8

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    if-eq p0, v0, :cond_3

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p0, v1, :cond_4

    :cond_3
    if-eq p1, v0, :cond_7

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq p0, v0, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_6
    :goto_0
    return-object v0

    :cond_7
    :goto_1
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_8
    :goto_2
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public static getNearestNamedType(Lnet/sf/saxon/type/SchemaType;)Lnet/sf/saxon/type/SchemaType;
    .locals 1

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static synthetic i(Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to convert the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Implicit conversion of untypedAtomic value to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not allowed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "XPTY0117"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public static inverseRelationship(Lnet/sf/saxon/type/Affinity;)Lnet/sf/saxon/type/Affinity;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/TypeHierarchy$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public static synthetic j(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p0, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0, p1}, Lnet/sf/saxon/type/SimpleType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p2
.end method

.method private synthetic k(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private synthetic l(Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/DoubleValue;

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to convert the "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Cannot promote non-numeric value to xs:double"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XPTY0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic m(Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/value/DoubleValue;

    const-string v1, "XPTY0004"

    const-string v2, "Failed to convert the "

    if-nez v0, :cond_1

    instance-of v0, p2, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/FloatValue;

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Cannot promote non-numeric value to xs:float"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Cannot promote xs:double value to xs:float"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic n(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/value/AnyURIValue;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AnyURIValue;->convertToString()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static o(Lnet/sf/saxon/pattern/QNameTest;Lnet/sf/saxon/pattern/QNameTest;)Lnet/sf/saxon/type/Affinity;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/pattern/QNameTest;->matches(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    goto :goto_0

    :cond_1
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    :goto_0
    return-object p0

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v0, :cond_4

    check-cast p0, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/pattern/QNameTest;->matches(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_1

    :cond_3
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    :goto_1
    return-object p0

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/pattern/SameNameTest;

    if-eqz v0, :cond_6

    check-cast p1, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/pattern/QNameTest;->matches(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    goto :goto_2

    :cond_5
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    :goto_2
    return-object p0

    :cond_6
    instance-of v0, p0, Lnet/sf/saxon/pattern/SameNameTest;

    if-eqz v0, :cond_8

    check-cast p0, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/pattern/QNameTest;->matches(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_3

    :cond_7
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    :goto_3
    return-object p0

    :cond_8
    instance-of v0, p0, Lnet/sf/saxon/pattern/NamespaceTest;

    if-eqz v0, :cond_9

    instance-of v0, p1, Lnet/sf/saxon/pattern/NamespaceTest;

    if-eqz v0, :cond_9

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_9
    instance-of p0, p0, Lnet/sf/saxon/pattern/LocalNameTest;

    if-eqz p0, :cond_a

    instance-of p0, p1, Lnet/sf/saxon/pattern/LocalNameTest;

    if-eqz p0, :cond_a

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_a
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public static p(Lnet/sf/saxon/type/ItemType;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lnet/sf/saxon/type/UnionType;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is a non-pure union type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static q(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/ItemType;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/pattern/SameNameTest;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/SameNameTest;->getEquivalentNameTest()Lnet/sf/saxon/pattern/NameTest;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static r(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Ljava/util/Set<",
            "TX;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public applyFunctionCoercion(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    instance-of v0, p3, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lnet/sf/saxon/type/FunctionItemType;

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->isMapType()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->isArrayType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3, p2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-eq p2, v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object p2

    if-ne p3, p2, :cond_0

    return-object p1

    :cond_0
    new-instance p2, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;

    check-cast p3, Lnet/sf/saxon/type/SpecificFunctionType;

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy;->config:Lnet/sf/saxon/Configuration;

    invoke-direct {p2, p3, p0, p4}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer$Coercer;-><init>(Lnet/sf/saxon/type/SpecificFunctionType;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/s9api/Location;)V

    new-instance p0, Lnet/sf/saxon/expr/ItemMappingIterator;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, p0}, Lnet/sf/saxon/om/SequenceTool;->getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v2}, Lnet/sf/saxon/expr/Atomizer;->getAtomizingIterator(Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to atomize the "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "XPTY0117"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v4, v5, :cond_4

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v2}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sunia/HTREnginev2/uon;

    invoke-direct {v2, p3, v1}, Lcom/sunia/HTREnginev2/uon;-><init>(Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/type/ItemType;)V

    invoke-static {v2}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v2}, Lnet/sf/saxon/type/SimpleType;->isUnionType()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sf/saxon/type/TypeHierarchy;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v2

    new-instance v4, Lcom/sunia/HTREnginev2/von;

    invoke-direct {v4, v1, v2}, Lcom/sunia/HTREnginev2/von;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/lib/ConversionRules;)V

    invoke-static {v4}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/sunia/HTREnginev2/won;

    invoke-direct {v2, p0, v1}, Lcom/sunia/HTREnginev2/won;-><init>(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/type/ItemType;)V

    invoke-static {v2}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v2

    :goto_1
    new-instance v4, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {v4, v0, v2, v3}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    move-object v0, v4

    :cond_4
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/sunia/HTREnginev2/xon;

    invoke-direct {v2, p0, p3}, Lcom/sunia/HTREnginev2/xon;-><init>(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-static {v2}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v2

    new-instance v4, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {v4, v0, v2, v3}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    :goto_2
    move-object v0, v4

    goto :goto_3

    :cond_5
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/sunia/HTREnginev2/yon;

    invoke-direct {v2, p0, p3}, Lcom/sunia/HTREnginev2/yon;-><init>(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-static {v2}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v2

    new-instance v4, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {v4, v0, v2, v3}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    goto :goto_2

    :cond_6
    :goto_3
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    if-eq v2, v5, :cond_7

    new-instance v2, Lcom/sunia/HTREnginev2/zon;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/zon;-><init>()V

    invoke-static {v2}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v2

    new-instance v4, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {v4, v0, v2, v3}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    move-object v0, v4

    :cond_7
    invoke-virtual {p0, v0, p1, v1, p4}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionCoercion(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object v2, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v2, :cond_8

    sget-object v2, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v2, :cond_8

    new-instance p1, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy;->config:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v1, p3, p4, p0}, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/Configuration;)V

    new-instance p0, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {p0, v0, p1, v3}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    move-object v0, p0

    :cond_8
    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    const p1, 0xe000

    if-eq p0, p1, :cond_9

    new-instance p0, Lnet/sf/saxon/expr/CardinalityCheckingIterator;

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    invoke-direct {p0, v0, p1, p3, p4}, Lnet/sf/saxon/expr/CardinalityCheckingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;ILnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)V

    move-object v0, p0

    :cond_9
    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_2
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public computeContentRelationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Ljava/util/Optional;Ljava/util/Optional;)Lnet/sf/saxon/type/Affinity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/type/ItemType;",
            "Lnet/sf/saxon/type/ItemType;",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/z/IntSet;",
            ">;",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/z/IntSet;",
            ">;)",
            "Lnet/sf/saxon/type/Affinity;"
        }
    .end annotation

    instance-of p3, p1, Lnet/sf/saxon/pattern/DocumentNodeTest;

    if-eqz p3, :cond_1

    instance-of p3, p2, Lnet/sf/saxon/pattern/DocumentNodeTest;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lnet/sf/saxon/pattern/DocumentNodeTest;

    invoke-virtual {p3}, Lnet/sf/saxon/pattern/DocumentNodeTest;->getElementTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p3

    move-object p4, p2

    check-cast p4, Lnet/sf/saxon/pattern/DocumentNodeTest;

    invoke-virtual {p4}, Lnet/sf/saxon/pattern/DocumentNodeTest;->getElementTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_0

    :cond_1
    instance-of p3, p2, Lnet/sf/saxon/pattern/DocumentNodeTest;

    if-eqz p3, :cond_2

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    goto :goto_0

    :cond_2
    move-object p3, p1

    check-cast p3, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p3}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p3

    move-object p4, p2

    check-cast p4, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p4}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lnet/sf/saxon/type/TypeHierarchy;->schemaTypeRelationship(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/type/SchemaType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    :goto_0
    check-cast p1, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NodeTest;->isNillable()Z

    move-result p1

    check-cast p2, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NodeTest;->isNillable()Z

    move-result p2

    if-eq p1, p2, :cond_7

    sget-object p3, Lnet/sf/saxon/type/TypeHierarchy$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_6

    const/4 p2, 0x2

    if-eq p3, p2, :cond_5

    const/4 p2, 0x3

    if-eq p3, p2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    goto :goto_1

    :cond_4
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_7

    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    :cond_7
    :goto_1
    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy;->config:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getGenericFunctionItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;
    .locals 8

    invoke-static {p1}, Lnet/sf/saxon/type/TypeHierarchy;->p(Lnet/sf/saxon/type/ItemType;)V

    invoke-static {p2}, Lnet/sf/saxon/type/TypeHierarchy;->p(Lnet/sf/saxon/type/ItemType;)V

    if-ne p1, p2, :cond_0

    :try_start_0
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/type/AnyItemType;

    if-eqz v0, :cond_2

    instance-of p0, p2, Lnet/sf/saxon/type/AnyItemType;

    if-eqz p0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_2
    instance-of v0, p2, Lnet/sf/saxon/type/AnyItemType;

    if-eqz v0, :cond_3

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3
    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p2, Lnet/sf/saxon/pattern/NodeTest;

    if-nez v0, :cond_15

    instance-of v0, p2, Lnet/sf/saxon/type/FunctionItemType;

    if-nez v0, :cond_15

    instance-of v0, p2, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz v0, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p1, v0, :cond_5

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_5
    if-ne p2, v0, :cond_6

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_6
    instance-of v0, p1, Lnet/sf/saxon/type/AtomicType;

    if-eqz v0, :cond_c

    instance-of v0, p2, Lnet/sf/saxon/type/AtomicType;

    if-eqz v0, :cond_c

    move-object p0, p1

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p0

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v0

    if-ne p0, v0, :cond_7

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_7
    move-object p0, p2

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    :goto_0
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v1

    if-ne v0, v1, :cond_8

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_8
    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/AtomicType;

    if-eqz v0, :cond_9

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    goto :goto_0

    :cond_9
    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    :goto_1
    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p0

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v0

    if-ne p0, v0, :cond_a

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_a
    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/type/AtomicType;

    if-eqz p1, :cond_b

    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    goto :goto_1

    :cond_b
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_c
    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isAtomicType()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_13

    check-cast p1, Lnet/sf/saxon/type/PlainType;

    invoke-interface {p1}, Lnet/sf/saxon/type/PlainType;->getPlainMemberTypes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/type/TypeHierarchy;->r(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p2, Lnet/sf/saxon/type/PlainType;

    invoke-interface {p2}, Lnet/sf/saxon/type/PlainType;->getPlainMemberTypes()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/type/TypeHierarchy;->r(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->s(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_d
    invoke-interface {p1, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    invoke-interface {p2, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_e
    if-eqz v0, :cond_f

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_f
    if-eqz v1, :cond_10

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_10
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->t(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_11
    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/type/TypeHierarchy;->t(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_12
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_13
    instance-of v0, p1, Lnet/sf/saxon/type/AtomicType;

    if-eqz v0, :cond_14

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/type/TypeHierarchy;->inverseRelationship(Lnet/sf/saxon/type/Affinity;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_15
    :goto_2
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_16
    instance-of v0, p1, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_37

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-nez v0, :cond_36

    instance-of v0, p2, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz v0, :cond_17

    goto/16 :goto_9

    :cond_17
    instance-of v0, p1, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-eqz v0, :cond_19

    instance-of p0, p2, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-eqz p0, :cond_18

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_18
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_19
    instance-of v0, p2, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-eqz v0, :cond_1a

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1a
    instance-of v0, p2, Lnet/sf/saxon/type/ErrorType;

    if-eqz v0, :cond_1b

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1b
    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1c
    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    goto :goto_3

    :cond_1d
    invoke-virtual {v1, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_3

    :cond_1e
    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    goto :goto_3

    :cond_1f
    sget-object v0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    :goto_3
    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getRequiredNodeNames()Ljava/util/Optional;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v2}, Lnet/sf/saxon/pattern/NodeTest;->getRequiredNodeNames()Ljava/util/Optional;

    move-result-object v2

    instance-of v3, p1, Lnet/sf/saxon/pattern/QNameTest;

    if-eqz v3, :cond_20

    instance-of v3, p2, Lnet/sf/saxon/pattern/QNameTest;

    if-eqz v3, :cond_20

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/pattern/QNameTest;

    move-object v4, p2

    check-cast v4, Lnet/sf/saxon/pattern/QNameTest;

    invoke-static {v3, v4}, Lnet/sf/saxon/type/TypeHierarchy;->o(Lnet/sf/saxon/pattern/QNameTest;Lnet/sf/saxon/pattern/QNameTest;)Lnet/sf/saxon/type/Affinity;

    move-result-object v3

    goto/16 :goto_5

    :cond_20
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/z/IntUniversalSet;

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/z/IntUniversalSet;

    if-eqz v3, :cond_21

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    goto/16 :goto_5

    :cond_21
    sget-object v3, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    goto :goto_5

    :cond_22
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/z/IntUniversalSet;

    if-eqz v3, :cond_23

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_5

    :cond_23
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_4

    :cond_24
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/z/IntSet;->containsAll(Lnet/sf/saxon/z/IntSet;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v3}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v3

    invoke-virtual {v4}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v4

    if-ne v3, v4, :cond_25

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    goto :goto_5

    :cond_25
    sget-object v3, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    goto :goto_5

    :cond_26
    invoke-virtual {v4, v3}, Lnet/sf/saxon/z/IntSet;->containsAll(Lnet/sf/saxon/z/IntSet;)Z

    move-result v5

    if-eqz v5, :cond_27

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_5

    :cond_27
    invoke-static {v3, v4}, Lnet/sf/saxon/z/IntHashSet;->containsSome(Lnet/sf/saxon/z/IntSet;Lnet/sf/saxon/z/IntSet;)Z

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    goto :goto_5

    :cond_28
    sget-object v3, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    goto :goto_5

    :cond_29
    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    goto :goto_5

    :cond_2a
    sget-object v3, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    :goto_5
    invoke-virtual {p0, p1, p2, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->computeContentRelationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Ljava/util/Optional;Ljava/util/Optional;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne v0, p1, :cond_2b

    if-ne v3, p1, :cond_2b

    if-ne p0, p1, :cond_2b

    return-object p1

    :cond_2b
    if-eq v0, p1, :cond_2c

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne v0, p2, :cond_2e

    :cond_2c
    if-eq v3, p1, :cond_2d

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne v3, p2, :cond_2e

    :cond_2d
    if-eq p0, p1, :cond_35

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p2, :cond_2e

    goto :goto_8

    :cond_2e
    if-eq v0, p1, :cond_2f

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v0, p2, :cond_31

    :cond_2f
    if-eq v3, p1, :cond_30

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v3, p2, :cond_31

    :cond_30
    if-eq p0, p1, :cond_34

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_31

    goto :goto_7

    :cond_31
    sget-object p1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v3, p1, :cond_33

    if-ne p0, p1, :cond_32

    goto :goto_6

    :cond_32
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_33
    :goto_6
    return-object p1

    :cond_34
    :goto_7
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_35
    :goto_8
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_36
    :goto_9
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_37
    instance-of v0, p1, Lnet/sf/saxon/type/AnyExternalObjectType;

    if-eqz v0, :cond_3d

    instance-of p0, p2, Lnet/sf/saxon/type/AnyExternalObjectType;

    if-nez p0, :cond_38

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_38
    instance-of p0, p1, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz p0, :cond_3b

    sget-object p0, Lnet/sf/saxon/type/AnyExternalObjectType;->THE_INSTANCE:Lnet/sf/saxon/type/AnyExternalObjectType;

    if-ne p2, p0, :cond_39

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_39
    instance-of p0, p2, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz p0, :cond_3a

    check-cast p1, Lnet/sf/saxon/type/JavaExternalObjectType;

    check-cast p2, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/JavaExternalObjectType;->getRelationship(Lnet/sf/saxon/type/JavaExternalObjectType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    return-object p0

    :cond_3a
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3b
    instance-of p0, p2, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz p0, :cond_3c

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3c
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3d
    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapType;

    if-eqz v0, :cond_43

    instance-of v0, p2, Lnet/sf/saxon/ma/map/MapType;

    if-eqz v0, :cond_43

    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->EMPTY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    if-ne p1, v0, :cond_3e

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3e
    if-ne p2, v0, :cond_3f

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3f
    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    if-ne p1, v0, :cond_40

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_40
    if-ne p2, v0, :cond_41

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_41
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/map/MapType;->getKeyType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {v1}, Lnet/sf/saxon/ma/map/MapType;->getKeyType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {v2}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {v3}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->g(Lnet/sf/saxon/type/Affinity;Lnet/sf/saxon/type/Affinity;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v0, v1, :cond_42

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-eq v0, v1, :cond_42

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v1, :cond_43

    :cond_42
    return-object v0

    :cond_43
    instance-of v0, p2, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz v0, :cond_4c

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/type/FunctionItemType;

    move-object v1, p2

    check-cast v1, Lnet/sf/saxon/type/FunctionItemType;

    invoke-interface {v0, v1, p0}, Lnet/sf/saxon/type/FunctionItemType;->relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v1, :cond_44

    return-object v1

    :cond_44
    sget-object v1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    check-cast p1, Lnet/sf/saxon/type/FunctionItemType;

    invoke-interface {p1}, Lnet/sf/saxon/type/FunctionItemType;->getAnnotationAssertions()Lnet/sf/saxon/query/AnnotationList;

    move-result-object p1

    check-cast p2, Lnet/sf/saxon/type/FunctionItemType;

    invoke-interface {p2}, Lnet/sf/saxon/type/FunctionItemType;->getAnnotationAssertions()Lnet/sf/saxon/query/AnnotationList;

    move-result-object p2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/query/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/query/Annotation;

    invoke-virtual {v4}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_45
    invoke-virtual {p2}, Lnet/sf/saxon/query/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/query/Annotation;

    invoke-virtual {v4}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_46
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lnet/sf/saxon/type/TypeHierarchy;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/Configuration;->getFunctionAnnotationHandler(Ljava/lang/String;)Lnet/sf/saxon/lib/FunctionAnnotationHandler;

    move-result-object v4

    if-eqz v4, :cond_47

    sget-object v5, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    invoke-virtual {p1, v3}, Lnet/sf/saxon/query/AnnotationList;->filterByNamespace(Ljava/lang/String;)Lnet/sf/saxon/query/AnnotationList;

    move-result-object v6

    invoke-virtual {p2, v3}, Lnet/sf/saxon/query/AnnotationList;->filterByNamespace(Ljava/lang/String;)Lnet/sf/saxon/query/AnnotationList;

    move-result-object v3

    invoke-virtual {v6}, Lnet/sf/saxon/query/AnnotationList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-virtual {v3}, Lnet/sf/saxon/query/AnnotationList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_d

    :cond_48
    sget-object v5, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    goto :goto_d

    :cond_49
    invoke-virtual {v3}, Lnet/sf/saxon/query/AnnotationList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4a

    sget-object v5, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_d

    :cond_4a
    invoke-interface {v4, v6, v3}, Lnet/sf/saxon/lib/FunctionAnnotationHandler;->relationship(Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/type/Affinity;

    move-result-object v5

    :goto_d
    invoke-static {v1, v5}, Lnet/sf/saxon/type/TypeHierarchy;->g(Lnet/sf/saxon/type/Affinity;Lnet/sf/saxon/type/Affinity;)Lnet/sf/saxon/type/Affinity;

    move-result-object v1

    goto :goto_c

    :cond_4b
    invoke-static {v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->g(Lnet/sf/saxon/type/Affinity;Lnet/sf/saxon/type/Affinity;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    return-object p0

    :cond_4c
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p0, p1, :cond_1

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lnet/sf/saxon/type/TypeHierarchy;->q(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-static {p2}, Lnet/sf/saxon/type/TypeHierarchy;->q(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_0
    instance-of v0, p2, Lnet/sf/saxon/type/AnyItemType;

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/type/AnyItemType;

    if-eqz v0, :cond_2

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3
    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_5
    instance-of v0, p1, Lnet/sf/saxon/type/ErrorType;

    if-eqz v0, :cond_6

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_6
    instance-of v0, p2, Lnet/sf/saxon/type/ErrorType;

    if-eqz v0, :cond_7

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_7
    new-instance v0, Lnet/sf/saxon/type/TypeHierarchy$b;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy$b;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)V

    iget-object v1, p0, Lnet/sf/saxon/type/TypeHierarchy;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->h(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy;->a:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/type/PlainType;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/type/PlainType;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/type/PlainType;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/type/PlainType;

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public schemaTypeRelationship(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/type/SchemaType;)Lnet/sf/saxon/type/Affinity;
    .locals 1

    invoke-interface {p1, p2}, Lnet/sf/saxon/type/SchemaType;->isSameType(Lnet/sf/saxon/type/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/type/AnyType;

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1
    instance-of v0, p2, Lnet/sf/saxon/type/AnyType;

    if-eqz v0, :cond_2

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/type/Untyped;

    if-eqz v0, :cond_4

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p2, v0, :cond_3

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p2, v0, :cond_4

    :cond_3
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_4
    instance-of v0, p2, Lnet/sf/saxon/type/Untyped;

    if-eqz v0, :cond_6

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p1, v0, :cond_5

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p1, v0, :cond_6

    :cond_5
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_6
    instance-of v0, p1, Lnet/sf/saxon/type/PlainType;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/type/PlainType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p2, Lnet/sf/saxon/type/PlainType;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/type/PlainType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_7

    check-cast p1, Lnet/sf/saxon/type/ItemType;

    check-cast p2, Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    return-object p0

    :cond_7
    move-object p0, p1

    :cond_8
    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0, p2}, Lnet/sf/saxon/type/SchemaType;->isSameType(Lnet/sf/saxon/type/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_9
    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-interface {p2, p1}, Lnet/sf/saxon/type/SchemaType;->isSameType(Lnet/sf/saxon/type/SchemaType;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_a
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_0

    :cond_2
    const/16 v2, 0x2000

    if-ne v0, v2, :cond_3

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_4
    sget-object v0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_5

    return-object p1

    :cond_5
    sget-object p1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v0, p1, :cond_8

    if-ne v0, p0, :cond_6

    goto :goto_1

    :cond_6
    if-ne p0, p1, :cond_7

    return-object v0

    :cond_7
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    :cond_8
    :goto_1
    return-object p0
.end method

.method public final t(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/type/PlainType;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/type/PlainType;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/type/PlainType;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/PlainType;

    invoke-virtual {p0, v3, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v3

    sget-object v5, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-eq v3, v5, :cond_3

    sget-object v5, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_2
    move v1, v4

    :cond_3
    :goto_0
    if-nez v1, :cond_0

    return v4

    :cond_4
    return v1
.end method
