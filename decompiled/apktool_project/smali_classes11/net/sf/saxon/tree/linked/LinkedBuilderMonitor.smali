.class public Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;
.super Lnet/sf/saxon/event/BuilderMonitor;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

.field public f:I

.field public g:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/BuilderMonitor;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->e:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyReceiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->e:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentLeafNode()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->g:Lnet/sf/saxon/om/NodeInfo;

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyReceiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->e:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentLeafNode()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->g:Lnet/sf/saxon/om/NodeInfo;

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    return-void
.end method

.method public getMarkedNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public markNextNode(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ProxyReceiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->e:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentLeafNode()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->g:Lnet/sf/saxon/om/NodeInfo;

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    return-void
.end method

.method public startDocument(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;->startDocument(I)V

    iget p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->e:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentParentNode()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->g:Lnet/sf/saxon/om/NodeInfo;

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/event/ProxyReceiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->e:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentParentNode()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->g:Lnet/sf/saxon/om/NodeInfo;

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;->f:I

    return-void
.end method
