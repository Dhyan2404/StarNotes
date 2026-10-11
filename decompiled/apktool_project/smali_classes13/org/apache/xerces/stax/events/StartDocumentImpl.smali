.class public final Lorg/apache/xerces/stax/events/StartDocumentImpl;
.super Lcom/sunia/HTREnginev2/plo;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/StartDocument;


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLjava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p6}, Lcom/sunia/HTREnginev2/plo;-><init>(ILjavax/xml/stream/Location;)V

    iput-object p1, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->g:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->h:Z

    iput-boolean p3, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->j:Z

    iput-boolean p4, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->k:Z

    iput-object p5, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodingSet()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->h:Z

    return p0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/plo;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->i:Ljava/lang/String;

    return-object p0
.end method

.method public isStandalone()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->j:Z

    return p0
.end method

.method public standaloneSet()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->k:Z

    return p0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    const-string v0, "<?xml version=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "1.0"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0}, Lorg/apache/xerces/stax/events/StartDocumentImpl;->encodingSet()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " encoding=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/stax/events/StartDocumentImpl;->standaloneSet()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " standalone=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean p0, p0, Lorg/apache/xerces/stax/events/StartDocumentImpl;->j:Z

    if-eqz p0, :cond_2

    const-string p0, "yes"

    goto :goto_1

    :cond_2
    const-string p0, "no"

    :goto_1
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_3
    const-string p0, "?>"

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
