.class public final Lnet/sf/saxon/pattern/SimplePositionalPattern;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"


# instance fields
.field public final q:Lnet/sf/saxon/pattern/NodeTest;

.field public final r:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pattern/NodeTest;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    iput p2, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->r:I

    return-void
.end method


# virtual methods
.method public computeHashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->r:I

    shl-int/lit8 p0, p0, 0x3

    xor-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/SimplePositionalPattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2

    .line 2
    new-instance p1, Lnet/sf/saxon/pattern/SimplePositionalPattern;

    iget-object v0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->copy()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->r:I

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/pattern/SimplePositionalPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;I)V

    .line 3
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/pattern/SimplePositionalPattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/SimplePositionalPattern;

    iget-object v0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    iget-object v2, p1, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->r:I

    iget p1, p1, Lnet/sf/saxon/pattern/SimplePositionalPattern;->r:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2

    const-string v0, "p.simPos"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->r:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pos"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getFingerprint()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getNodeTest()Lnet/sf/saxon/pattern/NodeTest;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->r:I

    return p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public isMotionless()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/pattern/SimplePositionalPattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1

    iget-object p3, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p3, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p3

    if-eq p3, p2, :cond_1

    return v0

    :cond_1
    iget p2, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->r:I

    iget-object p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-static {p1, p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->getSiblingPosition(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodeTest;I)I

    move-result p0

    if-ne p2, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public reconstruct()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/pattern/SimplePositionalPattern;->r:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
