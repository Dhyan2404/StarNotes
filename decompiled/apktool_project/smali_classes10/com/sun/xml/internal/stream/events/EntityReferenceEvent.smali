.class public Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;
.super Lcom/sun/xml/internal/stream/events/DummyEvent;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/EntityReference;


# instance fields
.field private fEntityDeclaration:Ljavax/xml/stream/events/EntityDeclaration;

.field private fEntityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;->init()V

    .line 5
    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;->fEntityName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;->fEntityDeclaration:Ljavax/xml/stream/events/EntityDeclaration;

    return-void
.end method


# virtual methods
.method public getDeclaration()Ljavax/xml/stream/events/EntityDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;->fEntityDeclaration:Ljavax/xml/stream/events/EntityDeclaration;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;->fEntityName:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setEventType(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;->fEntityDeclaration:Ljavax/xml/stream/events/EntityDeclaration;

    invoke-interface {v0}, Ljavax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";=\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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
