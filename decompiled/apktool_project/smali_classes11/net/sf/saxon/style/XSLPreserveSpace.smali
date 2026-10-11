.class public Lnet/sf/saxon/style/XSLPreserveSpace;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 11

    const-string p1, "*"

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result v0

    const/16 v1, 0xc7

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/sf/saxon/event/Stripper;->PRESERVE:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/sf/saxon/event/Stripper;->STRIP:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->getStripperRules()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-instance v2, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;

    invoke-direct {v2, v4}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;-><init>(Z)V

    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StylesheetPackage;->setStripperRules(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_1
    check-cast v2, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;

    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lnet/sf/saxon/style/XSLPreserveSpace;->u:Ljava/lang/String;

    const-string v5, " \t\n\r"

    const/4 v6, 0x0

    invoke-direct {v1, v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getModule()Lnet/sf/saxon/style/StylesheetModule;

    move-result-object v5

    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v7

    invoke-virtual {v2, v3, v0, v5, v7}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->addRule(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/event/Stripper$StripRuleTarget;Lnet/sf/saxon/style/StylesheetModule;I)V

    goto :goto_1

    :cond_2
    const-string v5, "Q{"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_6

    const/16 v5, 0x7d

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_3

    const-string v3, "No closing \'}\' in EQName"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v4

    if-ne v5, v8, :cond_4

    const-string v3, "Missing local part in EQName"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v3, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v5

    invoke-direct {v3, v5, v4, v7}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v5, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v8

    invoke-direct {v5, v4, v7, v3, v8}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    move-object v3, v5

    :goto_2
    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getModule()Lnet/sf/saxon/style/StylesheetModule;

    move-result-object v5

    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v7

    invoke-virtual {v2, v3, v0, v5, v7}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->addRule(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/event/Stripper$StripRuleTarget;Lnet/sf/saxon/style/StylesheetModule;I)V

    goto :goto_1

    :cond_6
    const-string v5, ":*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "elements"

    const-string v9, "XTSE0280"

    if-eqz v5, :cond_9

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_7

    const-string v5, "No prefix before \':*\'"

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {p0, v3, v9, v8}, Lnet/sf/saxon/style/StyleElement;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v3, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    invoke-direct {v3, v7, v4, v5}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getModule()Lnet/sf/saxon/style/StylesheetModule;

    move-result-object v5

    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v7

    invoke-virtual {v2, v3, v0, v5, v7}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->addRule(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/event/Stripper$StripRuleTarget;Lnet/sf/saxon/style/StylesheetModule;I)V

    goto/16 :goto_1

    :cond_9
    const-string v5, "*:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_a

    const-string v5, "No local name after \'*:\'"

    const-string v9, "XTSE0010"

    invoke-virtual {p0, v5, v9, v8}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lnet/sf/saxon/pattern/LocalNameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    invoke-direct {v5, v7, v4, v3}, Lnet/sf/saxon/pattern/LocalNameTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getModule()Lnet/sf/saxon/style/StylesheetModule;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v7

    invoke-virtual {v2, v5, v0, v3, v7}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->addRule(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/event/Stripper$StripRuleTarget;Lnet/sf/saxon/style/StylesheetModule;I)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :cond_b
    :try_start_2
    invoke-static {v3}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v5, v6

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDefaultXPathNamespace()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v7, v6}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_d

    invoke-virtual {p0, v7, v9, v8}, Lnet/sf/saxon/style/StyleElement;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-object v7, v10

    :goto_3
    aget-object v3, v5, v4
    :try_end_2
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v5

    invoke-virtual {v5, v7, v3}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v5, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    invoke-direct {v5, v4, v3, v7}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getModule()Lnet/sf/saxon/style/StylesheetModule;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v7

    invoke-virtual {v2, v5, v0, v3, v7}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->addRule(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/event/Stripper$StripRuleTarget;Lnet/sf/saxon/style/StylesheetModule;I)V

    goto/16 :goto_1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Element name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a valid QName"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v9}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_e
    return-void
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result p1

    const/16 v0, 0xcd

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result p1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    const-string v0, "elements"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StylesheetPackage;->setStripsWhitespace(Z)V

    :cond_0
    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

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

    const-string v2, "elements"

    if-eqz v1, :cond_1

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

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLPreserveSpace;->u:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/XSLPreserveSpace;->u:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    const-string v0, "*"

    iput-object v0, p0, Lnet/sf/saxon/style/XSLPreserveSpace;->u:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->checkEmpty()V

    const-string p1, "XTSE0010"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    return-void
.end method
