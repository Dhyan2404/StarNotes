.class public abstract Lnet/sf/saxon/event/SequenceWriter;
.super Lnet/sf/saxon/event/SequenceReceiver;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/om/TreeModel;

.field public f:Lnet/sf/saxon/event/Builder;

.field public g:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/SequenceReceiver;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->e:Lnet/sf/saxon/om/TreeModel;

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

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

    if-eqz p1, :cond_1

    iget v0, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/SequenceWriter;->write(Lnet/sf/saxon/om/Item;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceReceiver;->decompose(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/event/SequenceWriter;->e:Lnet/sf/saxon/om/TreeModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getModel()Lnet/sf/saxon/om/TreeModel;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/TreeModel;->isMutable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-direct {p1, v0}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/lib/ParseOptions;->getModel()Lnet/sf/saxon/om/TreeModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/event/Builder;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iget-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/event/Builder;->setBaseURI(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/event/Builder;->setTiming(Z)V

    iget-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/event/Builder;->setUseEventLocation(Z)V

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->open()V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    if-nez v0, :cond_0

    new-instance p2, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p3

    invoke-direct {p2, p3}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/SequenceWriter;->write(Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->close()V

    :cond_0
    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    if-nez v0, :cond_0

    new-instance p2, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p3

    invoke-direct {p2, p3}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/SequenceWriter;->write(Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/high16 v2, 0x80000

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/event/SequenceWriter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    iput-object v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public endElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    iget v0, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->close()V

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/high16 v2, 0x80000

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/event/SequenceWriter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    iput-object v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public getTreeModel()Lnet/sf/saxon/om/TreeModel;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceWriter;->e:Lnet/sf/saxon/om/TreeModel;

    return-object p0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    if-nez v0, :cond_0

    new-instance p3, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p4

    invoke-direct {p3, p4}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    new-instance p4, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {p4, p1}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lnet/sf/saxon/tree/util/Orphan;->setNodeName(Lnet/sf/saxon/om/NodeName;)V

    const/4 p1, 0x7

    invoke-virtual {p3, p1}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p3, p1}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {p0, p3}, Lnet/sf/saxon/event/SequenceWriter;->write(Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public setTreeModel(Lnet/sf/saxon/om/TreeModel;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceWriter;->e:Lnet/sf/saxon/om/TreeModel;

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    if-nez v0, :cond_0

    const v0, 0x8000

    invoke-static {p1, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/SequenceWriter;->c(Z)V

    :cond_0
    iget v0, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    invoke-interface {p0, p1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    :cond_1
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    if-nez v0, :cond_0

    const v0, 0x8000

    invoke-static {p6, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/SequenceWriter;->c(Z)V

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget p1, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/event/SequenceWriter;->g:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceWriter;->f:Lnet/sf/saxon/event/Builder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->usesTypeAnnotations()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract write(Lnet/sf/saxon/om/Item;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
