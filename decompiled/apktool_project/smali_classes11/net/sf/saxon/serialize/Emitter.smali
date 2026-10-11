.class public abstract Lnet/sf/saxon/serialize/Emitter;
.super Lnet/sf/saxon/event/SequenceReceiver;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/ReceiverWithOutputProperties;


# instance fields
.field protected allCharactersEncodable:Z

.field protected characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

.field public e:Z

.field protected outputProperties:Ljava/util/Properties;

.field protected writer:Lnet/sf/saxon/str/UnicodeWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/SequenceReceiver;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/Emitter;->allCharactersEncodable:Z

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/Emitter;->e:Z

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceReceiver;->decompose(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/Emitter;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/str/UnicodeWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Failed to close output stream"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    return-object p0
.end method

.method public setMustClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/Emitter;->e:Z

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getCharacterSetFactory()Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;->getCharacterSet(Ljava/util/Properties;)Lnet/sf/saxon/serialize/charcode/CharacterSet;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    instance-of v1, v0, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;

    if-nez v1, :cond_1

    instance-of v0, v0, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lnet/sf/saxon/serialize/Emitter;->allCharactersEncodable:Z

    :cond_2
    iput-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    return-void
.end method

.method public setUnicodeWriter(Lnet/sf/saxon/str/UnicodeWriter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
