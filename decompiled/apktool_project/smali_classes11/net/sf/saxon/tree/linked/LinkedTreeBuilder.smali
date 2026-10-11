.class public Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;
.super Lnet/sf/saxon/event/Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;
    }
.end annotation


# instance fields
.field public f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

.field public g:Lnet/sf/saxon/tree/linked/NodeFactory;

.field public h:[I

.field public i:I

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lnet/sf/saxon/tree/linked/NodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lnet/sf/saxon/event/Builder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const/16 p1, 0x64

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->k:Ljava/util/Stack;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->l:Z

    .line 7
    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->m:I

    .line 8
    sget-object p1, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;->a:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->g:Lnet/sf/saxon/tree/linked/NodeFactory;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;Z)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lnet/sf/saxon/event/Builder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const/16 p1, 0x64

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->k:Ljava/util/Stack;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->l:Z

    .line 15
    iput p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->m:I

    .line 16
    iput-boolean p2, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->n:Z

    .line 17
    sget-object p1, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;->a:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->g:Lnet/sf/saxon/tree/linked/NodeFactory;

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

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object p3, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aget p3, p3, v0

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getNthChild(I)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p2

    instance-of p3, p2, Lnet/sf/saxon/tree/linked/TextImpl;

    if-eqz p3, :cond_0

    check-cast p2, Lnet/sf/saxon/tree/linked/TextImpl;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/tree/linked/TextImpl;->appendStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->g:Lnet/sf/saxon/tree/linked/NodeFactory;

    iget-object p3, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-interface {p2, p3, p1}, Lnet/sf/saxon/tree/linked/NodeFactory;->makeTextNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/tree/linked/TextImpl;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object p3, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget p0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aget v0, p3, p0

    add-int/lit8 v1, v0, 0x1

    aput v1, p3, p0

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->addChild(Lnet/sf/saxon/tree/linked/NodeImpl;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget v2, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->compact(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    invoke-super {p0}, Lnet/sf/saxon/event/Builder;->close()V

    sget-object v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;->a:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->g:Lnet/sf/saxon/tree/linked/NodeFactory;

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p3, Lnet/sf/saxon/tree/linked/CommentImpl;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p3, p1}, Lnet/sf/saxon/tree/linked/CommentImpl;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget p0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aget v1, v0, p0

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, p0

    invoke-virtual {p1, p3, v1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->addChild(Lnet/sf/saxon/tree/linked/NodeImpl;I)V

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p1

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p2

    invoke-virtual {p3, p0, p1, p2}, Lnet/sf/saxon/tree/linked/CommentImpl;->setLocation(Ljava/lang/String;II)V

    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget p0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->compact(I)V

    return-void
.end method

.method public endElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget v2, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->compact(I)V

    iget v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->k:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public getBuilderMonitor()Lnet/sf/saxon/event/BuilderMonitor;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/linked/LinkedBuilderMonitor;-><init>(Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;)V

    return-object v0
.end method

.method public getCurrentLeafNode()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getLastChild()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentParentNode()Lnet/sf/saxon/tree/linked/ParentNodeImpl;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    return-object p0
.end method

.method public getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    instance-of v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->isImaginary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getDocumentElement()Lnet/sf/saxon/tree/linked/ElementImpl;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public graftElement(Lnet/sf/saxon/tree/linked/ElementImpl;)V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget p0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aget v2, v1, p0

    add-int/lit8 v3, v2, 0x1

    aput v3, v1, p0

    invoke-virtual {v0, p1, v2}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->addChild(Lnet/sf/saxon/tree/linked/NodeImpl;I)V

    return-void
.end method

.method public open()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->started:Z

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    aput v0, v1, v0

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/event/Builder;->useEventLocation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    const-class v1, Lnet/sf/saxon/event/CopyInformee;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/PipelineConfiguration;->getComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/event/LocationCopier;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/event/LocationCopier;

    invoke-virtual {v0}, Lnet/sf/saxon/event/LocationCopier;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0}, Lnet/sf/saxon/event/Builder;->open()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2

    new-instance p4, Lnet/sf/saxon/tree/linked/ProcInstImpl;

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-direct {p4, p1, p2}, Lnet/sf/saxon/tree/linked/ProcInstImpl;-><init>(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object p2, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget p0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aget v0, p2, p0

    add-int/lit8 v1, v0, 0x1

    aput v1, p2, p0

    invoke-virtual {p1, p4, v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->addChild(Lnet/sf/saxon/tree/linked/NodeImpl;I)V

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p1

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p2

    invoke-virtual {p4, p0, p1, p2}, Lnet/sf/saxon/tree/linked/ProcInstImpl;->setLocation(Ljava/lang/String;II)V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/event/Builder;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    sget-object v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;->a:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->g:Lnet/sf/saxon/tree/linked/NodeFactory;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->l:Z

    iput v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->m:I

    return-void
.end method

.method public setAllocateSequenceNumbers(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->l:Z

    return-void
.end method

.method public setNodeFactory(Lnet/sf/saxon/tree/linked/NodeFactory;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->g:Lnet/sf/saxon/tree/linked/NodeFactory;

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    check-cast v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    check-cast p0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-direct {p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;-><init>()V

    iget-boolean v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->n:Z

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setMutable(Z)V

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setBaseURI(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    aput v0, v1, v0

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->setRawSequenceNumber(I)V

    iget-boolean p0, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setLineNumbering()V

    :cond_1
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p5

    iget-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0, v11}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->startDocument(I)V

    iget-object v2, v0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    check-cast v2, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v2, v12}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setImaginary(Z)V

    :cond_0
    const/16 v2, 0x10

    move/from16 v3, p6

    invoke-static {v3, v2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v5

    iget-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->k:Ljava/util/Stack;

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v2, v9, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    if-eqz v2, :cond_1

    move-object v2, v9

    check-cast v2, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    iget v2, v2, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    if-nez v2, :cond_1

    move v13, v12

    goto :goto_0

    :cond_1
    move v13, v11

    :goto_0
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const-string v3, "id"

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/om/AttributeMap;->get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->containsWhitespace(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v15

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v16

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v18

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v19

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v1, v3}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    :cond_2
    move-object v6, v1

    iget-object v1, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->g:Lnet/sf/saxon/tree/linked/NodeFactory;

    iget-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object v3, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->k:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lnet/sf/saxon/om/NamespaceMap;

    iget-object v8, v0, Lnet/sf/saxon/event/Builder;->pipe:Lnet/sf/saxon/event/PipelineConfiguration;

    iget-boolean v3, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->l:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->m:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->m:I

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_1
    move v10, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    invoke-interface/range {v1 .. v10}, Lnet/sf/saxon/tree/linked/NodeFactory;->makeElementNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;ZLnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/s9api/Location;I)Lnet/sf/saxon/tree/linked/ElementImpl;

    move-result-object v1

    :goto_2
    iget v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    iget-object v3, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    iget-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    const/16 v3, 0x14

    new-array v3, v3, [Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->j:Ljava/util/ArrayList;

    iget v3, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->setChildren(Ljava/lang/Object;)V

    iget-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget-object v3, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget v4, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aget v5, v3, v4

    add-int/lit8 v6, v5, 0x1

    aput v6, v3, v4

    invoke-virtual {v2, v1, v5}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->addChild(Lnet/sf/saxon/tree/linked/NodeImpl;I)V

    iget v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    iget-object v3, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    array-length v4, v3

    sub-int/2addr v4, v12

    if-lt v2, v4, :cond_5

    array-length v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    :cond_5
    iget-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->h:[I

    iget v3, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    add-int/2addr v3, v12

    iput v3, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->i:I

    aput v11, v2, v3

    iget-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    instance-of v3, v2, Lnet/sf/saxon/om/TreeInfo;

    if-eqz v3, :cond_6

    check-cast v2, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setDocumentElement(Lnet/sf/saxon/tree/linked/ElementImpl;)V

    :cond_6
    if-eqz v13, :cond_7

    iget-object v2, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-virtual {v2}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->markTopWithinEntity(Lnet/sf/saxon/tree/linked/ElementImpl;)V

    :cond_7
    iput-object v1, v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->f:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    return-void
.end method
