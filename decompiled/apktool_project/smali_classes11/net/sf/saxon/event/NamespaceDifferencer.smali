.class public Lnet/sf/saxon/event/NamespaceDifferencer;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Z

.field public final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lnet/sf/saxon/om/NodeName;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/NamespaceDifferencer;->e:Z

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/NamespaceDifferencer;->f:Ljava/util/Stack;

    const-string v0, "undeclare-prefixes"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "yes"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lnet/sf/saxon/event/NamespaceDifferencer;->e:Z

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/om/NamespaceMap;Z)Lnet/sf/saxon/om/NamespaceMap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eq p1, p2, :cond_6

    invoke-static {}, Lnet/sf/saxon/om/NamespaceDeltaMap;->emptyMap()Lnet/sf/saxon/om/NamespaceDeltaMap;

    move-result-object p3

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p3

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lnet/sf/saxon/event/NamespaceDifferencer;->e:Z

    const-string v0, ""

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p3

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceMap;->getDefaultNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceMap;->getDefaultNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p3, v0, v0}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p3

    :cond_5
    return-object p3

    :cond_6
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/NamespaceDifferencer;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyReceiver;->endElement()V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/event/NamespaceDifferencer;->g:Lnet/sf/saxon/om/NodeName;

    iget-object v0, p0, Lnet/sf/saxon/event/NamespaceDifferencer;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NamespaceMap;

    iget-object v1, p0, Lnet/sf/saxon/event/NamespaceDifferencer;->f:Ljava/util/Stack;

    invoke-virtual {v1, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/event/NamespaceDifferencer;->g:Lnet/sf/saxon/om/NodeName;

    const-string v2, ""

    invoke-interface {v1, v2}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, p4, v0, v1}, Lnet/sf/saxon/event/NamespaceDifferencer;->c(Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/om/NamespaceMap;Z)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v6

    iget-object v2, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
