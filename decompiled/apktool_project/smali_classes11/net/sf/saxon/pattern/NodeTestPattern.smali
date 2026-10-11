.class public Lnet/sf/saxon/pattern/NodeTestPattern;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"


# instance fields
.field public final q:Lnet/sf/saxon/pattern/NodeTest;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NodeTest;->getDefaultPriority()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/pattern/Pattern;->setPriority(D)V

    return-void
.end method


# virtual methods
.method public computeHashCode()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const v0, 0x7aeffea8

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

    iget-object v0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v1, v0, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getElementDeclaration(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "lax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The mode specifies typed=\'strict\', but there is no schema element declaration named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XTSE3105"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaDeclaration;->makeSchemaNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    :cond_2
    return-object p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2

    .line 2
    new-instance p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    iget-object v0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->copy()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getDefaultPriority()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/pattern/Pattern;->setPriority(D)V

    .line 4
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    iget-object p1, p1, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "p.nodeTest"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "test"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getFingerprint()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/pattern/NodeTest;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    return-object p0
.end method

.method public bridge synthetic getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTestPattern;->getItemType()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    return-object p0
.end method

.method public getNodeTest()Lnet/sf/saxon/pattern/NodeTest;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0

    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reconstruct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTestPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
