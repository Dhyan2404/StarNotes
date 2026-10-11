.class public final Lnet/sf/saxon/style/XSLComment;
.super Lnet/sf/saxon/style/XSLLeafNodeConstructor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/instruct/Comment;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/Comment;-><init>()V

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v2, Lnet/sf/saxon/value/StringValue;->SINGLE_SPACE:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->compileContent(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public getErrorCodeForSelectPlusContent()Ljava/lang/String;
    .locals 0

    const-string p0, "XTSE0940"

    return-object p0
.end method

.method public prepareAttributes()V
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "select"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "select"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method
