.class public Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;
.super Lnet/sf/saxon/event/BuilderMonitor;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/tree/tiny/TinyBuilder;

.field public f:I

.field public g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyBuilder;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/BuilderMonitor;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->g:I

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->h:I

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->i:I

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->e:Lnet/sf/saxon/tree/tiny/TinyBuilder;

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->e:Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNumberOfNodes()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->g:I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyReceiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->e:Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNumberOfNodes()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->g:I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyReceiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public getMarkedNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->e:Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object v0

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->g:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public markNextNode(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->e:Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNumberOfNodes()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->g:I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ProxyReceiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public startDocument(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->e:Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNumberOfNodes()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->g:I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    invoke-super {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;->startDocument(I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->e:Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNumberOfNodes()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->g:I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;->f:I

    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/event/ProxyReceiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
