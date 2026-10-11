.class public Lnet/sf/saxon/dom/ActiveDOMSource;
.super Ljavax/xml/transform/dom/DOMSource;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ActiveSource;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/dom/DOMSource;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    .line 4
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/dom/DOMObjectModel;->sendDOMSource(Ljavax/xml/transform/dom/DOMSource;Lnet/sf/saxon/event/Receiver;)V

    return-void
.end method
