.class public Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;
.super Lnet/sf/saxon/om/GenericTreeInfo;
.source "SourceFile"


# instance fields
.field public final j:Lnet/sf/saxon/om/SpaceStrippingRule;

.field public final k:Z

.field public final l:Z

.field public final m:Lnet/sf/saxon/om/TreeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SpaceStrippingRule;)V
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/GenericTreeInfo;->setRootNode(Lnet/sf/saxon/om/NodeInfo;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->j:Lnet/sf/saxon/om/SpaceStrippingRule;

    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->m:Lnet/sf/saxon/om/TreeInfo;

    invoke-static {p1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->b(Lnet/sf/saxon/om/TreeInfo;)Z

    move-result p2

    iput-boolean p2, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->k:Z

    invoke-static {p1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->a(Lnet/sf/saxon/om/TreeInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->l:Z

    return-void
.end method

.method public static a(Lnet/sf/saxon/om/TreeInfo;)Z
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    const/4 v0, 0x4

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p0, v0, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ComplexType;->hasAssertions()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static b(Lnet/sf/saxon/om/TreeInfo;)Z
    .locals 3

    instance-of v0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->hasXmlSpacePreserveAttribute()Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    const/4 v0, 0x4

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p0, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "space"

    invoke-interface {v0, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preserve"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public containsAssertions()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->l:Z

    return p0
.end method

.method public containsPreserveSpace()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->k:Z

    return p0
.end method

.method public getStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->j:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-object p0
.end method

.method public getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->m:Lnet/sf/saxon/om/TreeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/TreeInfo;->getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

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

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->m:Lnet/sf/saxon/om/TreeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getUnparsedEntityNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public isTyped()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->m:Lnet/sf/saxon/om/TreeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result p0

    return p0
.end method

.method public selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    iget-object p2, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->m:Lnet/sf/saxon/om/TreeInfo;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lnet/sf/saxon/om/TreeInfo;->selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    move-result-object p0

    return-object p0
.end method

.method public wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    move-result-object p0

    return-object p0
.end method
