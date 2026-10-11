.class public Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;,
        Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;,
        Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANY_ATTRIBUTE_CODE:I = 0x66

.field private static final ATTRIBUTE_CODE:I = 0x64

.field private static final ATTRIBUTE_GROUP_CODE:I = 0x65

.field private static final MODEL_GROUP_CODE:I = 0x64

.field private static final attributeCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final attributeCodes:[Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

.field private static final particleCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final particleCodes:[Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    const-string v2, "all"

    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;-><init>(Ljavax/xml/namespace/QName;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    const-string v5, "sequence"

    invoke-static {v5, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v1, v5, v6}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;-><init>(Ljavax/xml/namespace/QName;I)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    const-string v5, "choice"

    invoke-static {v5, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    const/4 v7, 0x2

    invoke-direct {v1, v5, v7}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;-><init>(Ljavax/xml/namespace/QName;I)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    const-string v5, "element"

    invoke-static {v5, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    const/4 v8, 0x4

    invoke-direct {v1, v5, v8}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;-><init>(Ljavax/xml/namespace/QName;I)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    const-string v5, "any"

    invoke-static {v5, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    const/4 v9, 0x5

    invoke-direct {v1, v5, v9}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;-><init>(Ljavax/xml/namespace/QName;I)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    const-string v5, "group"

    invoke-static {v5, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    const/16 v8, 0x64

    invoke-direct {v1, v5, v8}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;-><init>(Ljavax/xml/namespace/QName;I)V

    aput-object v1, v0, v9

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particleCodes:[Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/a0;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/a0;-><init>()V

    new-instance v5, Lorg/apache/xmlbeans/impl/schema/b0;

    invoke-direct {v5}, Lorg/apache/xmlbeans/impl/schema/b0;-><init>()V

    invoke-static {v1, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particleCodeMap:Ljava/util/Map;

    new-array v0, v6, [Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    const-string v5, "attribute"

    invoke-static {v5, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-direct {v1, v5, v8}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;-><init>(Ljavax/xml/namespace/QName;I)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    const-string v2, "attributeGroup"

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    const/16 v5, 0x65

    invoke-direct {v1, v2, v5}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;-><init>(Ljavax/xml/namespace/QName;I)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    const-string v2, "anyAttribute"

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;-><init>(Ljavax/xml/namespace/QName;I)V

    aput-object v1, v0, v7

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->attributeCodes:[Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/c0;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/c0;-><init>()V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/d0;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/schema/d0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->attributeCodeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaLocalAttribute;)Lorg/apache/xmlbeans/SchemaProperty;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->lambda$buildAttributePropertyModelByQName$3(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaLocalAttribute;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    return-object p0
.end method

.method public static addMinusPointlessParticles(Ljava/util/List;Lorg/apache/xmlbeans/SchemaParticle;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaParticle;",
            ">;",
            "Lorg/apache/xmlbeans/SchemaParticle;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->isSingleton()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->isSingleton()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_3
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static afterMapSubsumedByStartMap(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/SchemaParticle;",
            "Lorg/apache/xmlbeans/QNameSet;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/SchemaParticle;",
            "Lorg/apache/xmlbeans/QNameSet;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/QNameSet;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {v4, v5}, Lorg/apache/xmlbeans/QNameSet;->containsAll(Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_4
    return v2
.end method

.method public static synthetic b(I)[Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->lambda$makeRefArray$0(I)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p0

    return-object p0
.end method

.method public static buildAttributePropertyModelByQName(Lorg/apache/xmlbeans/SchemaAttributeModel;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaAttributeModel;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaProperty;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttributes()[Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/g2n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/g2n;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/h2n;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/h2n;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object p1

    new-instance v2, Lcom/sunia/HTREnginev2/wwd;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/wwd;-><init>()V

    invoke-static {v0, v1, p1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static buildContentPropertyModelByQName(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaParticle;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaProperty;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/SchemaLocalElement;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildElementPropertyModel(Lorg/apache/xmlbeans/SchemaLocalElement;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_c

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_8

    aget-object v6, v4, v3

    invoke-static {v6, p1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildContentPropertyModelByQName(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;

    if-nez v8, :cond_6

    if-nez v2, :cond_5

    move-object v8, v7

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;

    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    :cond_5
    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-static {v8, v7, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->mergeProperties(Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;Lorg/apache/xmlbeans/SchemaProperty;Z)V

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    if-eqz p0, :cond_9

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v5, v6

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_b

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-nez p0, :cond_a

    move-object v5, v1

    goto :goto_5

    :cond_a
    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_b
    :goto_5
    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    goto :goto_4

    :cond_c
    return-object v0
.end method

.method public static buildElementPropertyModel(Lorg/apache/xmlbeans/SchemaLocalElement;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaLocalElement;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaProperty;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildUseProperty(Lorg/apache/xmlbeans/SchemaField;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static buildStateMachine(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 11

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->hasTransitionNotes()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    new-instance v1, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v1}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getParticleType()I

    move-result v5

    if-eq v5, v4, :cond_15

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized schema particle"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->hasTransitionRules()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/QNameSetBuilder;->add(Ljavax/xml/namespace/QName;)V

    :goto_1
    move v6, v4

    goto/16 :goto_13

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->ensureStateMachine([Lorg/apache/xmlbeans/SchemaParticle;)[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    move v6, v3

    move v5, v4

    :goto_2
    if-eqz v5, :cond_8

    array-length v7, v2

    if-ge v6, v7, :cond_8

    aget-object v7, v2, v6

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v7

    if-nez v7, :cond_7

    move v5, v3

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    array-length v6, v2

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_a

    aget-object v8, v2, v7

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->isDeterministic()Z

    move-result v8

    if-nez v8, :cond_9

    move v6, v3

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    move v6, v4

    :goto_4
    move v7, v4

    :goto_5
    array-length v8, v2

    if-ge v7, v8, :cond_d

    add-int/lit8 v8, v7, -0x1

    aget-object v8, v2, v8

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getExcludeNextSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    if-eqz v6, :cond_b

    aget-object v8, v2, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaParticle;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/xmlbeans/QNameSetBuilder;->isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result v8

    if-nez v8, :cond_b

    move v6, v3

    :cond_b
    aget-object v8, v2, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v8

    if-eqz v8, :cond_c

    aget-object v8, v2, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaParticle;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Lorg/apache/xmlbeans/QNameSetBuilder;->clear()V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    array-length v7, v2

    move v8, v3

    :goto_7
    if-ge v8, v7, :cond_1c

    aget-object v9, v2, v8

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaParticle;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_12

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->ensureStateMachine([Lorg/apache/xmlbeans/SchemaParticle;)[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    array-length v5, v2

    move v6, v3

    :goto_8
    if-ge v6, v5, :cond_11

    aget-object v7, v2, v6

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v7

    if-eqz v7, :cond_10

    move v5, v4

    goto :goto_9

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_11
    move v5, v3

    :goto_9
    array-length v6, v2

    move v7, v3

    :goto_a
    if-ge v7, v6, :cond_13

    aget-object v8, v2, v7

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->isDeterministic()Z

    move-result v8

    if-nez v8, :cond_12

    move v6, v3

    goto :goto_b

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_13
    move v6, v4

    :goto_b
    array-length v7, v2

    move v8, v3

    :goto_c
    if-ge v8, v7, :cond_1c

    aget-object v9, v2, v8

    if-eqz v6, :cond_14

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaParticle;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/QNameSetBuilder;->isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result v10

    if-nez v10, :cond_14

    move v6, v3

    :cond_14
    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaParticle;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    check-cast v9, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getExcludeNextSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_15
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->ensureStateMachine([Lorg/apache/xmlbeans/SchemaParticle;)[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    array-length v5, v2

    move v6, v3

    :goto_d
    if-ge v6, v5, :cond_17

    aget-object v7, v2, v6

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v7

    if-nez v7, :cond_16

    move v5, v3

    goto :goto_e

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_17
    move v5, v4

    :goto_e
    array-length v6, v2

    move v7, v3

    :goto_f
    if-ge v7, v6, :cond_19

    aget-object v8, v2, v7

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->isDeterministic()Z

    move-result v8

    if-nez v8, :cond_18

    move v6, v3

    goto :goto_10

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_19
    move v6, v4

    :goto_10
    array-length v7, v2

    move v8, v3

    :goto_11
    if-ge v8, v7, :cond_1b

    aget-object v9, v2, v8

    if-eqz v6, :cond_1a

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaParticle;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/QNameSetBuilder;->isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result v10

    if-nez v10, :cond_1a

    move v6, v3

    :cond_1a
    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaParticle;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    check-cast v9, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getExcludeNextSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_1b
    if-eqz v5, :cond_1c

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    :cond_1c
    :goto_12
    move v2, v5

    :goto_13
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v7

    if-eqz v7, :cond_1e

    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-lez v8, :cond_1d

    goto :goto_14

    :cond_1d
    move v8, v3

    goto :goto_15

    :cond_1e
    :goto_14
    move v8, v4

    :goto_15
    if-eqz v7, :cond_20

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_1f

    goto :goto_16

    :cond_1f
    move v7, v3

    goto :goto_17

    :cond_20
    :goto_16
    move v7, v4

    :goto_17
    if-eqz v8, :cond_21

    if-eqz v6, :cond_21

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->intersect(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v6

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v9}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    invoke-static {p0, v6, v8, v9}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particlesMatchingStart(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v10}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    invoke-static {p0, v6, v9, v10, v4}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particlesMatchingAfter(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;Z)V

    invoke-static {v8, v9}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->afterMapSubsumedByStartMap(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v6

    :cond_21
    if-eqz v7, :cond_22

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    :cond_22
    if-nez v2, :cond_23

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_24

    :cond_23
    move v3, v4

    :cond_24
    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionRules(Lorg/apache/xmlbeans/QNameSet;Z)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionNotes(Lorg/apache/xmlbeans/QNameSet;Z)V

    return-void
.end method

.method public static buildUseProperty(Lorg/apache/xmlbeans/SchemaField;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaProperty;
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;-><init>()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setName(Ljavax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setContainerTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->isAttribute()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setAttribute(Z)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->isDefault()Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setDefault(I)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->isFixed()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setFixed(I)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->isNillable()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setNillable(I)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getDefaultText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setDefaultText(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    instance-of p1, p0, Lorg/apache/xmlbeans/SchemaParticle;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getDocumentation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setDocumentation(Ljava/lang/String;)V

    :cond_3
    instance-of p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;

    if-eqz p1, :cond_4

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setAcceptedNames(Lorg/apache/xmlbeans/QNameSet;)V

    :cond_4
    return-object v0
.end method

.method public static synthetic c(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->lambda$static$7(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->lambda$static$5(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->lambda$throwingMerger$2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ensureStateMachine([Lorg/apache/xmlbeans/SchemaParticle;)[Lorg/apache/xmlbeans/SchemaParticle;
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildStateMachine(Lorg/apache/xmlbeans/SchemaParticle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static extendContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/SchemaParticle;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, p0, v1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->addMinusPointlessParticles(Ljava/util/List;Lorg/apache/xmlbeans/SchemaParticle;I)V

    invoke-static {v2, p1, v1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->addMinusPointlessParticles(Ljava/util/List;Lorg/apache/xmlbeans/SchemaParticle;I)V

    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleChildren([Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->filterPointlessParticlesAndVerifyAllParticles(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    return-object p0
.end method

.method public static extractElementModel(Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaType;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/m2n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/m2n;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/n2n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/n2n;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/t1n;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/t1n;-><init>()V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static extractMaxOccurs(Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;)Ljava/math/BigInteger;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    check-cast p0, Lorg/apache/xmlbeans/XmlInteger;

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlInteger;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractMinOccurs(Lorg/apache/xmlbeans/XmlNonNegativeInteger;)Ljava/math/BigInteger;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlInteger;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    :cond_1
    return-object p0
.end method

.method public static synthetic f(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljavax/xml/namespace/QName;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->lambda$static$4(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public static filterPointlessParticlesAndVerifyAllParticles(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/SchemaParticle;
    .locals 7

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_5

    if-eq v0, v2, :cond_2

    const/4 p1, 0x5

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->countOfParticleChild()I

    move-result v0

    if-ne v0, v4, :cond_7

    invoke-interface {p0, v3}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->countOfParticleChild()I

    move-result v0

    if-ne v0, v4, :cond_7

    invoke-interface {p0, v3}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    if-ne v0, v4, :cond_8

    move v0, v4

    goto :goto_1

    :cond_8
    move v0, v3

    :goto_1
    if-eqz v0, :cond_a

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_a

    :cond_9
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v5

    const-string v6, "cos-all-limited.1.2a"

    invoke-virtual {v5, v6, v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_a
    :goto_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->countOfParticleChild()I

    move-result v5

    if-ge v3, v5, :cond_e

    invoke-interface {p0, v3}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v6

    if-ne v6, v4, :cond_b

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v5

    const-string v6, "cos-all-limited.1.2b"

    invoke-virtual {v5, v6, v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_3

    :cond_b
    if-eqz v0, :cond_d

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v6

    if-ne v6, v2, :cond_c

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_d

    :cond_c
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v5

    const-string v6, "cos-all-limited.2"

    invoke-virtual {v5, v6, v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_d
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_e
    return-object p0
.end method

.method public static synthetic g(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljavax/xml/namespace/QName;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->lambda$static$6(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public static getContentModel(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/function/Supplier;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/a2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a2n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/b2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b2n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/c2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c2n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/e2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e2n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;)V

    const/4 p0, 0x3

    aput-object v1, v0, p0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->getContentModel([Ljava/util/function/Supplier;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;

    move-result-object p0

    return-object p0
.end method

.method public static getContentModel(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/function/Supplier;

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/u1n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u1n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/v1n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v1n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/w1n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w1n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/x1n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x1n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;)V

    const/4 p0, 0x3

    aput-object v1, v0, p0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->getContentModel([Ljava/util/function/Supplier;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;

    move-result-object p0

    return-object p0
.end method

.method public static getContentModel(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/function/Supplier;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/i2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i2n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/j2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j2n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/k2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k2n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/l2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l2n;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;)V

    const/4 p0, 0x3

    aput-object v1, v0, p0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->getContentModel([Ljava/util/function/Supplier;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;

    move-result-object p0

    return-object p0
.end method

.method private static varargs getContentModel([Ljava/util/function/Supplier;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;",
            ">;)",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 4
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/s1n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/s1n;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/d2n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/d2n;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;

    return-object p0
.end method

.method public static getSchema(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_2

    :try_start_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public static synthetic h(Lorg/apache/xmlbeans/SchemaProperty;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->lambda$extractElementModel$1(Lorg/apache/xmlbeans/SchemaProperty;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$buildAttributePropertyModelByQName$3(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaLocalAttribute;)Lorg/apache/xmlbeans/SchemaProperty;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildUseProperty(Lorg/apache/xmlbeans/SchemaField;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$extractElementModel$1(Lorg/apache/xmlbeans/SchemaProperty;)Z
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$makeRefArray$0(I)[Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p0
.end method

.method private static synthetic lambda$static$4(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;->name:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method private static synthetic lambda$static$5(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$6(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;->name:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method private static synthetic lambda$static$7(Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$throwingMerger$2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;)[",
            "Lorg/apache/xmlbeans/SchemaType$Ref;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/y1n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/y1n;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/z1n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/z1n;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p0
.end method

.method public static mergeProperties(Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;Lorg/apache/xmlbeans/SchemaProperty;Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->hasNillable()I

    move-result v0

    const/4 v1, 0x1

    if-eq p2, v0, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setNillable(I)V

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->hasDefault()I

    move-result v0

    if-eq p2, v0, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setDefault(I)V

    :cond_5
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->hasFixed()I

    move-result v0

    if-eq p2, v0, :cond_6

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setFixed(I)V

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getDefaultText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getDefaultText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setDefaultText(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private static particlesMatchingAfter(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaParticle;",
            "Lorg/apache/xmlbeans/QNameSetSpecification;",
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/SchemaParticle;",
            "Lorg/apache/xmlbeans/QNameSet;",
            ">;",
            "Lorg/apache/xmlbeans/QNameSetBuilder;",
            "Z)V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    array-length v3, v0

    sub-int/2addr v3, v1

    aget-object v3, v0, v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v0, v0, v2

    invoke-static {v0, p1, p2, p3, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particlesMatchingAfter(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;Z)V

    goto :goto_2

    :cond_2
    new-instance v3, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v3, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    new-instance v4, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v4}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    array-length v5, v0

    sub-int/2addr v5, v1

    :goto_0
    if-ltz v5, :cond_6

    aget-object v6, v0, v5

    invoke-static {v6, v3, p2, v4, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particlesMatchingAfter(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;Z)V

    invoke-virtual {p3, v4}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    aget-object v6, v0, v5

    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/QNameSetBuilder;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lorg/apache/xmlbeans/QNameSetBuilder;->clear()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    invoke-static {v5, p1, p2, p3, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particlesMatchingAfter(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-nez p4, :cond_9

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object p4

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p4

    if-gez p4, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particlesMatchingStart(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;)V

    :cond_9
    return-void
.end method

.method private static particlesMatchingStart(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaParticle;",
            "Lorg/apache/xmlbeans/QNameSetSpecification;",
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/SchemaParticle;",
            "Lorg/apache/xmlbeans/QNameSet;",
            ">;",
            "Lorg/apache/xmlbeans/QNameSetBuilder;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/QNameSetSpecification;->isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSet;->intersect(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    return-void

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/QNameSetSpecification;->contains(Ljavax/xml/namespace/QName;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->add(Ljavax/xml/namespace/QName;)V

    return-void

    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    array-length v0, p0

    if-nez v0, :cond_5

    return-void

    :cond_5
    aget-object v0, p0, v2

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v0

    if-nez v0, :cond_6

    aget-object p0, p0, v2

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particlesMatchingStart(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;)V

    return-void

    :cond_6
    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    new-instance p1, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {p1}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_9

    aget-object v3, p0, v2

    invoke-static {v3, v0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particlesMatchingStart(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;)V

    invoke-virtual {p3, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    return-void

    :cond_a
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    array-length v0, p0

    :goto_2
    if-ge v2, v0, :cond_b

    aget-object v1, p0, v2

    invoke-static {v1, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particlesMatchingStart(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetSpecification;Ljava/util/Map;Lorg/apache/xmlbeans/QNameSetBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method

.method public static resolveBasicComplexType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 20

    move-object/from16 v11, p0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    move/from16 v16, v10

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->getContentModel(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const-string v1, "<complexType>"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "src-redefine.5a"

    invoke-virtual {v0, v2, v1, v13}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_1
    invoke-static {v9}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateParticleCode(Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElemFormDefault()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    move/from16 v3, v16

    move-object v7, v12

    move-object v15, v9

    move/from16 v9, v17

    move v11, v10

    move-object/from16 v10, v18

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateContentModel(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/Map;ZLorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    if-ne v0, v11, :cond_2

    move/from16 v19, v11

    goto :goto_1

    :cond_2
    const/16 v19, 0x0

    :goto_1
    new-instance v9, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-direct {v9}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v13

    move-object v1, v14

    move/from16 v2, v16

    move-object v4, v12

    move-object/from16 v5, p0

    move-object v7, v9

    move-object v14, v9

    move/from16 v9, v17

    move-object/from16 v16, v10

    move-object/from16 v10, v18

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateAttributeModel(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;Lorg/apache/xmlbeans/SchemaType;ZLorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V

    invoke-static/range {v16 .. v16}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeEltWildcards(Lorg/apache/xmlbeans/SchemaParticle;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v6

    invoke-static {v14}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeAttrWildcards(Lorg/apache/xmlbeans/SchemaAttributeModel;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v7

    move-object/from16 v1, v16

    if-eqz v1, :cond_3

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildStateMachine(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->noUpa()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v10, v1

    check-cast v10, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->isDeterministic()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const-string v2, "cos-nonambig"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v15}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_3
    move-object/from16 v8, p0

    invoke-static {v1, v8}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildContentPropertyModelByQName(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildAttributePropertyModelByQName(Lorg/apache/xmlbeans/SchemaAttributeModel;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->getMixed()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v10, 0x4

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    move v10, v11

    goto :goto_2

    :cond_5
    const/4 v10, 0x3

    :goto_2
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    invoke-virtual {v8, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setComplexTypeVariety(I)V

    move-object/from16 v0, p0

    move-object v2, v14

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    iget-object v0, v6, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v1, v6, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    iget-object v2, v7, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v3, v7, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    invoke-virtual {v8, v0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWildcardSummary(Lorg/apache/xmlbeans/QNameSet;ZLorg/apache/xmlbeans/QNameSet;Z)V

    return-void
.end method

.method public static resolveCcExtension(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;Z)V
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v15

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    const-string v0, "A complexContent must define a base type"

    const/16 v1, 0x1c

    invoke-virtual {v13, v0, v1, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    move-object v0, v8

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1, v11}, Lorg/apache/xmlbeans/impl/schema/StscState;->findRedefinedGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<complexType>"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "src-redefine.5b"

    invoke-virtual {v13, v2, v1, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v2

    invoke-virtual {v13, v1, v15, v2, v10}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v0, v8

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v1

    const-string v2, "src-ct.1"

    invoke-virtual {v13, v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->recover(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move-object v0, v8

    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->finalExtension()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v2

    const-string v3, "cos-ct-extends.1.1"

    invoke-virtual {v13, v3, v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_7
    if-nez v0, :cond_8

    move-object v7, v8

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    move-object v7, v1

    :goto_3
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->extractElementModel(Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->getContentModel(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;

    move-result-object v6

    const/4 v5, 0x2

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v1

    if-ne v1, v5, :cond_a

    if-eqz v6, :cond_9

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v1

    const-string v2, "cos-ct-extends.1.4.1"

    invoke-virtual {v13, v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->recover(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move-object/from16 v18, v8

    goto :goto_4

    :cond_9
    invoke-static {v11, v0, v12, v14, v9}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->resolveScExtensionPart2(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;Ljava/lang/String;Z)V

    return-void

    :cond_a
    move-object/from16 v18, v0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElemFormDefault()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v19

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateParticleCode(Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v14

    move v3, v9

    move v15, v5

    move-object/from16 v5, v19

    move-object v15, v6

    move/from16 v6, v20

    move-object/from16 v24, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v21

    move v11, v10

    move-object/from16 v10, v22

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateContentModel(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/Map;ZLorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v8

    const/4 v10, 0x4

    if-nez v8, :cond_c

    if-nez p2, :cond_c

    if-eqz v18, :cond_b

    invoke-interface/range {v18 .. v18}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v0

    if-ne v0, v10, :cond_b

    move v0, v11

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    move v9, v0

    goto :goto_6

    :cond_c
    move/from16 v9, p2

    :goto_6
    if-eqz v18, :cond_e

    invoke-interface/range {v18 .. v18}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v0

    if-eq v0, v11, :cond_e

    invoke-interface/range {v18 .. v18}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v0

    if-ne v0, v10, :cond_d

    move v0, v11

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-eq v0, v9, :cond_e

    const-string v0, "cos-ct-extends.1.4.2.2"

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v13, v0, v7, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_8

    :cond_e
    const/4 v7, 0x0

    :goto_8
    if-eqz v18, :cond_f

    invoke-interface/range {v18 .. v18}, Lorg/apache/xmlbeans/SchemaType;->hasAllContent()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v8, :cond_f

    const/16 v0, 0x2a

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v1

    const-string v2, "Cannot extend a type with \'all\' content model"

    invoke-virtual {v13, v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    move-object v8, v7

    :cond_f
    move-object/from16 v1, v24

    invoke-static {v1, v8, v12}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->extendContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v13

    if-eqz v13, :cond_10

    invoke-interface {v13}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    if-ne v0, v11, :cond_10

    move/from16 v23, v11

    goto :goto_9

    :cond_10
    const/16 v23, 0x0

    :goto_9
    if-nez v18, :cond_11

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>()V

    goto :goto_a

    :cond_11
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-interface/range {v18 .. v18}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>(Lorg/apache/xmlbeans/SchemaAttributeModel;)V

    :goto_a
    move-object v8, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object v1, v14

    move/from16 v2, v17

    move-object/from16 v4, v16

    move-object/from16 v5, p0

    move-object v12, v7

    move-object v7, v8

    move-object v14, v8

    move-object/from16 v8, v18

    move/from16 v17, v9

    move/from16 v9, v20

    move/from16 v20, v10

    move-object/from16 v10, v21

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateAttributeModel(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;Lorg/apache/xmlbeans/SchemaType;ZLorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeEltWildcards(Lorg/apache/xmlbeans/SchemaParticle;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v6

    invoke-static {v14}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeAttrWildcards(Lorg/apache/xmlbeans/SchemaAttributeModel;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v7

    if-eqz v13, :cond_12

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildStateMachine(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->noUpa()Z

    move-result v0

    if-nez v0, :cond_12

    move-object v0, v13

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->isDeterministic()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const-string v1, "cos-nonambig"

    invoke-virtual {v0, v1, v12, v15}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_12
    move-object/from16 v8, p0

    move v0, v11

    invoke-static {v13, v8}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildContentPropertyModelByQName(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v14, v8}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildAttributePropertyModelByQName(Lorg/apache/xmlbeans/SchemaAttributeModel;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v4

    if-nez v13, :cond_13

    if-eqz v18, :cond_13

    invoke-interface/range {v18 .. v18}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    invoke-interface/range {v18 .. v18}, Lorg/apache/xmlbeans/SchemaType;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentBasedOnTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    const/4 v5, 0x2

    goto :goto_c

    :cond_13
    if-eqz v17, :cond_14

    move/from16 v10, v20

    goto :goto_b

    :cond_14
    if-nez v13, :cond_15

    move v10, v0

    goto :goto_b

    :cond_15
    const/4 v10, 0x3

    :goto_b
    move v5, v10

    :goto_c
    if-nez v18, :cond_16

    sget-object v18, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    :cond_16
    invoke-interface/range {v18 .. v18}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    check-cast v18, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    invoke-virtual {v8, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setComplexTypeVariety(I)V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-static/range {v16 .. v16}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    iget-object v0, v6, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v1, v6, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    iget-object v2, v7, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v3, v7, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    invoke-virtual {v8, v0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWildcardSummary(Lorg/apache/xmlbeans/QNameSet;ZLorg/apache/xmlbeans/QNameSet;Z)V

    return-void
.end method

.method public static resolveCcRestriction(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;Z)V
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_0

    move/from16 v16, v15

    goto :goto_0

    :cond_0
    move/from16 v16, v14

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v1

    const/4 v10, 0x0

    if-nez v1, :cond_1

    const-string v1, "A complexContent must define a base type"

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    move-object v1, v10

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/xmlbeans/impl/schema/StscState;->findRedefinedGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<complexType>"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "src-redefine.5b"

    invoke-virtual {v0, v3, v2, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v3

    invoke-virtual {v0, v2, v14, v3, v15}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->finalRestriction()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v3

    const-string v4, "derivation-ok-restriction.1"

    invoke-virtual {v0, v4, v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object/from16 v17, v10

    goto :goto_3

    :cond_7
    move-object/from16 v17, v1

    :goto_3
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->getContentModel(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateParticleCode(Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElemFormDefault()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    move/from16 v3, v16

    move-object/from16 v7, v18

    move-object v14, v9

    move/from16 v9, v19

    move-object/from16 v10, v20

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateContentModel(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/Map;ZLorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    if-ne v0, v15, :cond_8

    move/from16 v21, v15

    goto :goto_4

    :cond_8
    const/16 v21, 0x0

    :goto_4
    if-nez v17, :cond_9

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>()V

    goto :goto_5

    :cond_9
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>(Lorg/apache/xmlbeans/SchemaAttributeModel;)V

    :goto_5
    move-object v9, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object v1, v13

    move/from16 v2, v16

    move-object/from16 v4, v18

    move-object/from16 v5, p0

    move-object v7, v9

    move-object/from16 v8, v17

    move-object v12, v9

    move/from16 v9, v19

    move-object v13, v10

    move-object/from16 v10, v20

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateAttributeModel(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;Lorg/apache/xmlbeans/SchemaType;ZLorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeEltWildcards(Lorg/apache/xmlbeans/SchemaParticle;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v6

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeAttrWildcards(Lorg/apache/xmlbeans/SchemaAttributeModel;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v7

    if-eqz v13, :cond_a

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildStateMachine(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->noUpa()Z

    move-result v0

    if-nez v0, :cond_a

    move-object v10, v13

    check-cast v10, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->isDeterministic()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const-string v1, "cos-nonambig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_a
    invoke-static {v13, v11}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildContentPropertyModelByQName(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v12, v11}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildAttributePropertyModelByQName(Lorg/apache/xmlbeans/SchemaAttributeModel;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v4

    if-eqz p2, :cond_b

    const/4 v0, 0x4

    goto :goto_6

    :cond_b
    if-nez v13, :cond_c

    move v0, v15

    goto :goto_6

    :cond_c
    const/4 v0, 0x3

    :goto_6
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v1

    add-int/2addr v1, v15

    invoke-virtual {v11, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    :cond_d
    invoke-virtual {v11, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    invoke-virtual {v11, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setComplexTypeVariety(I)V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-static/range {v18 .. v18}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    iget-object v0, v6, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v1, v6, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    iget-object v2, v7, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v3, v7, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    invoke-virtual {v11, v0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWildcardSummary(Lorg/apache/xmlbeans/QNameSet;ZLorg/apache/xmlbeans/QNameSet;Z)V

    return-void
.end method

.method public static resolveComplexType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 16

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v8

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->getSchema(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->isSetAbstract()Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->getAbstract()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->isSetFinal()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->getFinal()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->isSetFinalDefault()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getFinalDefault()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v12

    :goto_1
    const-string v13, "restriction"

    const-string v14, "extension"

    const-string v15, "#all"

    if-eqz v0, :cond_4

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v10

    goto :goto_2

    :cond_3
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    move v4, v11

    goto :goto_3

    :cond_4
    move v2, v11

    :goto_2
    move v3, v2

    move v4, v3

    :goto_3
    move v5, v4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAbstractFinal(ZZZZZ)V

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->isSetBlock()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->getBlock()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->isSetBlockDefault()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getBlockDefault()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v12

    :goto_4
    if-eqz v0, :cond_9

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v10

    goto :goto_5

    :cond_7
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v10

    goto :goto_6

    :cond_8
    move v0, v11

    goto :goto_6

    :cond_9
    move v0, v11

    :goto_5
    move v1, v0

    :goto_6
    invoke-virtual {v6, v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBlock(ZZ)V

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->getComplexContent()Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;

    move-result-object v0

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->getSimpleContent()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;

    move-result-object v1

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->getContentModel(Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;)Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;

    move-result-object v2

    if-eqz v0, :cond_a

    move v3, v10

    goto :goto_7

    :cond_a
    move v3, v11

    :goto_7
    if-eqz v1, :cond_b

    move v4, v10

    goto :goto_8

    :cond_b
    move v4, v11

    :goto_8
    add-int/2addr v3, v4

    if-eqz v2, :cond_c

    move v11, v10

    :cond_c
    add-int/2addr v3, v11

    const/16 v2, 0x1a

    if-le v3, v10, :cond_d

    const-string v3, "A complex type must define either a content model, or a simpleContent or complexContent derivation: more than one found."

    invoke-virtual {v8, v3, v2, v7}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    goto :goto_9

    :cond_d
    move-object v12, v1

    :goto_9
    const/16 v1, 0x1b

    const-string v3, "Missing restriction or extension"

    const-string v4, "Restriction conflicts with extension"

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;->getExtension()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;

    move-result-object v5

    invoke-virtual {v8, v4, v2, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    :cond_e
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;->isSetMixed()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;->getMixed()Z

    move-result v2

    goto :goto_a

    :cond_f
    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->getMixed()Z

    move-result v2

    :goto_a
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;->getExtension()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;->getExtension()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;

    move-result-object v0

    invoke-static {v6, v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->resolveCcExtension(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;Z)V

    goto :goto_b

    :cond_10
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexContentDocument$ComplexContent;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;

    move-result-object v0

    invoke-static {v6, v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->resolveCcRestriction(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexRestrictionType;Z)V

    goto :goto_b

    :cond_11
    invoke-virtual {v8, v3, v1, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->resolveErrorType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    goto :goto_b

    :cond_12
    if-eqz v12, :cond_16

    invoke-interface {v12}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->getExtension()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v12}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleRestrictionType;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v12}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleRestrictionType;

    move-result-object v0

    invoke-virtual {v8, v4, v2, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    :cond_13
    invoke-interface {v12}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->getExtension()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v12}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->getExtension()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->resolveScExtension(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;)V

    goto :goto_b

    :cond_14
    invoke-interface {v12}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleRestrictionType;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v12}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleRestrictionType;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->resolveScRestriction(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleRestrictionType;)V

    goto :goto_b

    :cond_15
    invoke-virtual {v8, v3, v1, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->resolveErrorType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    goto :goto_b

    :cond_16
    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->resolveBasicComplexType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    :goto_b
    return-void
.end method

.method public static resolveErrorType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This type of error recovery not yet implemented."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resolveScExtension(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;)V
    .locals 9

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v3, "A simpleContent extension must define a base type"

    const/16 v4, 0x1c

    invoke-virtual {v0, v3, v4, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->findRedefinedGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "<simpleType>"

    filled-new-array {v8, v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "src-redefine.5b"

    invoke-virtual {v0, v7, v6, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v5

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v6

    invoke-virtual {v0, v5, v4, v6, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_2

    :cond_4
    move-object v3, v5

    :goto_2
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "src-ct.2"

    invoke-virtual {v0, v4, v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->finalExtension()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v5

    const-string v6, "cos-ct-extends.1.1"

    invoke-virtual {v0, v6, v4, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_6
    invoke-static {p0, v3, p1, v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->resolveScExtensionPart2(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;Ljava/lang/String;Z)V

    return-void
.end method

.method public static resolveScExtensionPart2(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;Ljava/lang/String;Z)V
    .locals 14

    move-object v11, p0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v0

    invoke-direct {v13, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>(Lorg/apache/xmlbeans/SchemaAttributeModel;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object v4, v12

    move-object v5, p0

    move-object v7, v13

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateAttributeModel(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;Lorg/apache/xmlbeans/SchemaType;ZLorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeAttrWildcards(Lorg/apache/xmlbeans/SchemaAttributeModel;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v0

    invoke-static {v13, p0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildAttributePropertyModelByQName(Lorg/apache/xmlbeans/SchemaAttributeModel;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    move-object v6, p1

    check-cast v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentBasedOnTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    sget-object v1, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v0, v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWildcardSummary(Lorg/apache/xmlbeans/QNameSet;ZLorg/apache/xmlbeans/QNameSet;Z)V

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setComplexTypeVariety(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v13

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleTypeVariety(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPrimitiveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    if-eq v0, v7, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setListItemTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionMemberTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    :goto_1
    invoke-static {p0, v1, v6}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveFundamentalFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void
.end method

.method public static resolveScRestriction(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleRestrictionType;)V
    .locals 21

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    move v9, v14

    goto :goto_0

    :cond_0
    move v9, v13

    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v0

    const/16 v16, 0x0

    if-eqz v0, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElemFormDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v4

    move-object v1, v8

    move v2, v9

    move-object v5, v15

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateAnonymousSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object/from16 v0, v16

    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "A simpleContent restriction must define a base type"

    const/16 v2, 0x1c

    invoke-virtual {v7, v1, v2, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v11}, Lorg/apache/xmlbeans/impl/schema/StscState;->findRedefinedGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<simpleType>"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "src-redefine.5b"

    invoke-virtual {v7, v3, v2, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_2

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v1

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->getBase()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v2

    invoke-virtual {v7, v1, v13, v2, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :cond_5
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    if-eqz v0, :cond_6

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    move-object v10, v0

    goto :goto_3

    :cond_6
    move-object v10, v1

    :goto_3
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ct-props-correct.2"

    invoke-virtual {v7, v1, v0, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->recover(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :cond_7
    move-object/from16 v17, v1

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->finalRestriction()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v1

    const-string v2, "derivation-ok-restriction.1"

    invoke-virtual {v7, v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_8
    if-nez v17, :cond_9

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>()V

    goto :goto_4

    :cond_9
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>(Lorg/apache/xmlbeans/SchemaAttributeModel;)V

    :goto_4
    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move v2, v9

    move-object v4, v15

    move-object/from16 v5, p0

    move-object v9, v6

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v8, v17

    move-object/from16 v20, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v19

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateAttributeModel(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;Lorg/apache/xmlbeans/SchemaType;ZLorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V

    invoke-static/range {v20 .. v20}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeAttrWildcards(Lorg/apache/xmlbeans/SchemaAttributeModel;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v0

    move-object/from16 v2, v20

    invoke-static {v2, v11}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->buildAttributePropertyModelByQName(Lorg/apache/xmlbeans/SchemaAttributeModel;Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v4

    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v11, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    :cond_a
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentBasedOnTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v11, v14}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    invoke-static {v15}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    sget-object v1, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v0, v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    invoke-virtual {v11, v1, v13, v3, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWildcardSummary(Lorg/apache/xmlbeans/QNameSet;ZLorg/apache/xmlbeans/QNameSet;Z)V

    const/4 v6, 0x2

    invoke-virtual {v11, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setComplexTypeVariety(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    invoke-virtual {v11, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleTypeVariety(I)V

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v16

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPrimitiveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    if-eq v0, v6, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    :cond_c
    :goto_6
    move-object/from16 v0, v18

    goto :goto_7

    :cond_d
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setListItemTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_6

    :cond_e
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionMemberTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_6

    :goto_7
    invoke-static {v11, v12, v0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveFundamentalFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void
.end method

.method public static summarizeAttrWildcards(Lorg/apache/xmlbeans/SchemaAttributeModel;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getWildcardProcess()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    sget-object v0, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;-><init>(Lorg/apache/xmlbeans/QNameSet;Z)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getWildcardProcess()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    sget-object v0, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;-><init>(Lorg/apache/xmlbeans/QNameSet;Z)V

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;-><init>(Lorg/apache/xmlbeans/QNameSet;Z)V

    return-object v0
.end method

.method public static summarizeEltWildcards(Lorg/apache/xmlbeans/SchemaParticle;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    sget-object v1, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    invoke-direct {p0, v1, v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;-><init>(Lorg/apache/xmlbeans/QNameSet;Z)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    sget-object v1, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    invoke-direct {p0, v1, v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;-><init>(Lorg/apache/xmlbeans/QNameSet;Z)V

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getWildcardProcess()I

    move-result v1

    if-ne v1, v3, :cond_2

    sget-object p0, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;-><init>(Lorg/apache/xmlbeans/QNameSet;Z)V

    return-object v0

    :cond_3
    new-instance v1, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v1}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    move v2, v0

    :goto_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->countOfParticleChild()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeEltWildcards(Lorg/apache/xmlbeans/SchemaParticle;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v3

    iget-object v4, v3, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {v1, v4}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    iget-boolean v3, v3, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;-><init>(Lorg/apache/xmlbeans/QNameSet;Z)V

    return-object p0
.end method

.method private static throwingMerger()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/f2n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/f2n;-><init>()V

    return-object v0
.end method

.method public static translateAttributeCode(Ljavax/xml/namespace/QName;)I
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->attributeCodeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static translateAttributeModel(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;Lorg/apache/xmlbeans/SchemaType;ZLorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/XmlObject;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;",
            "Lorg/apache/xmlbeans/SchemaType;",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;",
            "Lorg/apache/xmlbeans/SchemaType;",
            "Z",
            "Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v14, p10

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v15

    if-nez p6, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p6

    :goto_0
    const/4 v10, 0x0

    if-eqz p8, :cond_1

    invoke-interface/range {p8 .. p8}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object v9, v10

    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v16

    :try_start_0
    invoke-interface/range {v16 .. v16}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v1

    const/4 v8, 0x0

    move/from16 v17, p2

    move/from16 v18, v8

    move/from16 v19, v18

    :goto_2
    if-eqz v1, :cond_1c

    invoke-interface/range {v16 .. v16}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateAttributeCode(Ljavax/xml/namespace/QName;)I

    move-result v1

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-interface/range {v16 .. v16}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;

    if-eqz v18, :cond_2

    const-string v2, "Only one attribute wildcard allowed"

    const/16 v3, 0x26

    invoke-virtual {v15, v2, v3, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_8

    :cond_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;->xgetNamespace()Lorg/apache/xmlbeans/impl/xb/xsdschema/NamespaceList;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "##any"

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2, v0}, Lorg/apache/xmlbeans/QNameSet;->forWildcardNamespaceString(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v3

    if-eqz v9, :cond_5

    if-nez p9, :cond_5

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v2, "derivation-ok-restriction.4.1"

    invoke-virtual {v15, v2, v10, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_4

    :cond_4
    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xmlbeans/QNameSet;->containsAll(Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v3, "derivation-ok-restriction.4.2"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v3, v2, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;->xgetProcessContents()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateWildcardProcess(Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;)I

    move-result v1

    invoke-virtual/range {p7 .. p7}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->getWildcardProcess()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v13, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-virtual {v13, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardProcess(I)V

    goto :goto_4

    :cond_6
    if-eqz p9, :cond_7

    invoke-virtual/range {p7 .. p7}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/QNameSet;->union(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-virtual {v13, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardProcess(I)V

    goto :goto_4

    :cond_7
    invoke-virtual/range {p7 .. p7}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/QNameSet;->intersect(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    :goto_4
    move/from16 v18, v7

    goto/16 :goto_8

    :pswitch_1
    invoke-interface/range {v16 .. v16}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;->getRef()Ljavax/xml/namespace/QName;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, "Attribute group reference must have a ref attribute"

    const/16 v3, 0x27

    invoke-virtual {v15, v2, v3, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_8

    :cond_8
    if-eqz v14, :cond_b

    if-eqz v17, :cond_9

    move-object v3, v0

    goto :goto_5

    :cond_9
    move-object v3, v10

    :goto_5
    invoke-virtual {v15, v2, v3, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->findRedefinedAttributeGroup(Ljavax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p10 .. p10}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v19, :cond_a

    const-string v4, "src-redefine.7.1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual/range {p10 .. p10}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v15, v4, v5, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_a
    move-object v6, v3

    move/from16 v19, v7

    goto :goto_7

    :cond_b
    if-eqz v17, :cond_c

    move-object v3, v0

    goto :goto_6

    :cond_c
    move-object v3, v10

    :goto_6
    invoke-virtual {v15, v2, v3, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->findAttributeGroup(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    move-result-object v3

    :cond_d
    move-object v6, v3

    :goto_7
    if-nez v6, :cond_e

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;->xgetRef()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v15, v2, v3, v1, v7}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    goto :goto_8

    :cond_e
    invoke-virtual {v15, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->isProcessing(Lorg/apache/xmlbeans/SchemaComponent;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "src-attribute_group.3"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    invoke-virtual {v15, v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :goto_8
    move-object v10, v9

    move-object v14, v11

    goto/16 :goto_f

    :cond_f
    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    move/from16 v17, v7

    goto :goto_9

    :cond_10
    move/from16 v17, v8

    :goto_9
    move-object v2, v1

    goto :goto_a

    :cond_11
    move-object v2, v0

    :goto_a
    invoke-virtual {v15, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->startProcessing(Lorg/apache/xmlbeans/SchemaComponent;)V

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->isRedefinition()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v20, v6

    goto :goto_b

    :cond_12
    move-object/from16 v20, v10

    :goto_b
    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getFormDefault()Ljava/lang/String;

    move-result-object v4

    move/from16 v3, v17

    move-object/from16 v5, p4

    move-object v7, v6

    move-object/from16 v6, p5

    move-object v0, v7

    move-object v7, v11

    move v14, v8

    move-object/from16 v8, p7

    move-object/from16 p0, v9

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object v14, v11

    move-object/from16 v11, v20

    invoke-static/range {v1 .. v11}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateAttributeModel(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;Lorg/apache/xmlbeans/SchemaType;ZLorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V

    invoke-virtual {v15, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->finishProcessing(Lorg/apache/xmlbeans/SchemaComponent;)V

    :goto_c
    move-object/from16 v10, p0

    goto/16 :goto_f

    :pswitch_2
    move-object/from16 p0, v9

    move-object v14, v11

    invoke-interface/range {v16 .. v16}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;

    const/4 v8, 0x1

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, v17

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v9, v7

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v8}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateAttribute(Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaAttributeModel;Z)Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_c

    :cond_13
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_14

    const-string v2, "ct-props-correct.4"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface/range {p5 .. p5}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetName()Lorg/apache/xmlbeans/XmlNCName;

    move-result-object v0

    invoke-virtual {v15, v2, v3, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_c

    :cond_14
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p0

    if-eqz v10, :cond_18

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v10, v2}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v2

    if-nez v2, :cond_15

    if-nez p9, :cond_18

    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/QNameSet;->contains(Ljavax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "derivation-ok-restriction.2.2"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface/range {p5 .. p5}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v15, v2, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_d

    :cond_15
    if-eqz p9, :cond_16

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaLocalAttribute;->getUse()I

    move-result v2

    if-ne v2, v9, :cond_18

    const-string v2, "An extension cannot prohibit an attribute from the base type; use restriction instead."

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->xgetUse()Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;

    move-result-object v4

    const/16 v5, 0x25

    invoke-virtual {v15, v2, v5, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_d

    :cond_16
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaLocalAttribute;->getUse()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_18

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaLocalAttribute;->getUse()I

    move-result v2

    if-ne v2, v5, :cond_17

    const-string v2, "derivation-ok-restriction.2.1.1"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface/range {p5 .. p5}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v15, v2, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_17
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaLocalAttribute;->getUse()I

    move-result v2

    if-ne v2, v9, :cond_18

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->removeProhibitedAttribute(Ljavax/xml/namespace/QName;)V

    :cond_18
    :goto_d
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaLocalAttribute;->getUse()I

    move-result v2

    if-eq v2, v9, :cond_19

    invoke-virtual {v13, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->addAttribute(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    goto :goto_e

    :cond_19
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    if-eqz v12, :cond_1a

    invoke-interface {v12, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1a
    :goto_e
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getDefaultText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->isFixed()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaLocalAttribute;->getUse()I

    move-result v2

    if-eq v2, v3, :cond_1b

    const-string v2, "src-attribute.2"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v15, v2, v3, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_1b
    :goto_f
    invoke-interface/range {v16 .. v16}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    move-object v9, v10

    move-object v11, v14

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v14, p10

    goto/16 :goto_2

    :cond_1c
    invoke-interface/range {v16 .. v16}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    if-nez p9, :cond_1d

    if-nez v18, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardProcess(I)V

    :cond_1d
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v16, :cond_1e

    :try_start_2
    invoke-interface/range {v16 .. v16}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_10
    throw v2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateContentModel(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/Map;ZLorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;)Lorg/apache/xmlbeans/SchemaParticle;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaType;",
            "Lorg/apache/xmlbeans/XmlObject;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;Z",
            "Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;",
            ")",
            "Lorg/apache/xmlbeans/SchemaParticle;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v1, p6

    move-object/from16 v11, p8

    move-object/from16 v9, p10

    const/4 v10, 0x0

    if-eqz v0, :cond_26

    if-nez v1, :cond_0

    goto/16 :goto_10

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v12

    const/4 v2, 0x4

    const-string v3, "Must be a sequence, choice or all here"

    const/16 v4, 0x20

    if-ne v1, v2, :cond_5

    if-nez p9, :cond_1

    invoke-virtual {v12, v3, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    :cond_1
    move-object v14, v0

    check-cast v14, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalElement;

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateElement(Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v10

    :cond_2
    invoke-interface {v14}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetMinOccurs()Lorg/apache/xmlbeans/XmlNonNegativeInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->extractMinOccurs(Lorg/apache/xmlbeans/XmlNonNegativeInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v14}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->xgetMaxOccurs()Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->extractMaxOccurs(Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/SchemaType;

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v5

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cos-element-consistent"

    invoke-virtual {v12, v2, v1, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v10

    :cond_4
    :goto_0
    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object v13, v0

    move-object v14, v8

    move-object v7, v10

    const/4 v0, 0x0

    move-object v8, v1

    goto/16 :goto_a

    :cond_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    if-nez p9, :cond_6

    invoke-virtual {v12, v3, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    :cond_6
    move-object v1, v0

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/AnyDocument$Any;

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-direct {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;-><init>()V

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;->xgetNamespace()Lorg/apache/xmlbeans/impl/xb/xsdschema/NamespaceList;

    move-result-object v2

    if-nez v2, :cond_7

    sget-object v2, Lorg/apache/xmlbeans/QNameSet;->ALL:Lorg/apache/xmlbeans/QNameSet;

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lorg/apache/xmlbeans/QNameSet;->forWildcardNamespaceString(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;->xgetProcessContents()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateWildcardProcess(Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setWildcardProcess(I)V

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AnyDocument$Any;->xgetMinOccurs()Lorg/apache/xmlbeans/XmlNonNegativeInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->extractMinOccurs(Lorg/apache/xmlbeans/XmlNonNegativeInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AnyDocument$Any;->xgetMaxOccurs()Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->extractMaxOccurs(Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;)Ljava/math/BigInteger;

    move-result-object v1

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object v13, v0

    move-object v14, v8

    move-object v7, v10

    const/4 v0, 0x0

    move-object v8, v3

    move-object v3, v1

    goto/16 :goto_a

    :cond_8
    move-object v2, v0

    check-cast v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-direct {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;-><init>()V

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;->xgetMinOccurs()Lorg/apache/xmlbeans/XmlNonNegativeInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->extractMinOccurs(Lorg/apache/xmlbeans/XmlNonNegativeInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;->xgetMaxOccurs()Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->extractMaxOccurs(Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;)Ljava/math/BigInteger;

    move-result-object v6

    const/16 v7, 0x64

    const/4 v13, 0x1

    if-ne v1, v7, :cond_1a

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;->getRef()Ljavax/xml/namespace/QName;

    move-result-object v7

    if-nez v7, :cond_9

    const-string v1, "Group reference must have a ref attribute"

    const/16 v2, 0x21

    invoke-virtual {v12, v1, v2, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    return-object v10

    :cond_9
    if-eqz v9, :cond_e

    if-eqz p3, :cond_a

    move-object v15, v8

    goto :goto_2

    :cond_a
    move-object v15, v10

    :goto_2
    invoke-virtual/range {p10 .. p10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;->getGroup()Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    move-result-object v14

    invoke-virtual {v12, v7, v15, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->findRedefinedModelGroup(Ljavax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    move-result-object v14

    if-eqz v14, :cond_10

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v15

    invoke-virtual/range {p10 .. p10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;->getGroup()Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p10 .. p10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;->isSeenRedefinition()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v15, "src-redefine.6.1.1"

    invoke-virtual {v12, v15, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_b
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v15, "src-redefine.6.1.2"

    invoke-virtual {v12, v15, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_d
    invoke-virtual {v9, v13}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;->setSeenRedefinition(Z)V

    goto :goto_4

    :cond_e
    if-eqz p3, :cond_f

    move-object v4, v8

    goto :goto_3

    :cond_f
    move-object v4, v10

    :goto_3
    invoke-virtual {v12, v7, v4, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->findModelGroup(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    move-result-object v14

    :cond_10
    :goto_4
    if-nez v14, :cond_11

    const/4 v0, 0x6

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;->xgetRef()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v13}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    return-object v10

    :cond_11
    invoke-virtual {v12, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->isProcessing(Lorg/apache/xmlbeans/SchemaComponent;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    const-string v2, "mg-props-correct.2"

    invoke-virtual {v12, v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v10

    :cond_12
    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v4

    :goto_5
    if-eqz v4, :cond_14

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateParticleCode(Ljavax/xml/namespace/QName;)I

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    goto :goto_6

    :cond_13
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_14
    :goto_6
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    const-string v2, "Model group "

    if-nez v1, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v12, v0, v2, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    return-object v10

    :cond_15
    if-eq v1, v13, :cond_16

    const/4 v4, 0x3

    if-eq v1, v4, :cond_16

    const/4 v4, 0x2

    if-eq v1, v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a sequence, all, or choice"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    const/16 v7, 0x20

    invoke-virtual {v12, v2, v7, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    :cond_16
    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    move-object v8, v2

    :cond_17
    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getElemFormDefault()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_18

    move v7, v13

    goto :goto_8

    :cond_18
    const/4 v7, 0x0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_19

    :try_start_2
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_7
    throw v3

    :cond_1a
    move/from16 v7, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object v14, v10

    :goto_8
    if-eq v1, v13, :cond_1c

    const/4 v15, 0x2

    if-eq v1, v15, :cond_1c

    const/4 v15, 0x3

    if-ne v1, v15, :cond_1b

    goto :goto_9

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1c
    :goto_9
    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object v2, v5

    move v15, v7

    move-object v7, v14

    move-object v14, v8

    move-object v8, v3

    move-object v3, v6

    move/from16 v21, v13

    move-object v13, v0

    move/from16 v0, v21

    :goto_a
    if-eqz v3, :cond_1d

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1d

    const-string v1, "p-props-correct.2.1"

    invoke-virtual {v12, v1, v10, v13}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move-object v3, v2

    :cond_1d
    if-eqz v3, :cond_1e

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1e

    const-string v0, "p-props-correct.2.2"

    invoke-virtual {v12, v0, v10, v13}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    move-object/from16 v6, p7

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v10

    :cond_1e
    move-object/from16 v6, p7

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    if-eqz v7, :cond_20

    invoke-virtual {v12, v7}, Lorg/apache/xmlbeans/impl/schema/StscState;->startProcessing(Lorg/apache/xmlbeans/SchemaComponent;)V

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->isRedefinition()Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;

    invoke-direct {v1, v7}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;)V

    move-object/from16 v18, v1

    goto :goto_b

    :cond_1f
    move-object/from16 v18, v10

    goto :goto_b

    :cond_20
    move-object/from16 v18, v9

    :goto_b
    if-eqz v0, :cond_24

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v19

    :try_start_3
    invoke-interface/range {v19 .. v19}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v0

    :goto_c
    if-eqz v0, :cond_22

    invoke-interface/range {v19 .. v19}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateParticleCode(Ljavax/xml/namespace/QName;)I

    move-result v9

    if-nez v9, :cond_21

    move-object v11, v7

    move-object/from16 p1, v8

    move-object/from16 p2, v14

    move-object v14, v10

    goto :goto_d

    :cond_21
    invoke-interface/range {v19 .. v19}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move v6, v9

    move-object v9, v7

    move-object/from16 v7, p7

    move-object/from16 p1, v8

    move-object/from16 v8, p8

    move-object v11, v9

    move/from16 v9, v20

    move-object/from16 p2, v14

    move-object v14, v10

    move-object/from16 v10, v18

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateContentModel(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/Map;ZLorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getParticleType()I

    move-result v1

    invoke-static {v14, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->addMinusPointlessParticles(Ljava/util/List;Lorg/apache/xmlbeans/SchemaParticle;I)V

    :goto_d
    invoke-interface/range {v19 .. v19}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v8, p1

    move-object/from16 v6, p7

    move-object v7, v11

    move-object v10, v14

    move-object/from16 v14, p2

    move-object/from16 v11, p8

    goto :goto_c

    :cond_22
    move-object v11, v7

    move-object/from16 p1, v8

    move-object v14, v10

    invoke-interface/range {v19 .. v19}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaParticle;

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleChildren([Lorg/apache/xmlbeans/SchemaParticle;)V

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v19, :cond_23

    :try_start_5
    invoke-interface/range {v19 .. v19}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_23
    :goto_e
    throw v2

    :cond_24
    move-object v11, v7

    move-object v3, v8

    :goto_f
    invoke-static {v3, v13}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->filterPointlessParticlesAndVerifyAllParticles(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    if-eqz v11, :cond_25

    invoke-virtual {v12, v11}, Lorg/apache/xmlbeans/impl/schema/StscState;->finishProcessing(Lorg/apache/xmlbeans/SchemaComponent;)V

    :cond_25
    return-object v0

    :cond_26
    :goto_10
    return-object v10
.end method

.method private static translateParticleCode(Ljavax/xml/namespace/QName;)I
    .locals 2

    .line 6
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->particleCodeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static translateParticleCode(Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->translateParticleCode(Ljavax/xml/namespace/QName;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 5
    :try_start_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static translateWildcardProcess(Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "lax"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v1, "skip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    return v0
.end method
