.class public final Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;
.super Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    return-void
.end method


# virtual methods
.method public a(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->e:Lnet/sf/saxon/z/IntHashMap;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->e:Lnet/sf/saxon/z/IntHashMap;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->e:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->b(I)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->e:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p0, Lnet/sf/saxon/tree/iter/NodeListIterator;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/iter/NodeListIterator;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNumberOfNodes()I

    move-result v0

    const/16 v1, 0x14

    div-int/2addr v0, v1

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_1
    :try_start_0
    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v4, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v4, v4, v1

    if-eqz v4, :cond_3

    iget-object v4, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v4, v4, v1

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v2, :cond_2

    iget-object v4, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v4, v5

    if-ne v4, p1, :cond_2

    invoke-virtual {v3, v1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    :catch_0
    return-object v0
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

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->D0:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-interface {p1, v2, v3, v1}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    return-void
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 2

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getDocumentNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getNodeKind()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public bridge synthetic getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;
    .locals 0

    .line 1
    const/4 p0, 0x0

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
    .locals 2

    const/4 v0, 0x3

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

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

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getSystemId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTree()Lnet/sf/saxon/tree/tiny/TinyTree;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getDocumentNumber()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public isTyped()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypeArray()[Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->f:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->v(ILjava/lang/String;)V

    return-void
.end method

.method public showSize()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->showSize()V

    return-void
.end method
