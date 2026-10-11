.class public final Lorg/apache/xerces/util/XMLLocatorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/XMLLocator;


# instance fields
.field public a:Lorg/apache/xerces/xni/XMLLocator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCharacterOffset()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocator()Lorg/apache/xerces/xni/XMLLocator;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getXMLVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setLocator(Lorg/apache/xerces/xni/XMLLocator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/util/XMLLocatorWrapper;->a:Lorg/apache/xerces/xni/XMLLocator;

    return-void
.end method
