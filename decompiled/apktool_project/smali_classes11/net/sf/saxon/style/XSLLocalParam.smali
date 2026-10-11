.class public Lnet/sf/saxon/style/XSLLocalParam;
.super Lnet/sf/saxon/style/XSLGeneralVariable;
.source "SourceFile"


# instance fields
.field public u:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lnet/sf/saxon/style/SourceBinding$BindingProperty;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:I

.field public x:Lnet/sf/saxon/expr/instruct/LocalParam;

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLGeneralVariable;-><init>()V

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->SELECT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v3, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->AS:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLLocalParam;->u:Ljava/util/EnumSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLLocalParam;->v:Lnet/sf/saxon/expr/Expression;

    const/16 v0, -0x2694

    iput v0, p0, Lnet/sf/saxon/style/XSLLocalParam;->w:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLLocalParam;->y:Z

    return-void
.end method

.method public static synthetic Z(Lnet/sf/saxon/style/XSLLocalParam;Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/style/XSLLocalParam;->a0(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method private synthetic a0(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/style/XSLLocalParam;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/style/XSLLocalParam;

    iget-object p2, p2, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p2}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "The name of the parameter is not unique"

    const-string p2, "XTSE0580"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lnet/sf/saxon/style/StyleElement;

    const-string v0, "XTSE0010"

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result p1

    const/16 v1, 0x91

    if-eq p1, v1, :cond_1

    const-string p1, "xsl:param must not be preceded by other instructions"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "xsl:param must not be preceded by text"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/style/XSLFunction;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLLocalParam;->getSlotNumber()I

    move-result v2

    if-eqz v0, :cond_1

    new-instance v3, Lnet/sf/saxon/expr/SuppliedParameterReference;

    invoke-direct {v3, v2}, Lnet/sf/saxon/expr/SuppliedParameterReference;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    new-instance v4, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/16 v5, 0x8

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v5, "XTTE0590"

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {v5, v7}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v6

    invoke-virtual {v5, v3, v0, v4, v6}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLLocalParam;->v:Lnet/sf/saxon/expr/Expression;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/style/SourceBinding;->handleSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    new-instance p1, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-direct {p1}, Lnet/sf/saxon/expr/instruct/LocalParam;-><init>()V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p2}, Lnet/sf/saxon/style/SourceBinding;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/LocalParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLLocalParam;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/LocalParam;->setConversion(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/LocalParam;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/instruct/LocalParam;->setSlotNumber(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/LocalParam;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/LocalParam;->setRequiredParam(Z)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->IMPLICITLY_REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/LocalParam;->setImplicitlyRequiredParam(Z)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/LocalParam;->setTunnel(Z)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/style/SourceBinding;->fixupBinding(Lnet/sf/saxon/expr/Binding;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLLocalParam;->x:Lnet/sf/saxon/expr/instruct/LocalParam;

    return-object p1
.end method

.method public fixupReferences()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->fixupReferences(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    invoke-super {p0}, Lnet/sf/saxon/style/StyleElement;->fixupReferences()V

    return-void
.end method

.method public getBindingInformation(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCompiledParam()Lnet/sf/saxon/expr/instruct/LocalParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLLocalParam;->x:Lnet/sf/saxon/expr/instruct/LocalParam;

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->getDeclaredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/style/XSLLocalParam;->w:I

    return p0
.end method

.method public isRequiredParam()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result p0

    return p0
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
    .locals 3

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLLocalParam;->y:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLLocalParam;->y:Z

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->PARAM:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/style/XSLFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLLocalParam;->u:Ljava/util/EnumSet;

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->SELECT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->DISALLOWS_CONTENT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLLocalParam;->u:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->prepareAttributes(Ljava/util/EnumSet;)V

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v0

    const-string v1, "XTSE0020"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/style/XSLTemplate;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For attribute \'tunnel\' within an "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parameter, the only permitted value is \'no\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/style/XSLFunction;

    if-eqz v0, :cond_2

    const-string v0, ""

    const-string v2, "required"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For attribute \'required\' within an "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parameter, the only permitted value is \'yes\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public prepareTemplateSignatureAttributes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLLocalParam;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->PARAM:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/SourceBinding;->setProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;Z)V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->prepareTemplateSignatureAttributes()V

    :cond_0
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/style/StyleElement;

    const-string v3, "XTSE0010"

    if-eqz v2, :cond_0

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->mayContainParam()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "xsl:param must be immediately within a template, function or stylesheet"

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/style/XSLFunction;

    if-eqz v1, :cond_2

    const-string v1, "Function parameters cannot have a default value"

    const-string v2, "XTSE0760"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/sqo;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/sqo;-><init>(Lnet/sf/saxon/style/XSLLocalParam;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-static {v1, v2}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getContainingSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "Local variable must be declared within a template or function"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLLocalParam;->w:I

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "The select attribute must be omitted when required=\'yes\'"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "A parameter specifying required=\'yes\' must have empty content"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLGeneralVariable;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method
