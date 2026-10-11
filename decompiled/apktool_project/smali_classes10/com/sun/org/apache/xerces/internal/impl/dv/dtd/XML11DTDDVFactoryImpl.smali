.class public Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/DTDDVFactoryImpl;
.source "SourceFile"


# static fields
.field static fXML11BuiltInTypes:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11IDDatatypeValidator;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11IDDatatypeValidator;-><init>()V

    const-string v2, "XML11ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11IDREFDatatypeValidator;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11IDREFDatatypeValidator;-><init>()V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string v2, "XML11IDREF"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/ListDatatypeValidator;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;)V

    const-string v0, "XML11IDREFS"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11NMTOKENDatatypeValidator;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11NMTOKENDatatypeValidator;-><init>()V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string v2, "XML11NMTOKEN"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/ListDatatypeValidator;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;)V

    const-string v0, "XML11NMTOKENS"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/DTDDVFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    return-object p0
.end method

.method public getBuiltInTypes()Ljava/util/Hashtable;
    .locals 3

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method
