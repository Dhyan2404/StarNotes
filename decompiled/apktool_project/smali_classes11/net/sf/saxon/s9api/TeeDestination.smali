.class public Lnet/sf/saxon/s9api/TeeDestination;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# instance fields
.field public final f:Lnet/sf/saxon/s9api/Destination;

.field public final g:Lnet/sf/saxon/s9api/Destination;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Destination;Lnet/sf/saxon/s9api/Destination;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/TeeDestination;->f:Lnet/sf/saxon/s9api/Destination;

    iput-object p2, p0, Lnet/sf/saxon/s9api/TeeDestination;->g:Lnet/sf/saxon/s9api/Destination;

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

    iget-object v0, p0, Lnet/sf/saxon/s9api/TeeDestination;->f:Lnet/sf/saxon/s9api/Destination;

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Destination;->close()V

    iget-object p0, p0, Lnet/sf/saxon/s9api/TeeDestination;->g:Lnet/sf/saxon/s9api/Destination;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Destination;->close()V

    return-void
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/event/TeeOutputter;

    iget-object v1, p0, Lnet/sf/saxon/s9api/TeeDestination;->f:Lnet/sf/saxon/s9api/Destination;

    invoke-interface {v1, p1, p2}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/s9api/TeeDestination;->g:Lnet/sf/saxon/s9api/Destination;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/event/TeeOutputter;-><init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Receiver;)V

    return-object v0
.end method
