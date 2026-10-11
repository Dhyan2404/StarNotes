.class public abstract Lnet/sf/saxon/type/Type;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATTRIBUTE:S = 0x2s

.field public static final COMMENT:S = 0x8s

.field public static final DOCUMENT:S = 0x9s

.field public static final ELEMENT:S = 0x1s

.field public static final FUNCTION:S = 0x63s

.field public static final ITEM:S = 0x58s

.field public static final ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

.field public static final NAMESPACE:S = 0xds

.field public static final NODE:S = 0x0s

.field public static final NODE_TYPE:Lnet/sf/saxon/type/ItemType;

.field public static final PARENT_POINTER:S = 0xcs

.field public static final PROCESSING_INSTRUCTION:S = 0x7s

.field public static final STOPPER:S = 0xbs

.field public static final TEXT:S = 0x3s

.field public static final TEXTUAL_ELEMENT:S = 0x11s

.field public static final WHITESPACE_TEXT:S = 0x4s


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/Type;->NODE_TYPE:Lnet/sf/saxon/type/ItemType;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/type/Type;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    const-class p0, Ljava/lang/Object;

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;
    .locals 5

    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_7

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x29

    const-string v3, ", "

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 p0, 0x3

    if-eq v0, p0, :cond_4

    const/4 p0, 0x7

    if-eq v0, p0, :cond_3

    const/16 p0, 0x8

    if-eq v0, p0, :cond_2

    const/16 p0, 0x9

    if-eq v0, p0, :cond_1

    const/16 p0, 0xd

    if-eq v0, p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "namespace()"

    return-object p0

    :cond_1
    const-string p0, "document-node()"

    return-object p0

    :cond_2
    const-string p0, "comment()"

    return-object p0

    :cond_3
    const-string p0, "processing-instruction()"

    return-object p0

    :cond_4
    const-string p0, "text()"

    return-object p0

    :cond_5
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attribute("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "element("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    if-ne v0, v1, :cond_8

    check-cast p0, Lnet/sf/saxon/value/AnyExternalObject;

    invoke-interface {p0}, Lnet/sf/saxon/value/AnyExternalObject;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/ObjectValue;->displayTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_9

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v0, p0, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_a

    const-string p0, "function(*)"

    return-object p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBuiltInItemType(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/om/StandardNames;->getFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/type/BuiltInType;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/type/ItemType;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/type/ItemType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBuiltInSimpleType(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/SimpleType;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/om/StandardNames;->getFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/type/BuiltInType;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/type/SimpleType;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SimpleType;->isBuiltInType()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/ItemType;
    .locals 4

    if-ne p0, p1, :cond_0

    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/type/ErrorType;

    if-eqz v0, :cond_1

    return-object p1

    .line 23
    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/type/ErrorType;

    if-eqz v0, :cond_2

    return-object p0

    .line 24
    :cond_2
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    if-eq p0, v0, :cond_c

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto/16 :goto_0

    .line 25
    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-object v0

    .line 27
    :cond_4
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v2, :cond_5

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v1, v3, :cond_6

    :cond_5
    if-ne v1, v2, :cond_7

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v3, :cond_7

    :cond_6
    return-object v2

    .line 28
    :cond_7
    instance-of v2, v0, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v2, :cond_8

    check-cast v0, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isNumericType()Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v0, :cond_8

    check-cast v1, Lnet/sf/saxon/type/BuiltInAtomicType;

    .line 29
    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->isNumericType()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object p0

    return-object p0

    .line 31
    :cond_8
    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->isAtomicType()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isAtomicType()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    .line 33
    :cond_9
    instance-of v0, p0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_a

    instance-of v0, p1, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_a

    .line 34
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0

    .line 35
    :cond_a
    instance-of v0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz v0, :cond_b

    instance-of v0, p1, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz v0, :cond_b

    .line 36
    check-cast p0, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/JavaExternalObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object p0

    .line 37
    check-cast p1, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-virtual {p1}, Lnet/sf/saxon/type/JavaExternalObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object p1

    .line 38
    new-instance v0, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-static {p0, p1}, Lnet/sf/saxon/type/Type;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/JavaExternalObjectType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 39
    :cond_b
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    .line 40
    :cond_c
    :goto_0
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public static getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;
    .locals 2

    if-ne p0, p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/type/ErrorType;

    if-eqz v0, :cond_1

    return-object p1

    .line 2
    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/type/ErrorType;

    if-eqz v0, :cond_2

    return-object p0

    .line 3
    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz v0, :cond_3

    .line 4
    check-cast p0, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/JavaExternalObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object p0

    .line 5
    check-cast p1, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-virtual {p1}, Lnet/sf/saxon/type/JavaExternalObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object p1

    .line 6
    new-instance p2, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-static {p0, p1}, Lnet/sf/saxon/type/Type;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/JavaExternalObjectType;-><init>(Ljava/lang/Class;)V

    return-object p2

    .line 7
    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/ma/map/MapType;

    if-eqz v0, :cond_7

    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapType;

    if-eqz v0, :cond_7

    .line 8
    sget-object p2, Lnet/sf/saxon/ma/map/MapType;->EMPTY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    if-ne p0, p2, :cond_4

    return-object p1

    :cond_4
    if-ne p1, p2, :cond_5

    return-object p0

    .line 9
    :cond_5
    check-cast p0, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapType;->getKeyType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    check-cast p1, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapType;->getKeyType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    .line 10
    instance-of v0, p2, Lnet/sf/saxon/type/AtomicType;

    if-eqz v0, :cond_6

    .line 11
    check-cast p2, Lnet/sf/saxon/type/AtomicType;

    goto :goto_0

    .line 12
    :cond_6
    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/type/PlainType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    .line 13
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result p0

    .line 15
    invoke-static {v0, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    .line 16
    new-instance p1, Lnet/sf/saxon/ma/map/MapType;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    return-object p1

    .line 17
    :cond_7
    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p2

    .line 18
    sget-object v0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne p2, v0, :cond_8

    return-object p0

    .line 19
    :cond_8
    sget-object v0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p2, v0, :cond_9

    return-object p1

    .line 20
    :cond_9
    sget-object v0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne p2, v0, :cond_a

    return-object p0

    .line 21
    :cond_a
    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/UType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public static getCommonSuperType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/value/SequenceType;
    .locals 2

    .line 41
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result p0

    .line 44
    invoke-static {v0, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public static getItemType(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;
    .locals 6

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_12

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    if-nez p1, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    :cond_2
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v2, 0x7

    if-eq v0, v2, :cond_b

    const/16 v2, 0x8

    if-eq v0, v2, :cond_a

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    const/16 p1, 0xd

    if-ne v0, p1, :cond_3

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown node kind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v2, v0

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v5

    if-ne v5, v1, :cond_6

    goto :goto_1

    :cond_6
    if-ne v5, v3, :cond_5

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v4, p1}, Lnet/sf/saxon/type/Type;->getItemType(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    goto :goto_0

    :cond_8
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_9

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_9
    new-instance p0, Lnet/sf/saxon/pattern/DocumentNodeTest;

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {p0, v0}, Lnet/sf/saxon/pattern/DocumentNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p0

    :cond_a
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_b
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_c
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_d
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object p1

    :cond_e
    new-instance v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance v3, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {v3, p0}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    new-instance v5, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v5, v4, p1, p0, v1}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {v0, v3, v2, v5}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    return-object v0

    :cond_f
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2

    :cond_10
    new-instance v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance v4, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {v4, p0}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    new-instance v5, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v5, v3, p1, p0, v1}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {v0, v4, v2, v5}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    return-object v0

    :cond_11
    :goto_2
    new-instance p1, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object p1

    :cond_12
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    if-ne v0, v1, :cond_14

    if-eqz p1, :cond_13

    check-cast p0, Lnet/sf/saxon/value/AnyExternalObject;

    invoke-interface {p0, p1}, Lnet/sf/saxon/value/AnyExternalObject;->getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "typeHierarchy is required for an external object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    instance-of v0, p0, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v0, :cond_16

    if-nez p1, :cond_15

    sget-object p0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    goto :goto_3

    :cond_15
    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_16
    instance-of v0, p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_18

    if-nez p1, :cond_17

    sget-object p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    goto :goto_4

    :cond_17
    new-instance v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->getMemberType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;-><init>(Lnet/sf/saxon/value/SequenceType;)V

    move-object p0, v0

    :goto_4
    return-object p0

    :cond_18
    check-cast p0, Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    return-object p0
.end method

.method public static isGenerallyComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z
    .locals 2

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/type/Type;->isGuaranteedComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static isGuaranteedComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveNumeric()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveNumeric()Z

    move-result p0

    return p0

    :cond_1
    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_3
    invoke-virtual {p1, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_5
    if-nez p2, :cond_9

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_6
    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_7
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_8
    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_9
    if-ne p0, p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGuaranteedGenerallyComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z
    .locals 2

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/type/Type;->isGenerallyComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNodeType(Lnet/sf/saxon/type/ItemType;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/pattern/NodeTest;

    return p0
.end method

.method public static isPossiblyComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z
    .locals 2

    const/4 p2, 0x1

    if-ne p0, p1, :cond_0

    return p2

    :cond_0
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveNumeric()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveNumeric()Z

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_4
    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_6
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_7
    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_8
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_9
    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_a
    if-ne p0, p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 p2, 0x0

    :cond_c
    :goto_0
    return p2
.end method

.method public static isPrimitiveAtomicType(I)Z
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x215

    if-le p0, v0, :cond_0

    const/16 v0, 0x27b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x277

    if-eq p0, v0, :cond_0

    const/16 v0, 0x278

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x279

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPrimitiveAtomicUType(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x215

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSubType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Z
    .locals 2

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v0

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/AtomicType;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
