.class public final Lorg/apache/xerces/stax/events/NotationDeclarationImpl;
.super Lcom/sunia/HTREnginev2/plo;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/NotationDeclaration;


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p4}, Lcom/sunia/HTREnginev2/plo;-><init>(ILjavax/xml/stream/Location;)V

    iput-object p1, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->i:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->h:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->g:Ljava/lang/String;

    return-object p0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    const-string v0, "<!NOTATION "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->h:Ljava/lang/String;

    const/16 v1, 0x22

    if-eqz v0, :cond_0

    const-string v0, "PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_0
    const-string v0, "SYSTEM \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->i:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p0, 0x3e

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
