.class public Lcom/sunia/HTREnginev2/zmj;
.super Lnet/sf/saxon/event/SequenceWriter;
.source "SourceFile"


# instance fields
.field public final h:Lnet/sf/saxon/s9api/MessageListener2;

.field public i:Z

.field public j:Lnet/sf/saxon/s9api/Location;

.field public k:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/MessageListener2;Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/SequenceWriter;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    sget-object p2, Lnet/sf/saxon/om/TreeModel;->LINKED_TREE:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/SequenceWriter;->setTreeModel(Lnet/sf/saxon/om/TreeModel;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zmj;->h:Lnet/sf/saxon/s9api/MessageListener2;

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

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zmj;->j:Lnet/sf/saxon/s9api/Location;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zmj;->j:Lnet/sf/saxon/s9api/Location;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceWriter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zmj;->j:Lnet/sf/saxon/s9api/Location;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zmj;->j:Lnet/sf/saxon/s9api/Location;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceWriter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public d()Lnet/sf/saxon/s9api/MessageListener2;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zmj;->h:Lnet/sf/saxon/s9api/MessageListener2;

    return-object p0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "error-code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zmj;->k:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zmj;->k:Lnet/sf/saxon/om/StructuredQName;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/SequenceWriter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public startDocument(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/zmj;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zmj;->j:Lnet/sf/saxon/s9api/Location;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zmj;->k:Lnet/sf/saxon/om/StructuredQName;

    invoke-super {p0, p1}, Lnet/sf/saxon/event/SequenceWriter;->startDocument(I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zmj;->j:Lnet/sf/saxon/s9api/Location;

    if-nez v0, :cond_0

    iput-object p5, p0, Lcom/sunia/HTREnginev2/zmj;->j:Lnet/sf/saxon/s9api/Location;

    :cond_0
    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/event/SequenceWriter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public write(Lnet/sf/saxon/om/Item;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zmj;->j:Lnet/sf/saxon/s9api/Location;

    if-nez v0, :cond_0

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/zmj;->h:Lnet/sf/saxon/s9api/MessageListener2;

    new-instance v2, Lnet/sf/saxon/s9api/XdmNode;

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-direct {v2, p1}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    new-instance p1, Lnet/sf/saxon/s9api/QName;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/zmj;->k:Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {p1, v3}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/zmj;->i:Z

    invoke-interface {v1, v2, p1, p0, v0}, Lnet/sf/saxon/s9api/MessageListener2;->message(Lnet/sf/saxon/s9api/XdmNode;Lnet/sf/saxon/s9api/QName;ZLjavax/xml/transform/SourceLocator;)V

    return-void
.end method
