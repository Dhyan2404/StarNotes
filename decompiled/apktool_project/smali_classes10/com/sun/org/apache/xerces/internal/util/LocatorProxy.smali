.class public Lcom/sun/org/apache/xerces/internal/util/LocatorProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/Locator2;


# instance fields
.field private final fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorProxy;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorProxy;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorProxy;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorProxy;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorProxy;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorProxy;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorProxy;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getXMLVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
