.class public Lnet/sf/saxon/tree/wrapper/VirtualCopy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;
    }
.end annotation


# instance fields
.field public e:Z

.field protected original:Lnet/sf/saxon/om/NodeInfo;

.field protected parent:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

.field protected root:Lnet/sf/saxon/om/NodeInfo;

.field protected systemIdSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->e:Z

    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    new-instance v0, Lcom/sunia/HTREnginev2/f5o;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/f5o;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->systemIdSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->root:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->c(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static makeVirtualCopy(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;
    .locals 4

    :goto_0
    instance-of v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    invoke-direct {v0, p0, p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    new-instance v1, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/tree/wrapper/VirtualCopy;)V

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDocumentNumberAllocator()Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->allocateDocumentNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/om/GenericTreeInfo;->setDocumentNumber(J)V

    iput-object v1, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    return-object v0
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->root:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    iget-object v1, p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->root:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->e:Z

    if-eqz v0, :cond_0

    and-int/lit8 p2, p2, -0x3

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object v0

    check-cast p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/GenericTreeInfo;->getDocumentNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->generateId(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->e:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/tree/util/Navigator;->getBaseURI(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->e:Z

    if-eqz v0, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/om/NamespaceBinding;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object p0, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->root:Lnet/sf/saxon/om/NodeInfo;

    if-ne v0, v1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object p0, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0

    :cond_6
    invoke-interface {v0, p1}, Lnet/sf/saxon/om/NodeInfo;->getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    return p0
.end method

.method public getOriginalNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->root:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->parent:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->parent:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->parent:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPublicId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->systemIdSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result p0

    return p0
.end method

.method public hasFingerprint()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getDocumentNumber()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    long-to-int p0, v1

    shl-int/lit8 p0, p0, 0x13

    xor-int/2addr p0, v0

    return p0
.end method

.method public isId()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result p0

    return p0
.end method

.method public isIdref()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isIdref()Z

    move-result p0

    return p0
.end method

.method public isIncludedInCopy(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->root:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public isNilled()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isNilled()Z

    move-result p0

    return p0
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v1, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v1, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getNodeKind()I

    move-result p1

    if-eq p1, v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/NamespaceNode;->makeIterator(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->parent:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    goto :goto_0

    :pswitch_6
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :pswitch_7
    move-object v0, p0

    goto :goto_0

    :pswitch_8
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :pswitch_9
    new-instance p1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    new-instance v1, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    invoke-direct {p1, v1, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object p1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->original:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2, p1, p2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p2

    sget-object v2, Lnet/sf/saxon/om/AxisInfo;->isSubtreeAxis:[Z

    aget-boolean p1, v2, p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p2, v0, p1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->makeCopier(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/VirtualCopy;Z)Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public makeCopier(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/VirtualCopy;Z)Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;-><init>(Lnet/sf/saxon/tree/wrapper/VirtualCopy;Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/VirtualCopy;Z)V

    return-object v0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setDropNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->e:Z

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/e5o;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/e5o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->systemIdSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;
    .locals 2

    new-instance v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->root:Lnet/sf/saxon/om/NodeInfo;

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    iget-object p1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    iput-object p1, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->tree:Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    iget-object p1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->systemIdSupplier:Ljava/util/function/Supplier;

    iput-object p1, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->systemIdSupplier:Ljava/util/function/Supplier;

    iget-boolean p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->e:Z

    iput-boolean p0, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->e:Z

    return-object v0
.end method
