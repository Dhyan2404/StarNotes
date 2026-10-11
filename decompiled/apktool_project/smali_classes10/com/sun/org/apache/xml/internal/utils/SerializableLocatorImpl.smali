.class public Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/Locator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x24eb547a233d4684L


# instance fields
.field private columnNumber:I

.field private lineNumber:I

.field private publicId:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->setLineNumber(I)V

    .line 6
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->setColumnNumber(I)V

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->columnNumber:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->lineNumber:I

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->publicId:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->systemId:Ljava/lang/String;

    return-object p0
.end method

.method public setColumnNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->columnNumber:I

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->lineNumber:I

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/SerializableLocatorImpl;->systemId:Ljava/lang/String;

    return-void
.end method
