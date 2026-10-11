.class public Lnet/sf/saxon/event/TypeCheckingFilter;
.super Lnet/sf/saxon/event/ProxyOutputter;
.source "SourceFile"


# instance fields
.field public f:Lnet/sf/saxon/type/ItemType;

.field public g:I

.field public h:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

.field public i:Lnet/sf/saxon/s9api/Location;

.field public j:I

.field public k:I

.field public final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lnet/sf/saxon/type/TypeHierarchy;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyOutputter;-><init>(Lnet/sf/saxon/event/Outputter;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    iput p1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    new-instance p1, Ljava/util/HashSet;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->l:Ljava/util/HashSet;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->m:Lnet/sf/saxon/type/TypeHierarchy;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/event/TypeCheckingFilter;SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/TypeCheckingFilter;->g(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/tree/util/Orphan;->setNodeName(Lnet/sf/saxon/om/NodeName;)V

    :cond_0
    invoke-virtual {v0, p3}, Lnet/sf/saxon/tree/util/Orphan;->setTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)V

    invoke-virtual {v0, p4}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 6
    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    if-nez v0, :cond_1

    .line 7
    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8
    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/TypeCheckingFilter;->b(Lnet/sf/saxon/s9api/Location;)V

    .line 9
    :cond_0
    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/event/TypeCheckingFilter;->d(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/TypeCheckingFilter;->b(Lnet/sf/saxon/s9api/Location;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/event/TypeCheckingFilter;->d(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p4}, Lnet/sf/saxon/event/TypeCheckingFilter;->b(Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    new-instance v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-direct {v2, v1, p1, v3}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamePool;)V

    new-instance v3, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v1, p2, v4, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    const/16 v4, 0x17

    invoke-direct {v0, v2, v4, v3}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {p3}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {p0, v1, p1, p2, v2}, Lnet/sf/saxon/event/TypeCheckingFilter;->h(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4}, Lnet/sf/saxon/event/TypeCheckingFilter;->e(Lnet/sf/saxon/type/ItemType;Ljava/util/function/Supplier;Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final b(Lnet/sf/saxon/s9api/Location;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->g:I

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A sequence of more than one item is not allowed as the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->h:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->h:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const-string v2, "XPDY0050"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    :cond_0
    if-eqz p1, :cond_2

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->i:Lnet/sf/saxon/s9api/Location;

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    :goto_1
    throw v0

    :cond_3
    return-void
.end method

.method public final c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget v2, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    const/4 v4, 0x0

    const/16 v5, 0x17

    if-ne v2, v3, :cond_0

    new-instance v2, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance v6, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {v6, v3, p1, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamePool;)V

    new-instance v1, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-direct {v1, v3, p2, v0, v4}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {v2, v6, v5, v1}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v0

    invoke-virtual {p0, v3, p1, p2, v0}, Lnet/sf/saxon/event/TypeCheckingFilter;->h(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Ljava/util/function/Supplier;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lnet/sf/saxon/event/TypeCheckingFilter;->e(Lnet/sf/saxon/type/ItemType;Ljava/util/function/Supplier;Lnet/sf/saxon/s9api/Location;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    invoke-virtual {p0, p3}, Lnet/sf/saxon/event/TypeCheckingFilter;->b(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    invoke-interface {p1, v1}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result v2

    int-to-long v6, v2

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v2

    int-to-long v8, v2

    or-long/2addr v6, v8

    iget-object v2, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->l:Ljava/util/HashSet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance v8, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {v8, v3, p1, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamePool;)V

    new-instance v1, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-direct {v1, v3, p2, v0, v4}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {v2, v8, v5, v1}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v0

    invoke-virtual {p0, v3, p1, p2, v0}, Lnet/sf/saxon/event/TypeCheckingFilter;->h(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Ljava/util/function/Supplier;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3}, Lnet/sf/saxon/event/TypeCheckingFilter;->e(Lnet/sf/saxon/type/ItemType;Ljava/util/function/Supplier;Lnet/sf/saxon/s9api/Location;)V

    iget-object p1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->l:Ljava/util/HashSet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget p1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    add-int/2addr p1, v3

    iput p1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/TypeCheckingFilter;->b(Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lnet/sf/saxon/event/TypeCheckingFilter;->h(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lnet/sf/saxon/event/TypeCheckingFilter;->e(Lnet/sf/saxon/type/ItemType;Ljava/util/function/Supplier;Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/TypeCheckingFilter;->finalCheck()V

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyOutputter;->close()V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/TypeCheckingFilter;->b(Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v1, 0x8

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lnet/sf/saxon/event/TypeCheckingFilter;->h(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lnet/sf/saxon/event/TypeCheckingFilter;->e(Lnet/sf/saxon/type/ItemType;Ljava/util/function/Supplier;Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final d(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->f:Lnet/sf/saxon/type/ItemType;

    iget-object v1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->m:Lnet/sf/saxon/type/TypeHierarchy;

    invoke-interface {v0, p1, v1}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lnet/sf/saxon/event/TypeCheckingFilter;->i(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    return-void
.end method

.method public final e(Lnet/sf/saxon/type/ItemType;Ljava/util/function/Supplier;Lnet/sf/saxon/s9api/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/type/ItemType;",
            "Ljava/util/function/Supplier<",
            "+",
            "Lnet/sf/saxon/om/Item;",
            ">;",
            "Lnet/sf/saxon/s9api/Location;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->m:Lnet/sf/saxon/type/TypeHierarchy;

    iget-object v1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->f:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Item;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/TypeCheckingFilter;->i(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->endElement()V

    return-void
.end method

.method public final f(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/s9api/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->m:Lnet/sf/saxon/type/TypeHierarchy;

    iget-object v1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->f:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/event/TypeCheckingFilter;->i(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    return-void
.end method

.method public finalCheck()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->g:I

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An empty sequence is not allowed as the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->h:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->h:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const-string v1, "XPDY0050"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public final h(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Ljava/util/function/Supplier;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Lnet/sf/saxon/om/NodeName;",
            "Lnet/sf/saxon/type/SchemaType;",
            "Lnet/sf/saxon/str/UnicodeString;",
            ")",
            "Ljava/util/function/Supplier<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/sunia/HTREnginev2/ton;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/ton;-><init>(Lnet/sf/saxon/event/TypeCheckingFilter;SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)V

    return-object v6
.end method

.method public final i(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->h:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->f:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p2, v0, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->h:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->f:Lnet/sf/saxon/type/ItemType;

    iget-object v1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->m:Lnet/sf/saxon/type/TypeHierarchy;

    invoke-virtual {p1, v0, p2, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->h:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const-string p1, "XPDY0050"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    :cond_1
    if-nez p3, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->i:Lnet/sf/saxon/s9api/Location;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    goto :goto_1

    :cond_2
    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :goto_1
    throw v0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/TypeCheckingFilter;->b(Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/event/TypeCheckingFilter;->f(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p3}, Lnet/sf/saxon/event/TypeCheckingFilter;->b(Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    new-instance v1, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v1, p1}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {p0, v4, v1, v2, v3}, Lnet/sf/saxon/event/TypeCheckingFilter;->h(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lnet/sf/saxon/event/TypeCheckingFilter;->e(Lnet/sf/saxon/type/ItemType;Ljava/util/function/Supplier;Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public setRequiredType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->f:Lnet/sf/saxon/type/ItemType;

    iput p2, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->g:I

    iput-object p3, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->h:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iput-object p4, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->i:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public startDocument(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/TypeCheckingFilter;->b(Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v1, 0x9

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lnet/sf/saxon/event/TypeCheckingFilter;->h(SLnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/str/UnicodeString;)Ljava/util/function/Supplier;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/event/TypeCheckingFilter;->e(Lnet/sf/saxon/type/ItemType;Ljava/util/function/Supplier;Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    iget v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/TypeCheckingFilter;->k:I

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p5}, Lnet/sf/saxon/event/TypeCheckingFilter;->c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/TypeCheckingFilter;->c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;)V

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
