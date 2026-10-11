.class public Lnet/sf/saxon/style/XSLWithParam;
.super Lnet/sf/saxon/style/XSLGeneralVariable;
.source "SourceFile"


# instance fields
.field public final u:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lnet/sf/saxon/style/SourceBinding$BindingProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLGeneralVariable;-><init>()V

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->SELECT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->AS:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLWithParam;->u:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public checkAgainstRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/SourceBinding;->checkAgainstRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    return-void
.end method

.method public compileWithParam(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0, p2, p3}, Lnet/sf/saxon/style/SourceBinding;->handleSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    new-instance p2, Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-direct {p2}, Lnet/sf/saxon/expr/instruct/WithParam;-><init>()V

    iget-object p3, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p3}, Lnet/sf/saxon/style/SourceBinding;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lnet/sf/saxon/expr/instruct/WithParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p1}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/WithParam;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/SourceBinding;->getInferredType(Z)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/instruct/WithParam;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    return-object p2
.end method

.method public isTunnelParam()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result p0

    return p0
.end method

.method public prepareAttributes()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    iget-object p0, p0, Lnet/sf/saxon/style/XSLWithParam;->u:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/style/SourceBinding;->prepareAttributes(Ljava/util/EnumSet;)V

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLGeneralVariable;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/sf/saxon/style/XSLWithParam;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    check-cast v0, Lnet/sf/saxon/style/XSLWithParam;

    iget-object v0, v0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Duplicate parameter name"

    const-string v1, "XTSE0670"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
