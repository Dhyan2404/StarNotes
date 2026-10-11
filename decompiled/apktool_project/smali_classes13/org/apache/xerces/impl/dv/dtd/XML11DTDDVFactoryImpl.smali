.class public Lorg/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;
.super Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->c:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;-><init>()V

    const-string v2, "XML11ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/dv/dtd/XML11IDREFDatatypeValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/dtd/XML11IDREFDatatypeValidator;-><init>()V

    const-string v2, "XML11IDREF"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v1}, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lorg/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string v1, "XML11IDREFS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/dv/dtd/XML11NMTOKENDatatypeValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/dtd/XML11NMTOKENDatatypeValidator;-><init>()V

    const-string v2, "XML11NMTOKEN"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v1}, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lorg/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string v1, "XML11NMTOKENS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;
    .locals 1

    sget-object p0, Lorg/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->c:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/dv/DatatypeValidator;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->b:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method public getBuiltInTypes()Ljava/util/Hashtable;
    .locals 3

    sget-object p0, Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    sget-object v0, Lorg/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
