.class public Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaIdentityConstraint;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _annotation:Lorg/apache/xmlbeans/SchemaAnnotation;

.field private _chameleon:Z

.field private final _container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

.field private volatile _fieldPaths:[Lorg/apache/xmlbeans/impl/xpath/XPath;

.field private _fields:[Ljava/lang/String;

.field private _filename:Ljava/lang/String;

.field private _key:Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

.field private _name:Ljavax/xml/namespace/QName;

.field private _nsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _parse:Lorg/apache/xmlbeans/XmlObject;

.field private _parseTNS:Ljava/lang/String;

.field private _selector:Ljava/lang/String;

.field private volatile _selectorPath:Lorg/apache/xmlbeans/impl/xpath/XPath;

.field private final _selfref:Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

.field private _type:I

.field private _userData:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_nsMap:Ljava/util/Map;

    new-instance v0, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;-><init>(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_selfref:Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-void
.end method


# virtual methods
.method public buildPaths()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_selector:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_nsMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPath;->compileXPath(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_selectorPath:Lorg/apache/xmlbeans/impl/xpath/XPath;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_fields:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/xpath/XPath;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_fields:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_nsMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/impl/xpath/XPath;->compileXPath(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_fieldPaths:[Lorg/apache/xmlbeans/impl/xpath/XPath;

    return-void
.end method

.method public getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_annotation:Lorg/apache/xmlbeans/SchemaAnnotation;

    return-object p0
.end method

.method public getChameleonNamespace()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_chameleon:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_parseTNS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->getRef()Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move-result-object p0

    return-object p0
.end method

.method public getComponentType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getConstraintCategory()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_type:I

    return p0
.end method

.method public getContainer()Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object p0
.end method

.method public getFieldPath(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_fieldPaths:[Lorg/apache/xmlbeans/impl/xpath/XPath;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->buildPaths()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_fieldPaths:[Lorg/apache/xmlbeans/impl/xpath/XPath;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    aget-object p0, v0, p1

    return-object p0
.end method

.method public getFields()[Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_fields:[Ljava/lang/String;

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getNSMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_nsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_name:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getParseObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_parse:Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public getRef()Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_selfref:Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    return-object p0
.end method

.method public getReferencedKey()Lorg/apache/xmlbeans/SchemaIdentityConstraint;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_key:Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;->get()Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object p0

    return-object p0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_selector:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectorPath()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_selectorPath:Lorg/apache/xmlbeans/impl/xpath/XPath;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->buildPaths()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_selectorPath:Lorg/apache/xmlbeans/impl/xpath/XPath;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_filename:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_parseTNS:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p0

    return-object p0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_userData:Ljava/lang/Object;

    return-object p0
.end method

.method public isResolved()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->getConstraintCategory()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_key:Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

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

.method public setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_annotation:Lorg/apache/xmlbeans/SchemaAnnotation;

    return-void
.end method

.method public setConstraintCategory(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_type:I

    return-void
.end method

.method public setFields([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_fields:[Ljava/lang/String;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_filename:Ljava/lang/String;

    return-void
.end method

.method public setNSMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_nsMap:Ljava/util/Map;

    return-void
.end method

.method public setName(Ljavax/xml/namespace/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_name:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_parse:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_parseTNS:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_chameleon:Z

    return-void
.end method

.method public setReferencedKey(Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_key:Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    return-void
.end method

.method public setSelector(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_selector:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->_userData:Ljava/lang/Object;

    return-void
.end method
