.class public abstract Lcom/sun/xml/internal/stream/events/DummyEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/XMLEvent;


# instance fields
.field private fEventType:I

.field protected fLocation:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    .line 5
    iput p1, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    return-void
.end method


# virtual methods
.method public asCharacters()Ljavax/xml/stream/events/Characters;
    .locals 0

    check-cast p0, Ljavax/xml/stream/events/Characters;

    return-object p0
.end method

.method public asEndElement()Ljavax/xml/stream/events/EndElement;
    .locals 0

    check-cast p0, Ljavax/xml/stream/events/EndElement;

    return-object p0
.end method

.method public asStartElement()Ljavax/xml/stream/events/StartElement;
    .locals 0

    check-cast p0, Ljavax/xml/stream/events/StartElement;

    return-object p0
.end method

.method public getEventType()I
    .locals 0

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    return p0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    return-object p0
.end method

.method public getSchemaType()Ljavax/xml/namespace/QName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAttribute()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCharacterData()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCharacters()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEndDocument()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEndElement()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEntityReference()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNamespace()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProcessingInstruction()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStartDocument()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStartElement()Z
    .locals 1

    iget p0, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fEventType:I

    return-void
.end method

.method setLocation(Ljavax/xml/stream/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    return-void
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method
