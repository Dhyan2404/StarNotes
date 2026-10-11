.class public Lnet/sf/saxon/dom/DOMEnvelope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ExternalObjectModel;


# static fields
.field public static final a:Lnet/sf/saxon/dom/DOMEnvelope;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/dom/DOMEnvelope;

    invoke-direct {v0}, Lnet/sf/saxon/dom/DOMEnvelope;-><init>()V

    sput-object v0, Lnet/sf/saxon/dom/DOMEnvelope;->a:Lnet/sf/saxon/dom/DOMEnvelope;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/dom/DOMEnvelope;Ljava/lang/Object;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/DOMEnvelope;->b(Ljava/lang/Object;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lnet/sf/saxon/dom/DOMEnvelope;
    .locals 1

    sget-object v0, Lnet/sf/saxon/dom/DOMEnvelope;->a:Lnet/sf/saxon/dom/DOMEnvelope;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lnet/sf/saxon/om/GroundedValue;
    .locals 4

    instance-of p0, p1, Lorg/w3c/dom/NodeList;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    check-cast p1, Lorg/w3c/dom/NodeList;

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-array v1, p0, [Lnet/sf/saxon/om/NodeInfo;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p0, v1}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>([Lnet/sf/saxon/om/Item;)V

    return-object p0

    :cond_3
    instance-of p0, p1, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    if-eqz p0, :cond_4

    check-cast p1, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public getActiveSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/ActiveSource;
    .locals 0

    instance-of p0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p0, :cond_0

    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentBuilder(Ljavax/xml/transform/Result;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "org.w3c.dom.Document"

    return-object p0
.end method

.method public getIdentifyingURI()Ljava/lang/String;
    .locals 0

    const-string p0, "http://java.sun.com/jaxp/xpath/dom"

    return-object p0
.end method

.method public getJPConverter(Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;
    .locals 0

    const-class p2, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/dom/DOMEnvelope$c;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMEnvelope$c;-><init>(Lnet/sf/saxon/dom/DOMEnvelope;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNodeListCreator(Ljava/lang/Object;)Lnet/sf/saxon/expr/PJConverter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPJConverter(Ljava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/sf/saxon/expr/PJConverter;"
        }
    .end annotation

    const-class v0, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lnet/sf/saxon/dom/DOMEnvelope$a;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMEnvelope$a;-><init>(Lnet/sf/saxon/dom/DOMEnvelope;)V

    return-object p1

    :cond_0
    const-class v0, Lorg/w3c/dom/NodeList;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lnet/sf/saxon/dom/DOMEnvelope$b;

    invoke-direct {p1, p0}, Lnet/sf/saxon/dom/DOMEnvelope$b;-><init>(Lnet/sf/saxon/dom/DOMEnvelope;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isRecognizedNode(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    return p0
.end method

.method public isRecognizedNodeClass(Ljava/lang/Class;)Z
    .locals 0

    const-class p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public unravel(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    instance-of p0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p0, :cond_0

    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
