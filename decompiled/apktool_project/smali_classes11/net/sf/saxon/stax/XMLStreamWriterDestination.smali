.class public Lnet/sf/saxon/stax/XMLStreamWriterDestination;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# instance fields
.field public final f:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/stax/XMLStreamWriterDestination;->f:Ljavax/xml/stream/XMLStreamWriter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/stax/XMLStreamWriterDestination;->f:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    new-instance p2, Lnet/sf/saxon/stax/ReceiverToXMLStreamWriter;

    iget-object p0, p0, Lnet/sf/saxon/stax/XMLStreamWriterDestination;->f:Ljavax/xml/stream/XMLStreamWriter;

    invoke-direct {p2, p0}, Lnet/sf/saxon/stax/ReceiverToXMLStreamWriter;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    invoke-interface {p2, p1}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-object p2
.end method

.method public getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/stax/XMLStreamWriterDestination;->f:Ljavax/xml/stream/XMLStreamWriter;

    return-object p0
.end method
