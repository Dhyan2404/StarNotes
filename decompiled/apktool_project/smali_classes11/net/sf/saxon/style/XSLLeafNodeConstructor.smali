.class public abstract Lnet/sf/saxon/style/XSLLeafNodeConstructor;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field protected select:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public static makeSimpleContentConstructor(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/expr/AdjacentTextNodeMerger;->makeAdjacentTextNodeMerger(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance v1, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v1, p0, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {v1, p0, p2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverterStatically(Lnet/sf/saxon/Configuration;Z)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    const/16 v2, 0x4000

    if-eq p0, v2, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [Lnet/sf/saxon/expr/Expression;

    aput-object v1, p0, p2

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "string-join"

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public compileContent(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;Lnet/sf/saxon/expr/Expression;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance p4, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v0, Lnet/sf/saxon/value/StringValue;->SINGLE_SPACE:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p4, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->makeSimpleContentConstructor(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_0
    return-void
.end method

.method public abstract getErrorCodeForSelectPlusContent()Ljava/lang/String;
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributesNameAndSelect()Lnet/sf/saxon/expr/Expression;
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "name"

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v7}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v4, "select"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v7, v3}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_3
    return-object v2
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->getErrorCodeForSelectPlusContent()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " element with a select attribute must be empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->I()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    if-ne v0, p1, :cond_2

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_2
    :goto_0
    return-void
.end method
