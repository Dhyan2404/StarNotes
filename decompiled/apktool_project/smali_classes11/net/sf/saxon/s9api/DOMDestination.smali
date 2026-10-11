.class public Lnet/sf/saxon/s9api/DOMDestination;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# instance fields
.field public final f:Lnet/sf/saxon/dom/DOMWriter;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    new-instance v0, Lnet/sf/saxon/dom/DOMWriter;

    invoke-direct {v0}, Lnet/sf/saxon/dom/DOMWriter;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/s9api/DOMDestination;->f:Lnet/sf/saxon/dom/DOMWriter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/dom/DOMWriter;->setNode(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
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
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/DOMDestination;->f:Lnet/sf/saxon/dom/DOMWriter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/dom/DOMWriter;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/DOMDestination;->f:Lnet/sf/saxon/dom/DOMWriter;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/serialize/SerializationProperties;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/SequenceNormalizer;

    move-result-object p0

    return-object p0
.end method
