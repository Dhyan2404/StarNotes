.class public Lcom/sun/org/apache/xerces/internal/util/LocatorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;


# instance fields
.field private final locator:Lorg/xml/sax/Locator;


# direct methods
.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorWrapper;->locator:Lorg/xml/sax/Locator;

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

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/LocatorWrapper;->locator:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
