.class public Lnet/sf/saxon/s9api/SAXDestination;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# instance fields
.field public final f:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/SAXDestination;->f:Lorg/xml/sax/ContentHandler;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/ContentHandlerProxy;

    invoke-direct {v0}, Lnet/sf/saxon/event/ContentHandlerProxy;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/s9api/SAXDestination;->f:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/event/ContentHandlerProxy;->setUnderlyingContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/ContentHandlerProxy;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/serialize/SerializationProperties;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/SequenceNormalizer;

    move-result-object p0

    return-object p0
.end method
