.class public Lnet/sf/saxon/pull/ActiveStAXSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ActiveSource;


# instance fields
.field public e:Ljavax/xml/transform/stax/StAXSource;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/stax/StAXSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pull/ActiveStAXSource;->e:Ljavax/xml/transform/stax/StAXSource;

    return-void
.end method

.method public static fromStAXSource(Ljavax/xml/transform/stax/StAXSource;)Lnet/sf/saxon/pull/ActiveStAXSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/pull/ActiveStAXSource;

    invoke-direct {v0, p0}, Lnet/sf/saxon/pull/ActiveStAXSource;-><init>(Ljavax/xml/transform/stax/StAXSource;)V

    return-object v0

    :cond_0
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Saxon can only handle a StAXSource that wraps an XMLStreamReader"

    invoke-direct {p0, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pull/ActiveStAXSource;->e:Ljavax/xml/transform/stax/StAXSource;

    invoke-virtual {p0}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lnet/sf/saxon/pull/StaxBridge;

    invoke-direct {v0}, Lnet/sf/saxon/pull/StaxBridge;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/pull/StaxBridge;->setXMLStreamReader(Ljavax/xml/stream/XMLStreamReader;)V

    new-instance p0, Lnet/sf/saxon/pull/PullSource;

    invoke-direct {p0, v0}, Lnet/sf/saxon/pull/PullSource;-><init>(Lnet/sf/saxon/pull/PullProvider;)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pull/PullSource;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Saxon can only handle a StAXSource that wraps an XMLStreamReader"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/ActiveStAXSource;->e:Ljavax/xml/transform/stax/StAXSource;

    invoke-virtual {p0}, Ljavax/xml/transform/stax/StAXSource;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/ActiveStAXSource;->e:Ljavax/xml/transform/stax/StAXSource;

    invoke-virtual {p0, p1}, Ljavax/xml/transform/stax/StAXSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method
