.class public Lcom/sun/xml/internal/stream/events/AttributeImpl;
.super Lcom/sun/xml/internal/stream/events/DummyEvent;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/Attribute;


# instance fields
.field private fAttributeType:Ljava/lang/String;

.field private fIsSpecified:Z

.field private fNonNormalizedvalue:Ljava/lang/String;

.field private fQName:Ljavax/xml/namespace/QName;

.field private fValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    const-string v0, "CDATA"

    .line 2
    iput-object v0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    const-string v0, "CDATA"

    .line 5
    iput-object v0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->init()V

    .line 7
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    .line 8
    iput-object p2, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/sun/xml/internal/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/sun/xml/internal/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 11
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sun/xml/internal/stream/events/AttributeImpl;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    const-string v0, "CDATA"

    .line 13
    iput-object v0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->init()V

    .line 15
    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    .line 16
    iput-object p2, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string p1, ""

    .line 17
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 18
    iput-object p4, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 19
    :cond_0
    iput-object p3, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fNonNormalizedvalue:Ljava/lang/String;

    .line 20
    iput-boolean p5, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fIsSpecified:Z

    return-void
.end method


# virtual methods
.method public getDTDType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getNonNormalizedValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fNonNormalizedvalue:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setEventType(I)V

    return-void
.end method

.method public isSpecified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fIsSpecified:Z

    return p0
.end method

.method public setAttributeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljavax/xml/namespace/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public setNonNormalizedValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fNonNormalizedvalue:Ljava/lang/String;

    return-void
.end method

.method public setSpecified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fIsSpecified:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "=\'"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
