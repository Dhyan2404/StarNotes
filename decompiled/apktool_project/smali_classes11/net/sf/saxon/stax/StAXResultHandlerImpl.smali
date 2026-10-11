.class public Lnet/sf/saxon/stax/StAXResultHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/StAXResultHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiver(Ljavax/xml/transform/Result;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    check-cast p1, Ljavax/xml/transform/stax/StAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/stax/ReceiverToXMLStreamWriter;

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/stax/ReceiverToXMLStreamWriter;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXResult;->getXMLEventWriter()Ljavax/xml/stream/XMLEventWriter;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "XMLEventWriter is currently not supported as a Saxon output destination"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "StAXResult contains neither an XMLStreamWriter nor XMLEventWriter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
