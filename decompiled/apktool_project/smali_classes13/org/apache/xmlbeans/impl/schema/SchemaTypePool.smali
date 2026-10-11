.class Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _componentsToHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _handlesToRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _started:Z

.field private final typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_handlesToRefs:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    return-void
.end method

.method public static synthetic a(Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;Lorg/apache/xmlbeans/impl/schema/XsbReader;Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->lambda$writeHandlePool$0(Lorg/apache/xmlbeans/impl/schema/XsbReader;Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    return-void
.end method

.method private addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    move-object v1, p2

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private synthetic lambda$writeHandlePool$0(Lorg/apache/xmlbeans/impl/schema/XsbReader;Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p3}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeString(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentType()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->fileTypeFromComponentType(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeShort(I)V

    return-void
.end method


# virtual methods
.method public fileTypeFromComponentType(I)I
    .locals 1

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    const/4 v0, 0x3

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, v0, :cond_3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected component type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    const/4 p0, 0x7

    :cond_3
    return p0

    :cond_4
    return v0

    :cond_5
    const/4 p0, 0x2

    return p0
.end method

.method public handleForAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleForAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAttributeGroup;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AttributeGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleForComponent(Lorg/apache/xmlbeans/SchemaComponent;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-ne v0, v1, :cond_7

    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaType;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaGlobalElement;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/xmlbeans/SchemaGlobalElement;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaModelGroup;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/xmlbeans/SchemaModelGroup;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaAttributeGroup;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/xmlbeans/SchemaAttributeGroup;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Component type cannot have a handle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleForElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Element"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleForIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IdentityConstraint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleForModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaModelGroup;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ModelGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Ljavax/xml/namespace/QName;

    move-result-object v0

    const-string v1, "Doc"

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Ljavax/xml/namespace/QName;

    move-result-object v0

    const-string v1, "AttrType"

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->isAttribute()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Attr"

    goto :goto_0

    :cond_3
    const-string v1, "Elem"

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Type"

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Anon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readHandlePool(Lorg/apache/xmlbeans/impl/schema/XsbReader;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_started:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readShort()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readShort()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    new-instance v3, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schema index has an unrecognized entry of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    invoke-direct {p1, v0, p0, v2, v1}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_1
    new-instance v3, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->typeSystem:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaType$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nonempty handle set before read"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public refForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    return-object p0
.end method

.method public startWriteMode()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_started:Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/SchemaComponent$Ref;->getComponent()Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeHandlePool(Lorg/apache/xmlbeans/impl/schema/XsbReader;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->_componentsToHandles:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/a;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlbeans/impl/schema/a;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;Lorg/apache/xmlbeans/impl/schema/XsbReader;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
