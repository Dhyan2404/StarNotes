.class public Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/TypeInfo;


# static fields
.field private static final dtdCache:Ljava/util/Hashtable;

.field private static final dtdNamespaceURI:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"


# instance fields
.field private final typeName:Ljava/lang/String;

.field private final typeNamespace:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;->dtdCache:Ljava/util/Hashtable;

    const-string v1, "CDATA"

    const-string v2, "ID"

    const-string v3, "IDREF"

    const-string v4, "IDREFS"

    const-string v5, "NMTOKEN"

    const-string v6, "NMTOKENS"

    const-string v7, "ENTITY"

    const-string v8, "ENTITIES"

    const-string v9, "NOTATION"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;->dtdCache:Ljava/util/Hashtable;

    aget-object v3, v0, v1

    new-instance v4, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;

    const-string v5, "http://www.w3.org/TR/REC-xml"

    invoke-direct {v4, v5, v3}, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;->typeNamespace:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;->typeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V
    .locals 1

    .line 7
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;->typeNamespace:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static getDTDTypeInfo(Ljava/lang/String;)Lorg/w3c/dom/TypeInfo;
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;->dtdCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/TypeInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DTD datatype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/TypeInfoImpl;->typeNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
