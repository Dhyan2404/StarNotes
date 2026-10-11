.class final Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SAXLocation"
.end annotation


# instance fields
.field private columnNumber:I

.field private lineNumber:I

.field private publicId:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;->lineNumber:I

    .line 4
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;->columnNumber:I

    .line 5
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;->publicId:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;->systemId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/xml/sax/Locator;Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;-><init>(Lorg/xml/sax/Locator;)V

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;->columnNumber:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;->lineNumber:I

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;->publicId:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;->systemId:Ljava/lang/String;

    return-object p0
.end method
