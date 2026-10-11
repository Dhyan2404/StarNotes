.class public Lnet/sf/saxon/serialize/MessageEmitter;
.super Lnet/sf/saxon/serialize/XMLEmitter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/serialize/XMLEmitter;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/str/UnicodeWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->close()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v0}, Lnet/sf/saxon/str/UnicodeWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->endDocument()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/serialize/MessageEmitter;->suppressProcessingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/serialize/XMLEmitter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_0
    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 3

    const-string v0, "yes"

    invoke-super {p0, p1}, Lnet/sf/saxon/event/SequenceReceiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/lib/Logger;->asWriter()Ljava/io/Writer;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/str/UnicodeWriterToWriter;

    invoke-direct {v1, p1}, Lnet/sf/saxon/str/UnicodeWriterToWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    const-string v1, "method"

    const-string v2, "xml"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "indent"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "omit-xml-declaration"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/Emitter;->setOutputProperties(Ljava/util/Properties;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/UnicodeWriterToWriter;

    invoke-direct {v0, p1}, Lnet/sf/saxon/str/UnicodeWriterToWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    return-void
.end method

.method public suppressProcessingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)Z
    .locals 0

    const-string p0, "error-code"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
