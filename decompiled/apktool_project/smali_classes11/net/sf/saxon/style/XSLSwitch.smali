.class public Lnet/sf/saxon/style/XSLSwitch;
.super Lnet/sf/saxon/style/XSLChooseOrSwitch;
.source "SourceFile"


# instance fields
.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:Lnet/sf/saxon/expr/LetExpression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLChooseOrSwitch;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vv"

    const-string v4, "http://saxon.sf.net/generated-variable"

    invoke-direct {v1, v3, v4, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSwitch;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLSwitch;->x:Lnet/sf/saxon/expr/LetExpression;

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/style/XSLChooseOrSwitch;->compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/style/XSLSwitch;->x:Lnet/sf/saxon/expr/LetExpression;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLSwitch;->x:Lnet/sf/saxon/expr/LetExpression;

    return-object p0
.end method

.method public compileConditions(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;[Lnet/sf/saxon/expr/Expression;)V
    .locals 4

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v1, v0, Lnet/sf/saxon/style/XSLWhen;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/style/XSLWhen;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLWhen;->getCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/GeneralComparison20;

    new-instance v2, Lnet/sf/saxon/expr/LocalVariableReference;

    iget-object v3, p0, Lnet/sf/saxon/style/XSLSwitch;->x:Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v0}, Lnet/sf/saxon/expr/GeneralComparison20;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    aput-object v1, p3, p2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, v0, Lnet/sf/saxon/style/XSLOtherwise;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    aput-object v0, p3, p2

    goto :goto_1

    :cond_2
    return-void
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

    const-string v2, "select"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLSwitch;->w:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/XSLSwitch;->w:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "switch"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    const-string v0, "select"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSwitch;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLSwitch;->w:Lnet/sf/saxon/expr/Expression;

    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLChooseOrSwitch;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method
