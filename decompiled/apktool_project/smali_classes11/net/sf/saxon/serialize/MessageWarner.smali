.class public Lnet/sf/saxon/serialize/MessageWarner;
.super Lnet/sf/saxon/serialize/XMLEmitter;
.source "SourceFile"


# instance fields
.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/serialize/XMLEmitter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/MessageWarner;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/serialize/MessageWarner;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trans/XmlProcessingIncident;

    iget-object v2, p0, Lnet/sf/saxon/serialize/MessageWarner;->s:Ljava/io/StringWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/serialize/MessageWarner;->r:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "XTMM9000"

    :cond_0
    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lnet/sf/saxon/serialize/MessageWarner;->q:Z

    if-nez p0, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object v1

    :cond_1
    invoke-interface {v0, v1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "error-code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/MessageWarner;->r:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/serialize/XMLEmitter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public startDocument(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/serialize/MessageWarner;->s:Ljava/io/StringWriter;

    new-instance v0, Lnet/sf/saxon/str/UnicodeWriterToWriter;

    iget-object v1, p0, Lnet/sf/saxon/serialize/MessageWarner;->s:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeWriterToWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/MessageWarner;->q:Z

    invoke-super {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->startDocument(I)V

    return-void
.end method
