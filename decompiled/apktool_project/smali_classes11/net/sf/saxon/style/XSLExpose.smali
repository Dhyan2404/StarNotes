.class public Lnet/sf/saxon/style/XSLExpose;
.super Lnet/sf/saxon/style/XSLAcceptExpose;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;-><init>()V

    return-void
.end method

.method public static isCompatible(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p0, p1, :cond_8

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-ne p0, v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lnet/sf/saxon/style/XSLExpose$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p0, :cond_3

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    sget-object p0, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    :cond_6
    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p0, :cond_8

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p0, :cond_8

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    return v0
.end method


# virtual methods
.method public checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V
    .locals 2

    invoke-static {p2, p3}, Lnet/sf/saxon/style/XSLExpose;->isCompatible(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is declared as "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/trans/Err;->describeVisibility(Lnet/sf/saxon/trans/Visibility;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and cannot be exposed as "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lnet/sf/saxon/trans/Err;->describeVisibility(Lnet/sf/saxon/trans/Visibility;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTSE3010"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getExplicitComponentTests()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/ComponentTest;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/ComponentTest;->getQNameTest()Lnet/sf/saxon/pattern/QNameTest;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v4, :cond_0

    check-cast v3, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v3}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sf/saxon/trans/ComponentTest;->getComponentKind()I

    move-result v5

    const/16 v6, 0xa0

    if-ne v5, v6, :cond_1

    new-instance v7, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {v3}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    invoke-virtual {v2}, Lnet/sf/saxon/trans/ComponentTest;->getArity()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    goto :goto_1

    :cond_1
    new-instance v7, Lnet/sf/saxon/trans/SymbolicName;

    invoke-virtual {v3}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    :goto_1
    const/16 v8, 0x8a

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v5, v8, :cond_f

    if-eq v5, v6, :cond_a

    const/16 v2, 0xb4

    if-eq v5, v2, :cond_7

    const/16 v2, 0xd2

    if-eq v5, v2, :cond_5

    const/16 v2, 0xda

    if-eq v5, v2, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-virtual {p1, v4}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getGlobalVariableBinding(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lnet/sf/saxon/style/SourceBinding;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/style/XSLGlobalParam;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v9, v10

    :goto_2
    if-eqz v9, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/style/SourceBinding;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLGlobalVariable;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLGlobalVariable;->getCompiledVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lnet/sf/saxon/style/XSLExpose;->checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V

    :cond_4
    :goto_3
    move v10, v9

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p1, v4}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getNamedTemplate(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/NamedTemplate;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v9, v10

    :goto_4
    if-eqz v9, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v0}, Lnet/sf/saxon/style/XSLExpose;->checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v2

    invoke-virtual {v2, v4, v10}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move v9, v10

    :goto_5
    if-eqz v9, :cond_9

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v3

    invoke-virtual {p0, v7, v2, v3}, Lnet/sf/saxon/style/XSLExpose;->checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne v2, v3, :cond_4

    const-string v2, "The visibility of a mode cannot be abstract"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sf/saxon/trans/ComponentTest;->getArity()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_d

    move v2, v10

    :goto_6
    invoke-virtual {v4}, Lnet/sf/saxon/style/StylesheetPackage;->getMaxFunctionArity()I

    move-result v5

    if-gt v10, v5, :cond_c

    new-instance v7, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {v3}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-direct {v7, v5, v10}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-virtual {v4, v7}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v5

    invoke-virtual {p0, v7, v2, v5}, Lnet/sf/saxon/style/XSLExpose;->checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V

    move v2, v9

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    move v10, v2

    goto :goto_9

    :cond_d
    invoke-virtual {v4, v7}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    move v9, v10

    :goto_7
    if-eqz v9, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v3

    invoke-virtual {p0, v7, v2, v3}, Lnet/sf/saxon/style/XSLExpose;->checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V

    goto/16 :goto_3

    :cond_f
    invoke-virtual {p1, v4}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getAttributeSetDeclarations(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_8

    :cond_10
    move v9, v10

    :goto_8
    if-eqz v9, :cond_4

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/StyleElement;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v3

    invoke-virtual {p0, v7, v2, v3}, Lnet/sf/saxon/style/XSLExpose;->checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V

    goto/16 :goto_3

    :goto_9
    if-nez v10, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " exists in the containing package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XTSE3020"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    return-void
.end method
