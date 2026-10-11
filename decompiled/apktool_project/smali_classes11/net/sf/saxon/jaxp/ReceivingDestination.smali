.class public Lnet/sf/saxon/jaxp/ReceivingDestination;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# instance fields
.field public final f:Lnet/sf/saxon/event/Receiver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/jaxp/ReceivingDestination;->f:Lnet/sf/saxon/event/Receiver;

    return-void
.end method


# virtual methods
.method public acceptsRawOutput()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/jaxp/ReceivingDestination;->f:Lnet/sf/saxon/event/Receiver;

    instance-of v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/event/ReceiverWithOutputProperties;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/event/ReceiverWithOutputProperties;

    invoke-interface {p0}, Lnet/sf/saxon/event/ReceiverWithOutputProperties;->getOutputProperties()Ljava/util/Properties;

    move-result-object p0

    const-string v0, "{http://saxon.sf.net/}require-well-formed"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    return-void
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/ReceivingDestination;->acceptsRawOutput()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/ReceivingDestination;->f:Lnet/sf/saxon/event/Receiver;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/jaxp/ReceivingDestination;->f:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/serialize/SerializationProperties;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/SequenceNormalizer;

    move-result-object p0

    return-object p0
.end method
