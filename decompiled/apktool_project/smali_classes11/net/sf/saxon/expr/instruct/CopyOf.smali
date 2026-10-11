.class public Lnet/sf/saxon/expr/instruct/CopyOf;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/ValidatingInstruction;


# static fields
.field public static final synthetic y:Z


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:Z

.field public p:Z

.field public final q:I

.field public final r:Lnet/sf/saxon/type/SchemaType;

.field public s:Z

.field public final t:Z

.field public final u:Z

.field public v:Z

.field public w:Z

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V
    .locals 4

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->s:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->v:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->w:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->x:Z

    new-instance v2, Lnet/sf/saxon/expr/Operand;

    sget-object v3, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v2, p0, p1, v3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->n:Lnet/sf/saxon/expr/Operand;

    iput-boolean p2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->o:Z

    iput p3, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    iput-object p4, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    if-nez p4, :cond_0

    if-eq p3, v1, :cond_0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->u:Z

    iput-boolean p5, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->t:Z

    return-void
.end method

.method public static computeNewBaseUri(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "base"

    invoke-interface {p0, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static copyAttribute(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/type/SimpleType;ILnet/sf/saxon/expr/instruct/Instruction;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p6, :cond_0

    const/16 p6, 0x20

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    move v5, p6

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p6

    invoke-static {p0, p1, p2, p5}, Lnet/sf/saxon/expr/instruct/CopyOf;->validateAttribute(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/type/SimpleType;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/type/SimpleType;

    move-result-object v2

    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0, p5}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p3}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p3}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/PackageData;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTTE0950"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "XQTY0086"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_1
    throw p0
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/CopyOf;->o(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/CopyOf;->p(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic g(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/instruct/CopyOf;->m(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/Controller;ZLnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sf/saxon/expr/instruct/CopyOf;->n(Lnet/sf/saxon/Controller;ZLnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/instruct/CopyOf;->l(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/event/Outputter;ILnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sf/saxon/expr/instruct/CopyOf;->q(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/event/Outputter;ILnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic l(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/LocationCopier;->notifyElementNode(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/LocationCopier;->notifyElementNode(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n(Lnet/sf/saxon/Controller;ZLnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_5

    check-cast p4, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p4}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->o:Z

    if-nez v0, :cond_0

    invoke-interface {p4}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/sf/saxon/event/Sink;

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/Sink;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const/4 p1, 0x4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {p4, v0, p1, v2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    :cond_0
    invoke-interface {p4}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-interface {p4}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot copy an attribute with namespace-sensitive content except as part of its containing element"

    const-string p2, "XTTE0950"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-static {p4}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->makeVirtualCopy(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->o:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->setDropNamespaces(Z)V

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->p:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object p2

    invoke-virtual {p2, v1}, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;->setCopyAccumulators(Z)V

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XsltController;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object p3

    invoke-interface {p4}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->getApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->setApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;Ljava/util/Set;)V

    :cond_3
    invoke-interface {p4}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p2

    if-ne p2, v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->computeNewBaseUri(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->setSystemId(Ljava/lang/String;)V

    :cond_4
    return-object p1

    :cond_5
    return-object p4
.end method

.method private synthetic o(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p2, p2}, Lnet/sf/saxon/tree/wrapper/VirtualUntypedCopy;->makeVirtualUntypedTree(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->p:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;->setCopyAccumulators(Z)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XsltController;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object v1

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->getApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->setApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;Ljava/util/Set;)V

    :cond_1
    iget-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->o:Z

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->setDropNamespaces(Z)V

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->computeNewBaseUri(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->setSystemId(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private synthetic p(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p3, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance v1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v1, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    check-cast p3, Lnet/sf/saxon/om/NodeInfo;

    const/4 v2, 0x2

    invoke-virtual {p0, p2, v1, p3, v2}, Lnet/sf/saxon/expr/instruct/CopyOf;->k(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/NodeInfo;I)V

    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object p2

    invoke-virtual {p2, p3}, Lnet/sf/saxon/tree/tiny/TinyTree;->setCopiedFrom(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    :goto_0
    return-void
.end method

.method private synthetic q(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/event/Outputter;ILnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    check-cast p4, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1, p2, p4, p3}, Lnet/sf/saxon/expr/instruct/CopyOf;->k(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/NodeInfo;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/high16 p1, 0x80000

    invoke-virtual {p2, p4, p0, p1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public static validateAttribute(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/type/SimpleType;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/type/SimpleType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;->getInstance()Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;

    move-result-object p0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p2

    invoke-interface {p1, v0, p0, p2}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attribute being copied does not match the required type. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setMessage(Ljava/lang/String;)V

    const-string p1, "XTTE1510"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot create a parentless attribute whose type is namespace-sensitive (such as xs:QName)"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XTTE1545"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p1, 0x1

    if-eq p2, p1, :cond_7

    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/SimpleType;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Cannot preserve type annotation when copying an attribute with namespace-sensitive content"

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Executable;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p2

    sget-object p3, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p2, p3, :cond_4

    const-string p2, "XTTE0950"

    goto :goto_0

    :cond_4
    const-string p2, "XQTY0086"

    :goto_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0

    :cond_5
    move-object p1, p0

    goto :goto_2

    :cond_6
    move-object p1, v1

    goto :goto_2

    :cond_7
    :goto_1
    :try_start_0
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p3

    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p3, p0, v0, p2}, Lnet/sf/saxon/Configuration;->validateAttribute(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/str/UnicodeString;I)Lnet/sf/saxon/type/SimpleType;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p2
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 4

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->setReturnable(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v3, :cond_0

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    if-eq v0, v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->addDescendants()V

    :cond_1
    new-instance p2, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    return-object p2
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 7

    new-instance v6, Lnet/sf/saxon/expr/instruct/CopyOf;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->o:Z

    iget v3, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    iget-boolean v5, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->t:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    invoke-static {p0, v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->w:Z

    invoke-virtual {v6, p1}, Lnet/sf/saxon/expr/instruct/CopyOf;->setCopyForUpdate(Z)V

    iget-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->v:Z

    invoke-virtual {v6, p1}, Lnet/sf/saxon/expr/instruct/CopyOf;->setCopyLineNumbers(Z)V

    iget-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->x:Z

    iput-boolean p1, v6, Lnet/sf/saxon/expr/instruct/CopyOf;->x:Z

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->p:Z

    invoke-virtual {v6, p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->setCopyAccumulators(Z)V

    return-object v6
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "copyOf"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v1, "validation"

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->describe(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    if-eqz v0, :cond_1

    const-string v1, "type"

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->s:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->t:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->u:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->v:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->w:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->x:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->o:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->p:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "flags"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCardinality()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0
.end method

.method public getDependencies()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    return p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x93

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->x:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v2

    sget-object v6, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v2, v0, v6}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v6, v7, :cond_3

    sget-object v8, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v6, v8, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v2, v0, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    if-eq v0, v7, :cond_2

    if-ne v0, v8, :cond_5

    :cond_2
    new-instance v0, Lnet/sf/saxon/pattern/ContentTypeTest;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    invoke-direct {v0, v3, p0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Lnet/sf/saxon/pattern/ContentTypeTest;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    invoke-direct {v0, v4, p0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object v0

    :cond_4
    iget v2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    if-eq v2, v4, :cond_f

    if-eq v2, v3, :cond_f

    const/4 v6, 0x3

    if-eq v2, v6, :cond_e

    const/4 v6, 0x4

    if-eq v2, v6, :cond_6

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p0

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v6, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v2, v6, :cond_d

    sget-object v7, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v7, :cond_7

    goto :goto_3

    :cond_7
    sget-object v4, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v0, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    if-eq p0, v6, :cond_c

    if-ne p0, v7, :cond_8

    goto :goto_2

    :cond_8
    sget-object v1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v1, :cond_a

    if-eq p0, v1, :cond_9

    goto :goto_1

    :cond_9
    return-object v0

    :cond_a
    :goto_1
    instance-of p0, v0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_b

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_2
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, v3, v0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_d
    :goto_3
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    invoke-direct {p0, v4, v0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_e
    return-object v0

    :cond_f
    instance-of p0, v0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_19

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p0

    move-object v2, v0

    check-cast v2, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v2}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_15

    sget-object v6, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v0, v6}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v6, v7, :cond_13

    sget-object v8, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v6, v8, :cond_10

    goto :goto_4

    :cond_10
    sget-object v4, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v0, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    if-eq p0, v7, :cond_11

    if-ne p0, v8, :cond_17

    :cond_11
    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object p0

    if-eqz p0, :cond_12

    :try_start_0
    new-instance v0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-direct {v0, v3, p0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object v0

    invoke-direct {p0, v3, v0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_12
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object v0

    invoke-direct {p0, v3, v0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_13
    :goto_4
    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object p0

    if-eqz p0, :cond_14

    :try_start_1
    new-instance v0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-direct {v0, v4, p0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V
    :try_end_1
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v0

    invoke-direct {p0, v4, v0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_14
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v0

    invoke-direct {p0, v4, v0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_15
    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v2, v3, :cond_18

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v4, :cond_16

    goto :goto_5

    :cond_16
    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    if-eq p0, v3, :cond_18

    if-ne p0, v4, :cond_17

    goto :goto_5

    :cond_17
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_5
    return-object v1

    :cond_19
    instance-of p0, v0, Lnet/sf/saxon/type/AtomicType;

    if-eqz p0, :cond_1a

    return-object v0

    :cond_1a
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    return-object p0
.end method

.method public getSelect()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "CopyOf"

    return-object p0
.end method

.method public getValidationAction()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    return p0
.end method

.method public isCopyAccumulators()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->p:Z

    return p0
.end method

.method public isCopyForUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->w:Z

    return p0
.end method

.method public isCopyNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->o:Z

    return p0
.end method

.method public isDocumentOrElementRequired()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->s:Z

    return p0
.end method

.method public isValidating()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->u:Z

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result v1

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->w:Z

    if-nez v2, :cond_1

    iget v2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/sunia/HTREnginev2/lce;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/sunia/HTREnginev2/lce;-><init>(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/Controller;ZLnet/sf/saxon/expr/XPathContext;)V

    invoke-static {v2}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {v1, p0, v0, v4}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    return-object v1

    :cond_0
    const/4 v1, 0x4

    if-ne v2, v1, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/mce;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/mce;-><init>(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {v0}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {v1, p0, v0, v4}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    new-instance v1, Lnet/sf/saxon/event/SequenceCollector;

    invoke-direct {v1, v0}, Lnet/sf/saxon/event/SequenceCollector;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->w:Z

    if-eqz v2, :cond_2

    sget-object v2, Lnet/sf/saxon/om/TreeModel;->LINKED_TREE:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/event/SequenceWriter;->setTreeModel(Lnet/sf/saxon/om/TreeModel;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/PackageData;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/event/PipelineConfiguration;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    :try_start_0
    new-instance v0, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lnet/sf/saxon/event/SequenceCollector;->getSequence()Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public final k(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/NodeInfo;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "XTTE1510"

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/event/Outputter;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v5

    iget-boolean v6, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->s:Z

    const/16 v7, 0x9

    if-eqz v6, :cond_2

    if-eq v5, v3, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Operand of validate expression must be a document or element node"

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p1, "XQTY0030"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x2

    if-eq v5, v3, :cond_e

    if-eq v5, v8, :cond_b

    const/4 v0, 0x3

    if-eq v5, v0, :cond_a

    const/4 v0, 0x7

    if-eq v5, v0, :cond_8

    const/16 v0, 0x8

    if-eq v5, v0, :cond_7

    if-eq v5, v7, :cond_4

    const/16 p4, 0xd

    if-ne v5, p4, :cond_3

    :try_start_0
    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, p3, v4}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lnet/sf/saxon/event/NoOpenStartTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p2

    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p3, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p3, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown node kind "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iget v4, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    invoke-virtual {v0, v4}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {v0, v4}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/Configuration;->prepareValidationReporting(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v1, p2, p1, v0, v4}, Lnet/sf/saxon/Configuration;->getDocumentValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    if-eqz v2, :cond_5

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    :cond_5
    iget-boolean p2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->v:Z

    if-eqz p2, :cond_6

    new-instance v6, Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p2

    invoke-direct {v6, p2}, Lnet/sf/saxon/event/PipelineConfiguration;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance p2, Lnet/sf/saxon/event/LocationCopier;

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v3, v0}, Lnet/sf/saxon/event/LocationCopier;-><init>(ZLjava/lang/String;)V

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/hce;

    invoke-direct {v1, p2}, Lcom/sunia/HTREnginev2/hce;-><init>(Lnet/sf/saxon/event/LocationCopier;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/PipelineConfiguration;->setCopyInformee(Ljava/util/function/Function;)V

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-interface {p3, p1, p4, p2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->v:Z

    if-eqz p0, :cond_15

    invoke-interface {p1, v6}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    goto/16 :goto_5

    :cond_7
    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p1, p0, v4}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_5

    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/event/Outputter;->setSystemId(Ljava/lang/String;)V

    :cond_9
    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p1, p3, p0, v4}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_5

    :cond_a
    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p1, p0, v4}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_5

    :cond_b
    iget-object p4, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    if-eqz p4, :cond_d

    invoke-interface {p4}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result p4

    if-nez p4, :cond_c

    goto :goto_2

    :cond_c
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    const-string p3, "When copying an attribute with schema validation, the requested type must not be a complex type"

    invoke-direct {p2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p3, "XTTE1535"

    invoke-virtual {p2, p3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_d
    :goto_2
    :try_start_1
    iget-object p4, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    move-object v1, p4

    check-cast v1, Lnet/sf/saxon/type/SimpleType;

    iget v2, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    iget-boolean v6, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->t:Z

    move-object v0, p3

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lnet/sf/saxon/expr/instruct/CopyOf;->copyAttribute(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/type/SimpleType;ILnet/sf/saxon/expr/instruct/Instruction;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Z)V
    :try_end_1
    .catch Lnet/sf/saxon/event/NoOpenStartTagException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception p2

    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p4

    invoke-virtual {p3, p4}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p3, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p3, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p3, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_e
    iget-boolean v5, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->u:Z

    if-eqz v5, :cond_12

    new-instance v5, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v5}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iget v7, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    invoke-virtual {v5, v7}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    iget-object v7, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    if-nez v7, :cond_11

    iget v9, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    if-eq v9, v3, :cond_f

    if-ne v9, v8, :cond_11

    :cond_f
    const-string v8, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v9, "type"

    invoke-interface {p3, v8, v9}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    :try_start_2
    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v7

    invoke-static {v8, v3, v4, v7}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v1, v3}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v7

    if-eqz v7, :cond_10

    goto :goto_3

    :cond_10
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown xsi:type in element being validated: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid QName in xsi:type attribute of element being validated: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_3
    invoke-virtual {v5, v7}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    invoke-static {p3}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelElement(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    invoke-virtual {v1, p1, v5}, Lnet/sf/saxon/Configuration;->prepareValidationReporting(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {v1, p2, v5, p1}, Lnet/sf/saxon/Configuration;->getElementValidator(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    goto :goto_4

    :cond_12
    move-object v0, p2

    :goto_4
    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lnet/sf/saxon/expr/instruct/CopyOf;->computeNewBaseUri(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/Outputter;->setSystemId(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p2}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->v:Z

    if-eqz v1, :cond_14

    new-instance v1, Lnet/sf/saxon/event/LocationCopier;

    invoke-virtual {p2}, Lnet/sf/saxon/event/Outputter;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v4, p2}, Lnet/sf/saxon/event/LocationCopier;-><init>(ZLjava/lang/String;)V

    new-instance p2, Lcom/sunia/HTREnginev2/gce;

    invoke-direct {p2, v1}, Lcom/sunia/HTREnginev2/gce;-><init>(Lnet/sf/saxon/event/LocationCopier;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/event/PipelineConfiguration;->setCopyInformee(Ljava/util/function/Function;)V

    :cond_14
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-interface {p3, v0, p4, p2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->v:Z

    if-eqz p0, :cond_15

    invoke-virtual {p1, v6}, Lnet/sf/saxon/event/PipelineConfiguration;->setCopyInformee(Ljava/util/function/Function;)V

    :cond_15
    :goto_5
    return-void
.end method

.method public final mayCreateNewNodes()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->n:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ice;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/ice;-><init>(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {v0, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/CopyOf;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/sunia/HTREnginev2/jce;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/jce;-><init>(Lnet/sf/saxon/event/Outputter;)V

    invoke-static {p0, p2}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v1, v2

    :cond_2
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->o:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->w:Z

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    :cond_4
    or-int/2addr v0, v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/kce;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/sunia/HTREnginev2/kce;-><init>(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/event/Outputter;I)V

    invoke-static {v1, v2}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public final r()Z
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->r:Lnet/sf/saxon/type/SchemaType;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->w:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setCopyAccumulators(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->p:Z

    return-void
.end method

.method public setCopyForUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->w:Z

    return-void
.end method

.method public setCopyLineNumbers(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->v:Z

    return-void
.end method

.method public setRequireDocumentOrElement(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->s:Z

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->x:Z

    return-void
.end method

.method public setSelect(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CopyOf;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->isDocumentOrElementRequired()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v0, 0x2

    const-string v1, "validate"

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v0, "XQTY0030"

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_NODE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v3, v4, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/CopyOf;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, p2, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, p2, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, p2, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, p2, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, p2, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "validate{} expression cannot be applied to a namespace node"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "validate{} expression cannot be applied to a processing instruction node"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "validate{} expression cannot be applied to a comment node"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "validate{} expression cannot be applied to a text node"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "validate{} expression cannot be applied to an attribute"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-object p0
.end method
