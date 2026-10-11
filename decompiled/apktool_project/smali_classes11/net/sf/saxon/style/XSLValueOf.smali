.class public final Lnet/sf/saxon/style/XSLValueOf;
.super Lnet/sf/saxon/style/XSLLeafNodeConstructor;
.source "SourceFile"


# instance fields
.field public u:Z

.field public v:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLValueOf;->u:Z

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLValueOf;->v:Lnet/sf/saxon/expr/Expression;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/TypeChecker;->processValueOf(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLValueOf;->v:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v1, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLValueOf;->v:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v1, Lnet/sf/saxon/value/StringValue;->SINGLE_SPACE:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLValueOf;->v:Lnet/sf/saxon/expr/Expression;

    :cond_2
    :goto_0
    new-instance v0, Lnet/sf/saxon/expr/instruct/ValueOf;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    iget-boolean v2, p0, Lnet/sf/saxon/style/XSLValueOf;->u:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v1, p0, Lnet/sf/saxon/style/XSLValueOf;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->compileContent(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public getErrorCodeForSelectPlusContent()Ljava/lang/String;
    .locals 0

    const-string p0, "XTSE0870"

    return-object p0
.end method

.method public prepareAttributes()V
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "disable-output-escaping"

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "separator"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "select"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v6, v2}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLValueOf;->v:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v6, v2}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :pswitch_2
    invoke-static {v6}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0, v3, v1}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLValueOf;->u:Z

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6b26309b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        0x6748e2e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    const-string p1, "separator"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLValueOf;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLValueOf;->v:Lnet/sf/saxon/expr/Expression;

    return-void
.end method
