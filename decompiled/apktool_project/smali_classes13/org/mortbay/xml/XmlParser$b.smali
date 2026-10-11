.class public Lorg/mortbay/xml/XmlParser$b;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/xml/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public e:Lorg/mortbay/xml/XmlParser$a;

.field public f:I

.field public final synthetic g:Lorg/mortbay/xml/XmlParser;


# direct methods
.method public constructor <init>(Lorg/mortbay/xml/XmlParser;Lorg/mortbay/xml/XmlParser$a;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$b;->g:Lorg/mortbay/xml/XmlParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p2, p0, Lorg/mortbay/xml/XmlParser$b;->e:Lorg/mortbay/xml/XmlParser$a;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget p1, p0, Lorg/mortbay/xml/XmlParser$b;->f:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/xml/XmlParser$b;->g:Lorg/mortbay/xml/XmlParser;

    invoke-static {p1}, Lorg/mortbay/xml/XmlParser;->a(Lorg/mortbay/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$b;->e:Lorg/mortbay/xml/XmlParser$a;

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mortbay/xml/XmlParser$b;->f:I

    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget p1, p0, Lorg/mortbay/xml/XmlParser$b;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mortbay/xml/XmlParser$b;->f:I

    return-void
.end method
