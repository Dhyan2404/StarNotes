.class public abstract Lorg/apache/poi/ooxml/POIXMLRelation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;,
        Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;,
        Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final _defaultName:Ljava/lang/String;

.field private final _relation:Ljava/lang/String;

.field private final _type:Ljava/lang/String;

.field private final noArgConstructor:Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;

.field private final packagePartConstructor:Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;

.field private final parentPartConstructor:Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ooxml/POIXMLRelation;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ooxml/POIXMLRelation;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->_type:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->_relation:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->_defaultName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->noArgConstructor:Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;

    .line 6
    iput-object p5, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->packagePartConstructor:Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;

    .line 7
    iput-object p6, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->parentPartConstructor:Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->_type:Ljava/lang/String;

    return-object p0
.end method

.method public getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lorg/apache/poi/ooxml/POIXMLRelation;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v0, "No part {} found"

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->_defaultName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->_defaultName:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->_defaultName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileNameIndex(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/Integer;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->_defaultName:Ljava/lang/String;

    const-string v0, "#"

    const-string v1, "(\\d+)"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "$1"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getNoArgConstructor()Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->noArgConstructor:Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;

    return-object p0
.end method

.method public getPackagePartConstructor()Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->packagePartConstructor:Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;

    return-object p0
.end method

.method public getParentPartConstructor()Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->parentPartConstructor:Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;

    return-object p0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLRelation;->_relation:Ljava/lang/String;

    return-object p0
.end method
