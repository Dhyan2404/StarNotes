.class public final Lnet/sf/saxon/tree/linked/DocumentImpl;
.super Lnet/sf/saxon/tree/linked/ParentNodeImpl;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/TreeInfo;
.implements Lnet/sf/saxon/om/MutableDocumentInfo;


# static fields
.field public static final synthetic y:Z


# instance fields
.field public j:Lnet/sf/saxon/tree/linked/ElementImpl;

.field public k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public l:J

.field public m:Ljava/lang/String;

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/tree/linked/ElementImpl;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/tree/linked/ElementImpl;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lnet/sf/saxon/Configuration;

.field public t:Lnet/sf/saxon/tree/linked/LineNumberMap;

.field public u:Lnet/sf/saxon/tree/linked/SystemIdMap;

.field public v:Z

.field public w:Z

.field public x:Lnet/sf/saxon/om/SpaceStrippingRule;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;-><init>()V

    new-instance v0, Lnet/sf/saxon/tree/linked/SystemIdMap;

    invoke-direct {v0}, Lnet/sf/saxon/tree/linked/SystemIdMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->u:Lnet/sf/saxon/tree/linked/SystemIdMap;

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->x:Lnet/sf/saxon/om/SpaceStrippingRule;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V

    return-void
.end method


# virtual methods
.method public addNilledElement(Lnet/sf/saxon/tree/linked/ElementImpl;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->o:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->o:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p2}, Lnet/sf/saxon/om/CopyOptions;->getStartDocumentProperties(I)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getUnparsedEntityNames()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {p1, v1, v3, v2}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getFirstChild()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    return-void
.end method

.method public deIndex(Lnet/sf/saxon/tree/linked/NodeImpl;)V
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/tree/linked/ElementImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->q:Lnet/sf/saxon/z/IntHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/tree/linked/AttributeImpl;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->k:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public f(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->q:Lnet/sf/saxon/z/IntHashMap;

    const/16 v1, 0x1f4

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->q:Lnet/sf/saxon/z/IntHashMap;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->q:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, v2}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance p0, Lnet/sf/saxon/tree/iter/NodeListIterator;

    invoke-direct {p0, v2}, Lnet/sf/saxon/tree/iter/NodeListIterator;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public g(I)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->t:Lnet/sf/saxon/tree/linked/LineNumberMap;

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/LineNumberMap;->getColumnNumber(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 2

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->l:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->s:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getDocumentElement()Lnet/sf/saxon/tree/linked/ElementImpl;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->j:Lnet/sf/saxon/tree/linked/ElementImpl;

    return-object p0
.end method

.method public getDocumentNumber()J
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->l:J

    return-wide v0
.end method

.method public getLineNumber()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->s:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public final getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getNextSibling()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeKind()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;
    .locals 0

    return-object p0
.end method

.method public final getPreviousSibling()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPreviousSibling()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getPreviousSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    return-object p0
.end method

.method public getRootNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->j:Lnet/sf/saxon/tree/linked/ElementImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    return-object p0
.end method

.method public getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->x:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->u:Lnet/sf/saxon/tree/linked/SystemIdMap;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/SystemIdMap;->getSystemId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->n:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getUnparsedEntityNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->n:Ljava/util/HashMap;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->r:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public graftLocationMap(Lnet/sf/saxon/tree/linked/DocumentImpl;)V
    .locals 1

    iget-object v0, p1, Lnet/sf/saxon/tree/linked/DocumentImpl;->u:Lnet/sf/saxon/tree/linked/SystemIdMap;

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->u:Lnet/sf/saxon/tree/linked/SystemIdMap;

    iget-object p1, p1, Lnet/sf/saxon/tree/linked/DocumentImpl;->t:Lnet/sf/saxon/tree/linked/LineNumberMap;

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->t:Lnet/sf/saxon/tree/linked/LineNumberMap;

    return-void
.end method

.method public h(I)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->t:Lnet/sf/saxon/tree/linked/LineNumberMap;

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/LineNumberMap;->getLineNumber(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public i(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->u:Lnet/sf/saxon/tree/linked/SystemIdMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/SystemIdMap;->getSystemId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isImaginary()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->v:Z

    return p0
.end method

.method public isMutable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->w:Z

    return p0
.end method

.method public isTopWithinEntity(Lnet/sf/saxon/tree/linked/ElementImpl;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->p:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTyped()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->j:Lnet/sf/saxon/tree/linked/ElementImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->k:Ljava/util/HashMap;

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/tree/linked/ElementImpl;

    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->isId()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/tree/linked/DocumentImpl;->l(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->isId()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/tree/linked/DocumentImpl;->l(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public k(Lnet/sf/saxon/tree/linked/ElementImpl;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->o:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->k:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->k:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m(III)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->t:Lnet/sf/saxon/tree/linked/LineNumberMap;

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/tree/linked/LineNumberMap;->setLineAndColumn(III)V

    :cond_0
    return-void
.end method

.method public markTopWithinEntity(Lnet/sf/saxon/tree/linked/ElementImpl;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->p:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->p:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->p:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->u:Lnet/sf/saxon/tree/linked/SystemIdMap;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/linked/SystemIdMap;->setSystemId(ILjava/lang/String;)V

    return-void
.end method

.method public newBuilder()Lnet/sf/saxon/event/Builder;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->s:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->setAllocateSequenceNumbers(Z)V

    return-object v0
.end method

.method public replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot replace the value of a document node"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetIndexes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->k:Ljava/util/HashMap;

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->q:Lnet/sf/saxon/z/IntHashMap;

    return-void
.end method

.method public selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->j()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->k:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->m:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 2

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->s:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getDocumentNumberAllocator()Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;->allocateDocumentNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->l:J

    return-void
.end method

.method public setDocumentElement(Lnet/sf/saxon/tree/linked/ElementImpl;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->j:Lnet/sf/saxon/tree/linked/ElementImpl;

    return-void
.end method

.method public setImaginary(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->v:Z

    return-void
.end method

.method public setLineNumbering()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/tree/linked/LineNumberMap;

    invoke-direct {v0}, Lnet/sf/saxon/tree/linked/LineNumberMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->t:Lnet/sf/saxon/tree/linked/LineNumberMap;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lnet/sf/saxon/tree/linked/LineNumberMap;->setLineAndColumn(III)V

    return-void
.end method

.method public setMutable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->w:Z

    return-void
.end method

.method public setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->x:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->u:Lnet/sf/saxon/tree/linked/SystemIdMap;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/tree/linked/SystemIdMap;->setSystemId(ILjava/lang/String;)V

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->n:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->n:Ljava/util/HashMap;

    :cond_0
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->n:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->r:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->r:Ljava/util/HashMap;

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->r:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;->r:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
