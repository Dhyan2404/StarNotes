.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;
.source "SourceFile"


# instance fields
.field fDeferTraversingLocalElements:Z

.field protected final fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    return-void
.end method


# virtual methods
.method public reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    return-void
.end method

.method public traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 9

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->traverseNamedElement(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ZLcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object p1
.end method

.method public traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->getParticleDecl()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    if-eqz v1, :cond_2

    const/4 p3, 0x1

    .line 5
    iput-short p3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    .line 6
    sget-object p3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    invoke-interface {p3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p3

    .line 8
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_1

    .line 9
    iput p3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fillInLocalElemInfo(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xs/XSObject;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 11
    invoke-virtual/range {v1 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;[Ljava/lang/String;)V

    .line 12
    iget-short p0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    if-nez p0, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public traverseLocal(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;[Ljava/lang/String;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v0, p7

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;->setEffectiveContext([Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v12

    .line 15
    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v0, v12, v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 16
    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v1, v12, v1

    move-object v13, v1

    check-cast v13, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    .line 17
    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v12, v1

    move-object v14, v1

    check-cast v14, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    .line 18
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {v9, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 19
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v10, v2, v0, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 20
    invoke-static/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 21
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    invoke-virtual {p0, v2, v12, v11, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    .line 23
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_4

    .line 24
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "src-element.2.2"

    invoke-virtual {p0, v3, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->traverseNamedElement(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ZLcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v1

    .line 26
    :cond_4
    :goto_0
    invoke-virtual {v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 27
    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 28
    iput-short v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    .line 29
    iput-object v1, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    goto :goto_1

    .line 30
    :cond_5
    iput-short v11, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    .line 31
    :goto_1
    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/Long;

    .line 32
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->checkOccurrences(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Ljava/lang/String;Lorg/w3c/dom/Element;IJ)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    .line 33
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v12, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-void
.end method

.method public traverseNamedElement(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ZLcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v0, p6

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/Boolean;

    sget v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    aget-object v2, v3, v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v4, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v4, v3, v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    sget v4, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v4, v3, v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v5, v3, v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    sget v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    aget-object v5, v3, v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v12, v3, v12

    check-cast v12, Ljava/lang/String;

    sget v13, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    aget-object v13, v3, v13

    check-cast v13, Ljava/lang/Boolean;

    sget v14, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    aget-object v14, v3, v14

    check-cast v14, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget v15, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    aget-object v15, v3, v15

    check-cast v15, Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-object/from16 v16, v15

    iget-object v15, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v15, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->getElementDecl()Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v15

    goto :goto_0

    :cond_0
    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-direct {v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;-><init>()V

    :goto_0
    if-eqz v12, :cond_1

    iget-object v9, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v9, v12}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    :cond_1
    if-eqz p5, :cond_2

    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setIsGlobal()V

    goto :goto_1

    :cond_2
    instance-of v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eqz v9, :cond_3

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v15, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setIsLocal(Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)V

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    iget-boolean v5, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fAreLocalElementsQualified:Z

    if-eqz v5, :cond_6

    iget-object v5, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v5, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iput-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    :goto_1
    if-nez v2, :cond_7

    iget-short v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fBlockDefault:S

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->shortValue()S

    move-result v0

    :goto_2
    iput-short v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    if-nez v4, :cond_8

    iget-short v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->shortValue()S

    move-result v0

    :goto_3
    iget-short v2, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    const/4 v9, 0x7

    and-int/2addr v2, v9

    int-to-short v2, v2

    iput-short v2, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    const/4 v2, 0x3

    and-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fFinal:S

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setIsNillable()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setIsAbstract()V

    :cond_a
    const/4 v13, 0x0

    if-eqz v11, :cond_b

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iput-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setConstraintType(S)V

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    if-eqz v10, :cond_c

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iput-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setConstraintType(S)V

    goto :goto_4

    :cond_c
    const/4 v5, 0x1

    invoke-virtual {v15, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setConstraintType(S)V

    :goto_4
    if-eqz v14, :cond_d

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v8, v2, v14, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iput-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fSubGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v6, v4, v3, v13, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v4

    move/from16 v17, v5

    goto :goto_5

    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v18, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object/from16 v4, v18

    goto :goto_5

    :cond_f
    move-object/from16 v18, v4

    move/from16 v17, v5

    const/4 v0, 0x0

    :goto_5
    iput-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    if-eqz v4, :cond_11

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

    move-object/from16 v5, p4

    invoke-virtual {v0, v4, v8, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v4

    goto :goto_6

    :cond_10
    move-object/from16 v5, p4

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v0, v4, v8, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v0

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v4

    goto :goto_6

    :cond_11
    move-object/from16 v5, p4

    :cond_12
    move/from16 v17, v13

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_13

    if-eqz v16, :cond_13

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    move-object/from16 v3, v16

    invoke-virtual {v0, v8, v9, v3, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    goto :goto_7

    :cond_13
    move-object/from16 v3, v16

    :goto_7
    if-nez v0, :cond_14

    iget-object v1, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fSubGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v1, :cond_14

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    :cond_14
    if-nez v0, :cond_15

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    :cond_15
    move-object v9, v0

    iput-object v9, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz v4, :cond_1d

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v4

    move-object v4, v0

    :goto_8
    if-eqz v2, :cond_1c

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_16
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_9

    :cond_17
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v2, v8, v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->storeKeyRef(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)V

    goto/16 :goto_b

    :cond_18
    :goto_9
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;)V

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    invoke-virtual {v0, v2, v15, v8, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDUniqueOrKeyTraverser;->traverse(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v13, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v16, v3

    const-string v3, ","

    if-nez v13, :cond_19

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v18, v4

    goto :goto_a

    :cond_19
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    iget-object v4, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_a
    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getIDRegistry()Ljava/util/Hashtable;

    move-result-object v4

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getIDRegistry_sub()Ljava/util/Hashtable;

    move-result-object v13

    move-object v0, v1

    move-object v1, v3

    move-object/from16 v19, v2

    move-object v2, v4

    move-object v3, v13

    move-object/from16 v13, v18

    move-object/from16 v4, v19

    move-object v13, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_c

    :cond_1a
    :goto_b
    move-object/from16 v19, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object v13, v5

    :goto_c
    invoke-static/range {v19 .. v19}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v13

    move-object/from16 v3, v16

    goto :goto_d

    :cond_1b
    move-object v5, v13

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    :goto_d
    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v19, v2

    move-object/from16 v16, v3

    move-object v13, v5

    move-object/from16 v4, v19

    goto :goto_e

    :cond_1d
    move-object/from16 v16, v3

    move-object v13, v5

    :goto_e
    if-eqz p5, :cond_1e

    if-eqz v12, :cond_1e

    invoke-virtual {v13, v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)V

    :cond_1e
    if-nez v12, :cond_20

    if-eqz p5, :cond_1f

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-att-must-appear"

    invoke-virtual {v6, v1, v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_f

    :cond_1f
    const-string v0, "src-element.2.1"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_f
    const-string v12, "(no name)"

    :cond_20
    if-eqz v4, :cond_21

    const-string v0, "(annotation?, (simpleType | complexType)?, (unique | key | keyref)*))"

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v12, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {v6, v1, v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_21
    if-eqz v10, :cond_22

    if-eqz v11, :cond_22

    const-string v0, "src-element.1"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_22
    if-eqz v17, :cond_23

    if-eqz v16, :cond_23

    const-string v0, "src-element.3"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_23
    invoke-virtual {v6, v12, v9, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->checkNotationType(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Lorg/w3c/dom/Element;)V

    iget-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_24

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v1, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    iget-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v1, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-static {v0, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "e-props-correct.2"

    invoke-virtual {v6, v1, v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setConstraintType(S)V

    :cond_24
    iget-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fSubGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v0, :cond_25

    iget-object v1, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fFinal:S

    invoke-static {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->checkTypeDerivationOk(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;S)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v14, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "e-props-correct.4"

    invoke-virtual {v6, v1, v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_25
    iget-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_28

    invoke-interface {v9}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_26

    move-object v0, v9

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_26
    invoke-interface {v9}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_28

    check-cast v9, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->containsTypeID()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    iget-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "e-props-correct.5"

    invoke-virtual {v6, v1, v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_28
    iget-object v0, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-nez v0, :cond_29

    const/4 v0, 0x0

    return-object v0

    :cond_29
    return-object v15
.end method
