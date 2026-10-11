.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method public traverseIdentityConstraint(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    const-string v11, "s4s-elt-must-match.2"

    const-string v12, "(annotation?, selector, field+)"

    const-string v13, "identity constraint"

    if-nez v10, :cond_0

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v11, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void

    :cond_0
    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_1

    move-object/from16 v4, p4

    invoke-virtual {v7, v10, v4, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    if-nez v10, :cond_2

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v11, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void

    :cond_1
    move-object/from16 v4, p4

    invoke-static/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    :cond_2
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "s4s-elt-must-match.1"

    if-nez v1, :cond_3

    filled-new-array {v13, v12, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v4, v1, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_3
    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v3, "(annotation?)"

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7, v1, v6, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v4, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_0
    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v4, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_5
    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v17, v3

    move-object v3, v14

    move-object v14, v4

    move-object v4, v6

    move-object v15, v5

    move/from16 v5, v16

    move-object v8, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    goto :goto_2

    :cond_6
    :goto_1
    move-object/from16 v17, v3

    move-object v14, v4

    move-object v15, v5

    move-object v8, v6

    :goto_2
    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v1, v8, v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "s4s-att-must-appear"

    if-nez v1, :cond_7

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    filled-new-array {v15, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v6, v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v4, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v2, v1, v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;

    invoke-direct {v3, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$XPath;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->setSelector(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v8, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_8

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v11, v2, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_8
    move-object v8, v1

    :goto_3
    if-eqz v8, :cond_e

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    filled-new-array {v13, v12, v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v14, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_9
    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v15, 0x0

    invoke-virtual {v7, v1, v10, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_4

    :cond_a
    const/4 v15, 0x0

    :goto_4
    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v17

    filled-new-array {v11, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v14, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_5

    :cond_b
    move-object/from16 v5, v17

    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v4, v10

    move-object/from16 v17, v5

    move/from16 v5, v16

    move-object v15, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    goto :goto_6

    :cond_c
    move-object/from16 v17, v5

    :goto_5
    move-object v15, v6

    :goto_6
    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v1, v10, v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_d

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    filled-new-array {v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v15, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v4, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v2, v1, v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;

    invoke-direct {v3, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->addField(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v8

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    move-object v6, v15

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    :cond_e
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v8, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-void
.end method
