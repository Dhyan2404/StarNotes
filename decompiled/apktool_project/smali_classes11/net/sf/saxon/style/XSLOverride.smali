.class public Lnet/sf/saxon/style/XSLOverride;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# static fields
.field public static final synthetic u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public addXSLOverrideFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V
    .locals 0

    invoke-static {}, Lnet/sf/saxon/style/XSLOriginalLibrary;->getInstance()Lnet/sf/saxon/style/XSLOriginalLibrary;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    return-void
.end method

.method public postValidate()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/XSLUsePackage;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLUsePackage;->getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v2, v1, Lnet/sf/saxon/style/XSLFunction;

    if-nez v2, :cond_1

    instance-of v2, v1, Lnet/sf/saxon/style/XSLTemplate;

    if-nez v2, :cond_1

    instance-of v2, v1, Lnet/sf/saxon/style/XSLGlobalVariable;

    if-nez v2, :cond_1

    instance-of v2, v1, Lnet/sf/saxon/style/XSLAttributeSet;

    if-eqz v2, :cond_0

    :cond_1
    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-interface {v2}, Lnet/sf/saxon/style/StylesheetComponent;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v3

    if-nez v3, :cond_6

    instance-of v2, v1, Lnet/sf/saxon/style/XSLTemplate;

    const-string v3, "XTSE3440"

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/style/XSLTemplate;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLTemplate;->getMatch()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "An overriding template with no name must have a match pattern"

    invoke-virtual {v2, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLTemplate;->getModeNames()[Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    sget-object v8, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v7, v8}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v7, v1

    check-cast v7, Lnet/sf/saxon/style/StyleElement;

    const-string v8, "An overriding template rule must not specify mode=\"#all\""

    invoke-virtual {v7, v8, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v8, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v7, v8}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/style/StyleElement;->y()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    invoke-virtual {v7, v8}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v1

    check-cast v7, Lnet/sf/saxon/style/StyleElement;

    const-string v8, "An overriding template rule must not belong to the unnamed mode"

    invoke-virtual {v7, v8, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    const-string p0, "An overriding component (other than a template rule) must have a name"

    invoke-virtual {v1, p0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLUsePackage;->getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v4

    const-string v5, " named "

    if-nez v4, :cond_7

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is no "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SymbolicName;->getComponentKind()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/om/StandardNames;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SymbolicName;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in the used package"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XTSE3058"

    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-ne v6, v7, :cond_8

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    :cond_8
    sget-object v7, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-eq v6, v7, :cond_a

    sget-object v7, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-ne v6, v7, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v2, v4}, Lnet/sf/saxon/style/StylesheetComponent;->checkCompatibility(Lnet/sf/saxon/expr/Component;)V

    goto/16 :goto_0

    :cond_a
    :goto_3
    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SymbolicName;->getComponentKind()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/om/StandardNames;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SymbolicName;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in the used package cannot be overridden because its visibility is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lnet/sf/saxon/trans/Err;->describeVisibility(Lnet/sf/saxon/trans/Visibility;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XTSE3060"

    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public prepareAttributes()V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "XTSE0010"

    if-ne v1, v2, :cond_1

    const-string v0, "Character content is not allowed as a child of xsl:override"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/style/XSLFunction;

    if-nez v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/style/XSLTemplate;

    if-nez v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/style/XSLGlobalVariable;

    if-nez v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/style/XSLAttributeSet;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Element "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed as a child of xsl:override"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
