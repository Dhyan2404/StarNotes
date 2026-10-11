.class public Lnet/sf/saxon/event/TreeReceiver;
.super Lnet/sf/saxon/event/SequenceReceiver;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/event/Receiver;

.field public f:I

.field public g:[Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/SequenceReceiver;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    const/16 v1, 0x14

    new-array v1, v1, [Z

    iput-object v1, p0, Lnet/sf/saxon/event/TreeReceiver;->g:[Z

    iput-object p1, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/TreeReceiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceReceiver;->decompose(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    :cond_0
    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    iget v0, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    return-void
.end method

.method public getNextReceiver()Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    return-object p0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TreeReceiver.open(): no underlying receiver provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    iget-object p0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    :cond_0
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/event/TreeReceiver;->g:[Z

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/TreeReceiver;->g:[Z

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/event/TreeReceiver;->g:[Z

    iget v0, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    aput-boolean v1, p1, v0

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    iget-object p2, p0, Lnet/sf/saxon/event/TreeReceiver;->g:[Z

    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    iget p4, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    if-ge p3, p4, :cond_0

    mul-int/lit8 p4, p4, 0x2

    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/event/TreeReceiver;->g:[Z

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/event/TreeReceiver;->g:[Z

    iget p3, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lnet/sf/saxon/event/TreeReceiver;->f:I

    aput-boolean p1, p2, p3

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/TreeReceiver;->e:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->usesTypeAnnotations()Z

    move-result p0

    return p0
.end method
