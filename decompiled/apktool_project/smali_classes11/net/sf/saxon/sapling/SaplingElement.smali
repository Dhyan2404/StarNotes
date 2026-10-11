.class public Lnet/sf/saxon/sapling/SaplingElement;
.super Lnet/sf/saxon/sapling/SaplingNode;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/om/StructuredQName;

.field public f:Lnet/sf/saxon/ma/trie/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "Lnet/sf/saxon/sapling/SaplingNode;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lnet/sf/saxon/ma/trie/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lnet/sf/saxon/om/NamespaceMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/sapling/SaplingNode;-><init>()V

    .line 2
    invoke-static {}, Lnet/sf/saxon/sapling/SaplingElement;->b()Lnet/sf/saxon/ma/trie/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->g:Lnet/sf/saxon/ma/trie/ImmutableMap;

    .line 3
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/sapling/SaplingNode;->emptyNodeList()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    .line 6
    invoke-static {p1}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/sapling/SaplingElement;->e:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lnet/sf/saxon/sapling/SaplingNode;-><init>()V

    .line 17
    invoke-static {}, Lnet/sf/saxon/sapling/SaplingElement;->b()Lnet/sf/saxon/ma/trie/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->g:Lnet/sf/saxon/ma/trie/ImmutableMap;

    .line 18
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    .line 19
    iput-object p1, p0, Lnet/sf/saxon/sapling/SaplingElement;->e:Lnet/sf/saxon/om/StructuredQName;

    .line 20
    invoke-virtual {p0}, Lnet/sf/saxon/sapling/SaplingNode;->emptyNodeList()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/sapling/SaplingElement;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/s9api/QName;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lnet/sf/saxon/sapling/SaplingNode;-><init>()V

    .line 8
    invoke-static {}, Lnet/sf/saxon/sapling/SaplingElement;->b()Lnet/sf/saxon/ma/trie/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->g:Lnet/sf/saxon/ma/trie/ImmutableMap;

    .line 9
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lnet/sf/saxon/sapling/SaplingNode;->emptyNodeList()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    .line 12
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->e:Lnet/sf/saxon/om/StructuredQName;

    .line 13
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No namespace URI for prefixed element name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sf/saxon/om/NamespaceMap;->of(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    return-void
.end method

.method public static b()Lnet/sf/saxon/ma/trie/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/ma/trie/ImmutableMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->empty()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lnet/sf/saxon/sapling/SaplingElement;
    .locals 2

    new-instance v0, Lnet/sf/saxon/sapling/SaplingElement;

    iget-object v1, p0, Lnet/sf/saxon/sapling/SaplingElement;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, v1}, Lnet/sf/saxon/sapling/SaplingElement;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v1, p0, Lnet/sf/saxon/sapling/SaplingElement;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    iput-object v1, v0, Lnet/sf/saxon/sapling/SaplingElement;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    iget-object v1, p0, Lnet/sf/saxon/sapling/SaplingElement;->g:Lnet/sf/saxon/ma/trie/ImmutableMap;

    iput-object v1, v0, Lnet/sf/saxon/sapling/SaplingElement;->g:Lnet/sf/saxon/ma/trie/ImmutableMap;

    iget-object p0, p0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    iput-object p0, v0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    return-object v0
.end method

.method public final c(Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingElement;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/sapling/SaplingElement;->a()Lnet/sf/saxon/sapling/SaplingElement;

    move-result-object p0

    iget-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->g:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-interface {v0, p1, p2}, Lnet/sf/saxon/ma/trie/ImmutableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/sapling/SaplingElement;->g:Lnet/sf/saxon/ma/trie/ImmutableMap;

    return-object p0
.end method

.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    iget-object v2, v0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    iget-object v3, v0, Lnet/sf/saxon/sapling/SaplingElement;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lnet/sf/saxon/sapling/SaplingElement;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lnet/sf/saxon/sapling/SaplingElement;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v4}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v2

    :cond_0
    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v3

    iget-object v4, v0, Lnet/sf/saxon/sapling/SaplingElement;->g:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-interface {v4}, Lnet/sf/saxon/ma/trie/ImmutableMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v9, v2

    move-object v8, v3

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/ma/trie/TrieKVP;

    invoke-virtual {v2}, Lnet/sf/saxon/ma/trie/TrieKVP;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/StructuredQName;

    new-instance v5, Lnet/sf/saxon/om/AttributeInfo;

    new-instance v11, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-direct {v11, v3, v1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    sget-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v2}, Lnet/sf/saxon/ma/trie/TrieKVP;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    sget-object v14, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v15, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v8, v5}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v8

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :cond_2
    new-instance v6, Lnet/sf/saxon/om/FingerprintedQName;

    iget-object v2, v0, Lnet/sf/saxon/sapling/SaplingElement;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v6, v2, v1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v7

    sget-object v10, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v11}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v0, v0, Lnet/sf/saxon/sapling/SaplingElement;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/trie/ImmutableList;->reverse()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/sapling/SaplingNode;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/sapling/SaplingNode;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    goto :goto_1

    :cond_3
    move-object/from16 v3, p1

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method

.method public getNodeKind()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toNodeInfo(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/lib/ParseOptions;->getModel()Lnet/sf/saxon/om/TreeModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->open()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/sapling/SaplingElement;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->close()V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public toXdmNode(Lnet/sf/saxon/s9api/Processor;)Lnet/sf/saxon/s9api/XdmNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sapling/SaplingElement;->toNodeInfo(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmNode;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public withAttr(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingElement;
    .locals 2

    .line 1
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/sapling/SaplingElement;->c(Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingElement;

    move-result-object p0

    return-object p0
.end method

.method public withAttr(Lnet/sf/saxon/s9api/QName;Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingElement;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An attribute whose name is in a namespace must have a prefix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/sapling/SaplingElement;->withNamespace(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingElement;

    .line 6
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/sapling/SaplingElement;->c(Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingElement;

    move-result-object p0

    return-object p0
.end method

.method public varargs withChild([Lnet/sf/saxon/sapling/SaplingNode;)Lnet/sf/saxon/sapling/SaplingElement;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/sapling/SaplingElement;->a()Lnet/sf/saxon/sapling/SaplingElement;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lnet/sf/saxon/sapling/SaplingNode;->getNodeKind()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/16 v2, 0x9

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add document node as a child of an element node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v3, p0, Lnet/sf/saxon/sapling/SaplingElement;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/ma/trie/ImmutableList;->prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/sapling/SaplingElement;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public withNamespace(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingElement;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot bind non-empty prefix to empty URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistent namespace bindings for prefix \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/sapling/SaplingElement;->a()Lnet/sf/saxon/sapling/SaplingElement;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/sapling/SaplingElement;->h:Lnet/sf/saxon/om/NamespaceMap;

    return-object v0
.end method

.method public withText(Ljava/lang/String;)Lnet/sf/saxon/sapling/SaplingElement;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/sf/saxon/sapling/SaplingNode;

    new-instance v1, Lnet/sf/saxon/sapling/SaplingText;

    invoke-direct {v1, p1}, Lnet/sf/saxon/sapling/SaplingText;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sapling/SaplingElement;->withChild([Lnet/sf/saxon/sapling/SaplingNode;)Lnet/sf/saxon/sapling/SaplingElement;

    move-result-object p0

    return-object p0
.end method
