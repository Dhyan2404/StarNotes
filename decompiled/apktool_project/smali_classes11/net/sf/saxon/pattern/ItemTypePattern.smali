.class public Lnet/sf/saxon/pattern/ItemTypePattern;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"


# instance fields
.field public final q:Lnet/sf/saxon/type/ItemType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ItemType;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getDefaultPriority()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/pattern/Pattern;->setPriority(D)V

    return-void
.end method


# virtual methods
.method public computeHashCode()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const v0, 0x7a83d1a8

    xor-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/ItemTypePattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1

    .line 2
    new-instance p1, Lnet/sf/saxon/pattern/ItemTypePattern;

    iget-object v0, p0, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

    invoke-direct {p1, v0}, Lnet/sf/saxon/pattern/ItemTypePattern;-><init>(Lnet/sf/saxon/type/ItemType;)V

    .line 3
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/pattern/ItemTypePattern;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/ItemTypePattern;

    iget-object p1, p1, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

    iget-object p0, p0, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

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

    iget-object p0, p0, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "test"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    return p0
.end method

.method public reconstruct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/ItemTypePattern;->q:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
