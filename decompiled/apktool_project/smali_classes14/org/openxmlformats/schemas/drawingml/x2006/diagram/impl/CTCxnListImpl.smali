.class public Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxnList;


# static fields
.field private static final PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/diagram"

    const-string v3, "cxn"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method


# virtual methods
.method public addNewCxn()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCxnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;
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

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;

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

.method public getCxnArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-array v1, v1, [Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, [Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;

    return-object p0
.end method

.method public getCxnList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v7, Lorg/apache/xmlbeans/impl/values/JavaListXmlObject;

    new-instance v2, Lcom/sunia/HTREnginev2/t43;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/t43;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;)V

    new-instance v3, Lcom/sunia/HTREnginev2/u43;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/u43;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;)V

    new-instance v4, Lcom/sunia/HTREnginev2/v43;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/v43;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;)V

    new-instance v5, Lcom/sunia/HTREnginev2/w43;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/w43;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;)V

    new-instance v6, Lcom/sunia/HTREnginev2/x43;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/x43;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;)V

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

.method public insertNewCxn(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p0, v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeCxn(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

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

.method public setCxnArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setCxnArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public sizeOfCxnArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/impl/CTCxnListImpl;->PROPERTY_QNAME:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

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
