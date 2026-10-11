.class public final Lnet/sf/saxon/expr/IsLastExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public final n:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    iput-boolean p1, p0, Lnet/sf/saxon/expr/IsLastExpression;->n:Z

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public computeHashCode()I
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/IsLastExpression;->n:Z

    if-eqz p0, :cond_0

    const p0, 0x236b91a0

    goto :goto_0

    :cond_0
    const p0, 0x396b92a0

    :goto_0
    return p0
.end method

.method public computeSpecialProperties()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeSpecialProperties()I

    move-result p0

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p1, Lnet/sf/saxon/expr/IsLastExpression;

    iget-boolean v0, p0, Lnet/sf/saxon/expr/IsLastExpression;->n:Z

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/IsLastExpression;-><init>(Z)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/IsLastExpression;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/IsLastExpression;

    iget-boolean p1, p1, Lnet/sf/saxon/expr/IsLastExpression;->n:Z

    iget-boolean p0, p0, Lnet/sf/saxon/expr/IsLastExpression;->n:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/IsLastExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-boolean p0, p0, Lnet/sf/saxon/expr/IsLastExpression;->n:Z

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->isAtLast()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "isLast"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-boolean p0, p0, Lnet/sf/saxon/expr/IsLastExpression;->n:Z

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v0, "test"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCondition()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/IsLastExpression;->n:Z

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "isLast"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "IsLastExpr"

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/IsLastExpression;->n:Z

    if-eqz p0, :cond_0

    const-string p0, "position() eq last()"

    return-object p0

    :cond_0
    const-string p0, "position() ne last()"

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p0
.end method
