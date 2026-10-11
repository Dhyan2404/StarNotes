.class public Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/SourceLocator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2c2799f6a21a0750L


# instance fields
.field m_locator:Lorg/xml/sax/Locator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    .line 10
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 11
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 12
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 13
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    .line 4
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 5
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 6
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 15
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 16
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 17
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getColumnNumber()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getLineNumber()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getPublicId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getSystemId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
