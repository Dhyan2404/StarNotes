.class public Lnet/sf/saxon/s9api/RawDestination;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# instance fields
.field public f:Lnet/sf/saxon/event/SequenceCollector;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/s9api/RawDestination;->g:Z

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/s9api/RawDestination;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/RawDestination;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/s9api/RawDestination;->g:Z

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
    iget-object v0, p0, Lnet/sf/saxon/s9api/RawDestination;->f:Lnet/sf/saxon/event/SequenceCollector;

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceWriter;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/s9api/RawDestination;->g:Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    new-instance p2, Lnet/sf/saxon/event/SequenceCollector;

    invoke-direct {p2, p1}, Lnet/sf/saxon/event/SequenceCollector;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object p2, p0, Lnet/sf/saxon/s9api/RawDestination;->f:Lnet/sf/saxon/event/SequenceCollector;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/RawDestination;->g:Z

    iget-object p1, p0, Lnet/sf/saxon/s9api/AbstractDestination;->helper:Lnet/sf/saxon/s9api/DestinationHelper;

    new-instance p2, Lcom/sunia/HTREnginev2/scl;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/scl;-><init>(Lnet/sf/saxon/s9api/RawDestination;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/s9api/DestinationHelper;->onClose(Lnet/sf/saxon/s9api/Action;)V

    new-instance p1, Lnet/sf/saxon/event/CloseNotifier;

    iget-object p2, p0, Lnet/sf/saxon/s9api/RawDestination;->f:Lnet/sf/saxon/event/SequenceCollector;

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractDestination;->helper:Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/DestinationHelper;->getListeners()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/event/CloseNotifier;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/util/List;)V

    return-object p1
.end method

.method public getXdmValue()Lnet/sf/saxon/s9api/XdmValue;
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/s9api/RawDestination;->g:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/RawDestination;->f:Lnet/sf/saxon/event/SequenceCollector;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceCollector;->getSequence()Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The result sequence has not yet been closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
