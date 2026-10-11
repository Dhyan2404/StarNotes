.class public Lnet/sf/saxon/style/XSLWhen;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLWhen;->v:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getCondition()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLWhen;->u:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public markTailCalls()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->B()Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->markTailCalls()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public prepareAttributes()V
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "test"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLWhen;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    const-string v2, "select"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLWhen;->v:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/style/XSLWhen;->u:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/style/XSLChooseOrSwitch;

    const-string v0, "XTSE0010"

    if-nez p1, :cond_0

    const-string p1, "xsl:when must be immediately within xsl:choose or xsl:switch"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "test"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLWhen;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLWhen;->u:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLWhen;->v:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "xsl:when element must be empty if @select is present"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
