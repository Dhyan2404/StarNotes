.class public Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;
.super Lorg/apache/xerces/impl/dv/DTDDVFactory;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-static {}, Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dv/DTDDVFactory;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->b:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/impl/dv/dtd/StringDatatypeValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/dtd/StringDatatypeValidator;-><init>()V

    const-string v2, "string"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/dv/dtd/IDDatatypeValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/dtd/IDDatatypeValidator;-><init>()V

    const-string v2, "ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/dv/dtd/IDREFDatatypeValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/dtd/IDREFDatatypeValidator;-><init>()V

    const-string v2, "IDREF"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v1}, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lorg/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string v1, "IDREFS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/dv/dtd/ENTITYDatatypeValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/dtd/ENTITYDatatypeValidator;-><init>()V

    new-instance v2, Lorg/apache/xerces/impl/dv/dtd/ENTITYDatatypeValidator;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/dtd/ENTITYDatatypeValidator;-><init>()V

    const-string v3, "ENTITY"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v1}, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lorg/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string v1, "ENTITIES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/dv/dtd/NOTATIONDatatypeValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/dtd/NOTATIONDatatypeValidator;-><init>()V

    const-string v2, "NOTATION"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xerces/impl/dv/dtd/NMTOKENDatatypeValidator;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/dtd/NMTOKENDatatypeValidator;-><init>()V

    const-string v2, "NMTOKEN"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v2, v1}, Lorg/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lorg/apache/xerces/impl/dv/DatatypeValidator;)V

    const-string v1, "NMTOKENS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/dv/DatatypeValidator;

    return-object p0
.end method

.method public getBuiltInTypes()Ljava/util/Hashtable;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;->b:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    return-object p0
.end method
