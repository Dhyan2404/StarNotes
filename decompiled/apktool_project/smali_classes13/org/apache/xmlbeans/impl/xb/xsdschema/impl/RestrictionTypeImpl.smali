.class public Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;
.super Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/AnnotatedImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionType;


# static fields
.field private static final PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x15

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "group"

    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "all"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "choice"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "sequence"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "simpleType"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "minExclusive"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "minInclusive"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "maxExclusive"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "maxInclusive"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "totalDigits"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "fractionDigits"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "length"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "minLength"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "maxLength"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "enumeration"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "whiteSpace"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "pattern"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "attribute"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "attributeGroup"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "anyAttribute"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, ""

    const-string v3, "base"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/AnnotatedImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method


# virtual methods
.method public addNewAll()Lorg/apache/xmlbeans/impl/xb/xsdschema/All;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/All;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewAnyAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewAttributeGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewChoice()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewEnumeration()Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewFractionDigits()Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewLength()Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewMaxExclusive()Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewMaxInclusive()Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewMaxLength()Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewMinExclusive()Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewMinInclusive()Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewMinLength()Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewPattern()Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewSequence()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewTotalDigits()Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNewWhiteSpace()Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAll()Lorg/apache/xmlbeans/impl/xb/xsdschema/All;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/All;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAnyAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAttributeArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAttributeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;

    return-object p0
.end method

.method public getAttributeGroupArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAttributeGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;

    return-object p0
.end method

.method public getAttributeGroupList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/rql;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/rql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/sql;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/sql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/tql;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/tql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/uql;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/uql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/vql;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/vql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAttributeList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/aql;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/aql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/bql;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/bql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/cql;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/cql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/dql;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/dql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/eql;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/eql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBase()Ljavax/xml/namespace/QName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SimpleValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getQNameValue()Ljavax/xml/namespace/QName;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getChoice()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEnumerationArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEnumerationArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;

    return-object p0
.end method

.method public getEnumerationList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/kpl;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/kpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/lpl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/lpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/mpl;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/mpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/npl;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/npl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/opl;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/opl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFractionDigitsArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFractionDigitsArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    return-object p0
.end method

.method public getFractionDigitsList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/gql;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/gql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/hql;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/hql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/iql;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/iql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/jql;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/jql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/kql;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/kql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLengthArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLengthArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    return-object p0
.end method

.method public getLengthList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/epl;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/epl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/fpl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/fpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/gpl;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/gpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/hpl;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/hpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/ipl;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/ipl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxExclusiveArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxExclusiveArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    return-object p0
.end method

.method public getMaxExclusiveList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/ppl;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/ppl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/qpl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/qpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/rpl;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/rpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/spl;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/spl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/tpl;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/tpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxInclusiveArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxInclusiveArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    return-object p0
.end method

.method public getMaxInclusiveList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/tol;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/tol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/uol;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/uol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/vol;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/vol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/wol;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/wol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/xol;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/xol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxLengthArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxLengthArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    return-object p0
.end method

.method public getMaxLengthList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/nol;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/nol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/yol;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/yol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/jpl;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/jpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/upl;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/upl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/fql;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/fql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMinExclusiveArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMinExclusiveArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    return-object p0
.end method

.method public getMinExclusiveList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/ool;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/ool;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/pol;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/pol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/qol;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/qol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/rol;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/rol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/sol;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/sol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMinInclusiveArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMinInclusiveArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    return-object p0
.end method

.method public getMinInclusiveList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/wql;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/wql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/xql;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/xql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/yql;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/yql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/zql;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/zql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/arl;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/arl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMinLengthArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMinLengthArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    return-object p0
.end method

.method public getMinLengthList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/vpl;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/vpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/wpl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/wpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/xpl;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/xpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/ypl;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/ypl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/zpl;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/zpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPatternArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPatternArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;

    return-object p0
.end method

.method public getPatternList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/lql;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/lql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/mql;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/mql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/nql;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/nql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/oql;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/oql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/pql;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/pql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSequence()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTotalDigitsArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTotalDigitsArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;

    return-object p0
.end method

.method public getTotalDigitsList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/zol;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/zol;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/apl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/apl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/bpl;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/bpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/cpl;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/cpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/dpl;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/dpl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getWhiteSpaceArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;

    if-eqz p0, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getWhiteSpaceArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;

    return-object p0
.end method

.method public getWhiteSpaceList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/qql;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/qql;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/brl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/brl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/crl;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/crl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/drl;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/drl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/erl;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/erl;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewAttribute(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewAttributeGroup(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewEnumeration(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewFractionDigits(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewLength(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewMaxExclusive(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewMaxInclusive(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewMaxLength(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewMinExclusive(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewMinInclusive(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewMinLength(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewPattern(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewTotalDigits(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertNewWhiteSpace(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetAll()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetAnyAttribute()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetChoice()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetGroup()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetSequence()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSetSimpleType()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAttribute(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAttributeGroup(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeEnumeration(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeFractionDigits(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeLength(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMaxExclusive(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMaxInclusive(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMaxLength(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMinExclusive(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMinInclusive(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMinLength(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePattern(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeTotalDigits(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeWhiteSpace(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAll(Lorg/apache/xmlbeans/impl/xb/xsdschema/All;)V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setAnyAttribute(Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;)V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setAttributeArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setAttributeArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setAttributeGroupArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setAttributeGroupArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupRef;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setBase(Ljavax/xml/namespace/QName;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x14

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    :cond_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setQNameValue(Ljavax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setChoice(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;)V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setEnumerationArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setEnumerationArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setFractionDigitsArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setFractionDigitsArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setGroup(Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupRef;)V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setLengthArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setLengthArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setMaxExclusiveArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setMaxExclusiveArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setMaxInclusiveArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setMaxInclusiveArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setMaxLengthArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setMaxLengthArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setMinExclusiveArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setMinExclusiveArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setMinInclusiveArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setMinInclusiveArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setMinLengthArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setMinLengthArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setPatternArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setPatternArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/PatternDocument$Pattern;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setSequence(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;)V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;)V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setTotalDigitsArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setTotalDigitsArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/TotalDigitsDocument$TotalDigits;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setWhiteSpaceArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setWhiteSpaceArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/WhiteSpaceDocument$WhiteSpace;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public sizeOfAttributeArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfAttributeGroupArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfEnumerationArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfFractionDigitsArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfLengthArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfMaxExclusiveArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfMaxInclusiveArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfMaxLengthArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfMinExclusiveArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfMinInclusiveArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfMinLengthArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfPatternArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfTotalDigitsArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOfWhiteSpaceArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetAll()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetAnyAttribute()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetChoice()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetGroup()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetSequence()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetSimpleType()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetBase()Lorg/apache/xmlbeans/XmlQName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlQName;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xsetBase(Lorg/apache/xmlbeans/XmlQName;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/16 v3, 0x14

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    aget-object v1, v2, v3

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

    :cond_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
