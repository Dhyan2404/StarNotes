.class public final Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;


# instance fields
.field private fLocator:Lorg/xml/sax/Locator;

.field private fLocator2:Lorg/xml/sax/ext/Locator2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCharacterOffset()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/Locator2;->getEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocator()Lorg/xml/sax/Locator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    instance-of v0, p1, Lorg/xml/sax/ext/Locator2;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    check-cast p1, Lorg/xml/sax/ext/Locator2;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    :cond_1
    return-void
.end method
