.class public Lcom/sun/xml/internal/stream/StaxXMLInputSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fEventReader:Ljavax/xml/stream/XMLEventReader;

.field fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

.field fStreamReader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->fEventReader:Ljavax/xml/stream/XMLEventReader;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    return-void
.end method


# virtual methods
.method public getXMLEventReader()Ljavax/xml/stream/XMLEventReader;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->fEventReader:Ljavax/xml/stream/XMLEventReader;

    return-object p0
.end method

.method public getXMLInputSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    return-object p0
.end method

.method public getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    return-object p0
.end method

.method public hasXMLStreamOrXMLEventReader()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->fEventReader:Ljavax/xml/stream/XMLEventReader;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
