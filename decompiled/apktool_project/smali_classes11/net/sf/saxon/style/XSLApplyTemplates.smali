.class public Lnet/sf/saxon/style/XSLApplyTemplates;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# static fields
.field public static final synthetic Q:Z


# instance fields
.field public J:Lnet/sf/saxon/trans/Mode;

.field public O:Ljava/lang/String;

.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:Lnet/sf/saxon/om/StructuredQName;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->x:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->y:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->z:Z

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->M(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->y:Z

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->u:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_1

    new-instance v2, Lnet/sf/saxon/expr/sort/SortExpression;

    iget-object v3, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->u:Lnet/sf/saxon/expr/Expression;

    invoke-direct {v2, v3, v0}, Lnet/sf/saxon/expr/sort/SortExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    :cond_1
    move-object v5, v2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v11

    new-instance v2, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    iget-boolean v6, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->x:Z

    iget-boolean v7, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->y:Z

    iget-boolean v8, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->z:Z

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isWithinDeclaredStreamableConstruct()Z

    move-result v9

    iget-object v10, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->J:Lnet/sf/saxon/trans/Mode;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;-><init>(Lnet/sf/saxon/expr/Expression;ZZZZLnet/sf/saxon/trans/Mode;Lnet/sf/saxon/trans/rules/RuleManager;)V

    invoke-virtual {p0, v2, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->getWithParamInstructions(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {p0, v2, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->getWithParamInstructions(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setTunnelParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->v:Lnet/sf/saxon/expr/Expression;

    if-eqz p0, :cond_2

    invoke-virtual {v2, p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setSeparatorExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    return-object v2
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public markTailCalls()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->y:Z

    return v0
.end method

.method public prepareAttributes()V
    .locals 12

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "mode"

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v7

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "separator"

    sparse-switch v10, :sswitch_data_0

    :goto_1
    move v2, v4

    goto :goto_2

    :sswitch_0
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v5

    goto :goto_2

    :sswitch_2
    const-string v2, "select"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v6

    :cond_2
    :goto_2
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v7}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v11}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v1}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->v:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :pswitch_1
    invoke-static {v9}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->O:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v9, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->u:Lnet/sf/saxon/expr/Expression;

    iput-boolean v6, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->z:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->O:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_3
    move v2, v4

    goto :goto_4

    :sswitch_3
    const-string v1, "#current"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :sswitch_4
    const-string v1, "#unnamed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v5

    goto :goto_4

    :sswitch_5
    const-string v1, "#default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v6

    :cond_6
    :goto_4
    packed-switch v2, :pswitch_data_1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->O:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->w:Lnet/sf/saxon/om/StructuredQName;

    goto :goto_5

    :pswitch_3
    iput-boolean v5, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->x:Z

    goto :goto_5

    :pswitch_4
    sget-object v0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->w:Lnet/sf/saxon/om/StructuredQName;

    :cond_7
    :goto_5
    :pswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3600cb04 -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0x6748e2e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x70230742 -> :sswitch_5
        0x22f322bd -> :sswitch_4
        0x76f4dff6 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->x:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Lnet/sf/saxon/pattern/NameTest;

    const/16 v0, 0xd2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-direct {p1, v2, v0, v3}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "Specifying mode=\"#current\" when not inside an xsl:template serves no useful purpose"

    invoke-virtual {p0, p1, p0}, Lnet/sf/saxon/style/StyleElement;->issueWarning(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    iget-object v3, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->w:Lnet/sf/saxon/om/StructuredQName;

    const-string v4, "XTSE3085"

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->y()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->w:Lnet/sf/saxon/om/StructuredQName;

    if-eqz v3, :cond_1

    sget-object v5, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v3, v5}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->isDeclaredModes()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/trans/rules/RuleManager;->isUnnamedModeExplicit()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "The unnamed mode must be explicitly declared in an xsl:mode declaration"

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v5, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v3, v5}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->isDeclaredModes()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/trans/rules/RuleManager;->isUnnamedModeExplicit()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "The #unnamed mode must be explicitly declared in an xsl:mode declaration"

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    new-instance v3, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v5, 0xb4

    iget-object v6, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->w:Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v3, v5, v6}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/Component;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/trans/Mode;

    iput-object p1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->J:Lnet/sf/saxon/trans/Mode;

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->J:Lnet/sf/saxon/trans/Mode;

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->isDeclaredModes()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode name "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->w:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared in an xsl:mode declaration"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->w:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->J:Lnet/sf/saxon/trans/Mode;

    :cond_6
    :goto_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v4

    const-string v5, "XTSE0010"

    if-ne v4, v3, :cond_8

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "No character data is allowed within xsl:apply-templates"

    invoke-virtual {p0, v0, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    instance-of v3, v0, Lnet/sf/saxon/style/XSLSort;

    if-nez v3, :cond_7

    instance-of v3, v0, Lnet/sf/saxon/style/XSLWithParam;

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " within xsl:apply-templates"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->u:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_a

    new-instance p1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/16 v2, 0xd

    const-string v4, ""

    invoke-direct {v0, v2, v4, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v1, "XTTE0510"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    new-instance v1, Lnet/sf/saxon/expr/ItemChecker;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    new-instance p1, Lnet/sf/saxon/expr/SimpleStepExpression;

    new-instance v0, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-direct {p1, v1, v0}, Lnet/sf/saxon/expr/SimpleStepExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_a
    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->u:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->v:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_b

    const-string v0, "separator"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLApplyTemplates;->v:Lnet/sf/saxon/expr/Expression;

    :cond_b
    return-void
.end method
