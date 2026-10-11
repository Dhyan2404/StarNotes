.class public final Lorg/apache/xerces/stax/events/EntityReferenceImpl;
.super Lcom/sunia/HTREnginev2/plo;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/EntityReference;


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljavax/xml/stream/events/EntityDeclaration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;Ljavax/xml/stream/Location;)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    invoke-direct {p0, v0, p3}, Lcom/sunia/HTREnginev2/plo;-><init>(ILjavax/xml/stream/Location;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->g:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->h:Ljavax/xml/stream/events/EntityDeclaration;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/events/EntityDeclaration;Ljavax/xml/stream/Location;)V
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljavax/xml/stream/events/EntityDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xerces/stax/events/EntityReferenceImpl;-><init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;Ljavax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public getDeclaration()Ljavax/xml/stream/events/EntityDeclaration;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->h:Ljavax/xml/stream/events/EntityDeclaration;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->g:Ljava/lang/String;

    return-object p0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/16 v0, 0x26

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iget-object p0, p0, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p0, 0x3b

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
