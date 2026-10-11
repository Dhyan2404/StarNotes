.class public Lnet/sf/saxon/event/Valve;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Z

.field public final f:Ljava/lang/String;

.field public final g:Lnet/sf/saxon/event/Receiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/sf/saxon/event/Valve;->e:Z

    iput-object p1, p0, Lnet/sf/saxon/event/Valve;->f:Ljava/lang/String;

    iput-object p3, p0, Lnet/sf/saxon/event/Valve;->g:Lnet/sf/saxon/event/Receiver;

    return-void
.end method


# virtual methods
.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/event/Valve;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/Valve;->e:Z

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/event/Valve;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/Valve;->g:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    iget-object v0, p0, Lnet/sf/saxon/event/Valve;->g:Lnet/sf/saxon/event/Receiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lnet/sf/saxon/event/Valve;->g:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ProxyReceiver;->setUnderlyingReceiver(Lnet/sf/saxon/event/Receiver;)V

    :cond_0
    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/event/ProxyReceiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public wasDiverted()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/event/Valve;->g:Lnet/sf/saxon/event/Receiver;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
