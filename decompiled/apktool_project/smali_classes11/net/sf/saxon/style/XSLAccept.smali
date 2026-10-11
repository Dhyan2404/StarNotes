.class public Lnet/sf/saxon/style/XSLAccept;
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

    sget-object v0, Lnet/sf/saxon/style/XSLAccept$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_7

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p0, :cond_2

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p0, :cond_2

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :cond_4
    sget-object p0, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p0, :cond_5

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, p0, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    return v0

    :cond_7
    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p0, :cond_8

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p0, :cond_8

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p0, :cond_8

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, p0, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    return v0
.end method


# virtual methods
.method public checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V
    .locals 2

    invoke-static {p2, p3}, Lnet/sf/saxon/style/XSLAccept;->isCompatible(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)Z

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

    const-string p1, " and cannot be accepted as "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lnet/sf/saxon/trans/Err;->describeVisibility(Lnet/sf/saxon/trans/Visibility;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTSE3040"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public prepareAttributes()V
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->prepareAttributes()V

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/style/XSLUsePackage;

    if-nez v0, :cond_0

    const-string p1, "Parent of xsl:accept must be xsl:use-package"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lnet/sf/saxon/style/XSLUsePackage;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLUsePackage;->getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getExplicitComponentTests()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/ComponentTest;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/ComponentTest;->getQNameTest()Lnet/sf/saxon/pattern/QNameTest;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/ComponentTest;->getComponentKind()I

    move-result v3

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_2

    new-instance v5, Lnet/sf/saxon/trans/SymbolicName$F;

    move-object v6, v2

    check-cast v6, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v6}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v1}, Lnet/sf/saxon/trans/ComponentTest;->getArity()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    goto :goto_1

    :cond_2
    new-instance v5, Lnet/sf/saxon/trans/SymbolicName;

    move-object v6, v2

    check-cast v6, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v6}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    :goto_1
    invoke-virtual {p1, v5}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    const/4 v6, 0x0

    if-ne v3, v4, :cond_5

    invoke-virtual {v1}, Lnet/sf/saxon/trans/ComponentTest;->getArity()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    move v1, v6

    :goto_2
    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getMaxFunctionArity()I

    move-result v3

    if-gt v6, v3, :cond_4

    new-instance v5, Lnet/sf/saxon/trans/SymbolicName$F;

    move-object v3, v2

    check-cast v3, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v3}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-direct {v5, v3, v6}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-virtual {p1, v5}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v3

    invoke-virtual {p0, v5, v1, v3}, Lnet/sf/saxon/style/XSLAccept;->checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V

    move v1, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v7, v1

    goto :goto_3

    :cond_5
    move v7, v6

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v2

    invoke-virtual {p0, v5, v1, v2}, Lnet/sf/saxon/style/XSLAccept;->checkCompatibility(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/Visibility;)V

    :goto_3
    if-nez v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/sf/saxon/trans/SymbolicName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exists in the used package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XTSE3030"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method
