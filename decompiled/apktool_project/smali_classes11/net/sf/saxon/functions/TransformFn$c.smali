.class public Lnet/sf/saxon/functions/TransformFn$c;
.super Lnet/sf/saxon/functions/TransformFn$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/TransformFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lnet/sf/saxon/s9api/XdmDestination;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sf/saxon/functions/TransformFn$b;-><init>(Lnet/sf/saxon/functions/TransformFn$a;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/functions/TransformFn$c;->g:Ljava/util/Map;

    new-instance v0, Lnet/sf/saxon/s9api/XdmDestination;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/XdmDestination;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/functions/TransformFn$c;->h:Lnet/sf/saxon/s9api/XdmDestination;

    return-void
.end method

.method public static synthetic l(Lnet/sf/saxon/functions/TransformFn$c;Lnet/sf/saxon/s9api/XdmDestination;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/functions/TransformFn$c;->m(Lnet/sf/saxon/s9api/XdmDestination;Ljava/net/URI;)V

    return-void
.end method

.method private synthetic m(Lnet/sf/saxon/s9api/XdmDestination;Ljava/net/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmDestination;->getXdmNode()Lnet/sf/saxon/s9api/XdmNode;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingValue()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/functions/TransformFn$b;->g(Ljava/lang/String;Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/functions/TransformFn$c;->g:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method


# virtual methods
.method public b(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/s9api/Destination;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/TransformFn$c;->h:Lnet/sf/saxon/s9api/XdmDestination;

    return-object p0
.end method

.method public c()Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/TransformFn$c;->h:Lnet/sf/saxon/s9api/XdmDestination;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XdmDestination;->getXdmNode()Lnet/sf/saxon/s9api/XdmNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/functions/TransformFn$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/functions/TransformFn$b;->g(Ljava/lang/String;Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public f(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 3

    iget-object p0, p0, Lnet/sf/saxon/functions/TransformFn$c;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v2, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public resolve(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/functions/TransformFn$b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    new-instance p3, Lnet/sf/saxon/s9api/XdmDestination;

    invoke-direct {p3}, Lnet/sf/saxon/s9api/XdmDestination;-><init>()V

    invoke-virtual {p3, p2}, Lnet/sf/saxon/s9api/AbstractDestination;->setDestinationBaseURI(Ljava/net/URI;)V

    new-instance v0, Lcom/sunia/HTREnginev2/pln;

    invoke-direct {v0, p0, p3, p2}, Lcom/sunia/HTREnginev2/pln;-><init>(Lnet/sf/saxon/functions/TransformFn$c;Lnet/sf/saxon/s9api/XdmDestination;Ljava/net/URI;)V

    invoke-virtual {p3, v0}, Lnet/sf/saxon/s9api/AbstractDestination;->onClose(Lnet/sf/saxon/s9api/Action;)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p3, p0, p4}, Lnet/sf/saxon/s9api/XdmDestination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method
