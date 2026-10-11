.class public Lorg/apache/xerces/stax/events/AttributeImpl;
.super Lcom/sunia/HTREnginev2/plo;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/Attribute;


# instance fields
.field public final g:Z

.field public final h:Ljavax/xml/namespace/QName;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p6}, Lcom/sunia/HTREnginev2/plo;-><init>(ILjavax/xml/stream/Location;)V

    iput-object p2, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->h:Ljavax/xml/namespace/QName;

    iput-object p3, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->i:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->j:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->g:Z

    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V
    .locals 7

    .line 2
    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/xerces/stax/events/AttributeImpl;-><init>(ILjavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public final getDTDType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->h:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final isSpecified()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->g:Z

    return p0
.end method

.method public final writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->h:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->h:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/xerces/stax/events/AttributeImpl;->i:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p0, 0x22

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
