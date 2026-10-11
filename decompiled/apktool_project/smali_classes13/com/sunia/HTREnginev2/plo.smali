.class public abstract Lcom/sunia/HTREnginev2/plo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/XMLEvent;


# instance fields
.field public e:I

.field public f:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>(ILjavax/xml/stream/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    if-eqz p2, :cond_0

    new-instance p1, Lorg/apache/xerces/stax/ImmutableLocation;

    invoke-direct {p1, p2}, Lorg/apache/xerces/stax/ImmutableLocation;-><init>(Ljavax/xml/stream/Location;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/xerces/stax/EmptyLocation;->getInstance()Lorg/apache/xerces/stax/EmptyLocation;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sunia/HTREnginev2/plo;->f:Ljavax/xml/stream/Location;

    return-void
.end method


# virtual methods
.method public final asCharacters()Ljavax/xml/stream/events/Characters;
    .locals 0

    check-cast p0, Ljavax/xml/stream/events/Characters;

    return-object p0
.end method

.method public final asEndElement()Ljavax/xml/stream/events/EndElement;
    .locals 0

    check-cast p0, Ljavax/xml/stream/events/EndElement;

    return-object p0
.end method

.method public final asStartElement()Ljavax/xml/stream/events/StartElement;
    .locals 0

    check-cast p0, Ljavax/xml/stream/events/StartElement;

    return-object p0
.end method

.method public final getEventType()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    return p0
.end method

.method public final getLocation()Ljavax/xml/stream/Location;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/plo;->f:Ljavax/xml/stream/Location;

    return-object p0
.end method

.method public final getSchemaType()Ljavax/xml/namespace/QName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAttribute()Z
    .locals 1

    const/16 v0, 0xa

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCharacters()Z
    .locals 1

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    const/4 v0, 0x4

    if-eq v0, p0, :cond_1

    const/16 v0, 0xc

    if-eq v0, p0, :cond_1

    const/4 v0, 0x6

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isEndDocument()Z
    .locals 1

    const/16 v0, 0x8

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEndElement()Z
    .locals 1

    const/4 v0, 0x2

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEntityReference()Z
    .locals 1

    const/16 v0, 0x9

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNamespace()Z
    .locals 1

    const/16 v0, 0xd

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isProcessingInstruction()Z
    .locals 1

    const/4 v0, 0x3

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStartDocument()Z
    .locals 1

    const/4 v0, 0x7

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStartElement()Z
    .locals 1

    iget p0, p0, Lcom/sunia/HTREnginev2/plo;->e:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/plo;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract writeAsEncodedUnicode(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
