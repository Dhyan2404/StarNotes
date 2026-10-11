.class public Lnet/sf/saxon/pattern/UnionPattern;
.super Lnet/sf/saxon/pattern/VennPattern;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/pattern/VennPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->setPriority(D)V

    return-void
.end method


# virtual methods
.method public computeHashCode()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    const v1, 0x3bd723a6

    xor-int/2addr v0, v1

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/pattern/Pattern;->convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/pattern/UnionPattern;

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/pattern/UnionPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    return-object p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/UnionPattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3

    .line 2
    new-instance v0, Lnet/sf/saxon/pattern/UnionPattern;

    iget-object v1, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/pattern/UnionPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    .line 3
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/pattern/UnionPattern;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pattern/VennPattern;->gatherComponentPatterns(Ljava/util/Set;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(I)V

    check-cast p1, Lnet/sf/saxon/pattern/UnionPattern;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/pattern/VennPattern;->gatherComponentPatterns(Ljava/util/Set;)V

    invoke-interface {v0, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 0

    const-string p0, "union"

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

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

.method public matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/pattern/Pattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/Pattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

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
