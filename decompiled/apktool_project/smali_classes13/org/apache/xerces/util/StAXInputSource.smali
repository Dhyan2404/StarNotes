.class public final Lorg/apache/xerces/util/StAXInputSource;
.super Lorg/apache/xerces/xni/parser/XMLInputSource;
.source "SourceFile"


# instance fields
.field public final a:Ljavax/xml/stream/XMLStreamReader;

.field public final b:Ljavax/xml/stream/XMLEventReader;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/util/StAXInputSource;-><init>(Ljavax/xml/stream/XMLEventReader;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;Z)V
    .locals 2

    .line 2
    invoke-static {p1}, Lorg/apache/xerces/util/StAXInputSource;->a(Ljavax/xml/stream/XMLEventReader;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object v1, p0, Lorg/apache/xerces/util/StAXInputSource;->a:Ljavax/xml/stream/XMLStreamReader;

    iput-object p1, p0, Lorg/apache/xerces/util/StAXInputSource;->b:Ljavax/xml/stream/XMLEventReader;

    iput-boolean p2, p0, Lorg/apache/xerces/util/StAXInputSource;->c:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XMLEventReader parameter cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/util/StAXInputSource;-><init>(Ljavax/xml/stream/XMLStreamReader;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Z)V
    .locals 2

    .line 4
    invoke-static {p1}, Lorg/apache/xerces/util/StAXInputSource;->b(Ljavax/xml/stream/XMLStreamReader;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xerces/util/StAXInputSource;->a:Ljavax/xml/stream/XMLStreamReader;

    iput-object v1, p0, Lorg/apache/xerces/util/StAXInputSource;->b:Ljavax/xml/stream/XMLEventReader;

    iput-boolean p2, p0, Lorg/apache/xerces/util/StAXInputSource;->c:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XMLStreamReader parameter cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljavax/xml/stream/XMLEventReader;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljavax/xml/stream/XMLStreamReader;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getXMLEventReader()Ljavax/xml/stream/XMLEventReader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/StAXInputSource;->b:Ljavax/xml/stream/XMLEventReader;

    return-object p0
.end method

.method public getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/StAXInputSource;->a:Ljavax/xml/stream/XMLStreamReader;

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot set the system ID on a StAXInputSource"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shouldConsumeRemainingContent()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/util/StAXInputSource;->c:Z

    return p0
.end method
