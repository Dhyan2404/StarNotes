.class public Lnet/sf/saxon/style/TextValueTemplateContext;
.super Lnet/sf/saxon/style/ExpressionContext;
.source "SourceFile"


# instance fields
.field public i:Lnet/sf/saxon/style/TextValueTemplateNode;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/style/TextValueTemplateNode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/style/ExpressionContext;-><init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/om/StructuredQName;)V

    iput-object p2, p0, Lnet/sf/saxon/style/TextValueTemplateContext;->i:Lnet/sf/saxon/style/TextValueTemplateNode;

    return-void
.end method


# virtual methods
.method public bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/TextValueTemplateContext;->c(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/style/ExpressionContext;->bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/style/SourceBinding;->registerReference(Lnet/sf/saxon/expr/BindingReference;)V

    return-object p0
.end method

.method public final c(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/style/TextValueTemplateContext;->i:Lnet/sf/saxon/style/TextValueTemplateNode;

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/sf/saxon/style/XSLGeneralVariable;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/style/XSLGeneralVariable;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/StyleElement;->getBindingInformation(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
