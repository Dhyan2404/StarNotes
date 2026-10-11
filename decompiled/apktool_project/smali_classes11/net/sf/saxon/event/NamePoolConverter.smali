.class public Lnet/sf/saxon/event/NamePoolConverter;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/om/NamePool;

.field public f:Lnet/sf/saxon/om/NamePool;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/om/NamePool;Lnet/sf/saxon/om/NamePool;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p2, p0, Lnet/sf/saxon/event/NamePoolConverter;->e:Lnet/sf/saxon/om/NamePool;

    iput-object p3, p0, Lnet/sf/saxon/event/NamePoolConverter;->f:Lnet/sf/saxon/om/NamePool;

    return-void
.end method


# virtual methods
.method public final c(Lnet/sf/saxon/type/SchemaType;)V
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p0

    const p1, 0xffc00

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot convert a user-typed node to a different name pool"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/NamePoolConverter;->c(Lnet/sf/saxon/type/SchemaType;)V

    iget-object v1, v0, Lnet/sf/saxon/event/NamePoolConverter;->f:Lnet/sf/saxon/om/NamePool;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lnet/sf/saxon/om/CodedName;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnet/sf/saxon/event/NamePoolConverter;->f:Lnet/sf/saxon/om/NamePool;

    invoke-direct {v3, v1, v4, v5}, Lnet/sf/saxon/om/CodedName;-><init>(ILjava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/event/NamePoolConverter;->c(Lnet/sf/saxon/type/SchemaType;)V

    iget-object v6, v0, Lnet/sf/saxon/event/NamePoolConverter;->f:Lnet/sf/saxon/om/NamePool;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v7

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v8

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v8, Lnet/sf/saxon/om/CodedName;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v7

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lnet/sf/saxon/event/NamePoolConverter;->f:Lnet/sf/saxon/om/NamePool;

    invoke-direct {v8, v6, v7, v9}, Lnet/sf/saxon/om/CodedName;-><init>(ILjava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    new-instance v6, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v9

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v11

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v5, v6}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v1, v3

    move-object v2, p2

    move-object v3, v5

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
