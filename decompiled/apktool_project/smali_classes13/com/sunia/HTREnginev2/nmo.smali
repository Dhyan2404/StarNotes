.class public Lcom/sunia/HTREnginev2/nmo;
.super Lorg/apache/xerces/impl/xs/traversers/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/a;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method public q(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;[Ljava/lang/Object;)Z
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    const-string v11, "s4s-elt-must-match.2"

    const-string v12, "(annotation?, selector, field+)"

    const-string v13, "identity constraint"

    const/4 v14, 0x0

    if-nez v10, :cond_0

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v11, v0, v8}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return v14

    :cond_0
    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v15, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v4, p4

    if-eqz v1, :cond_1

    invoke-virtual {v7, v10, v4, v14, v9}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    if-nez v10, :cond_2

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v11, v0, v8}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return v14

    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_2
    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "s4s-elt-must-match.1"

    if-nez v1, :cond_3

    filled-new-array {v13, v12, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v5, v0, v10}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return v14

    :cond_3
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v14, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v3, "(annotation?)"

    if-eqz v1, :cond_5

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7, v1, v4, v14, v9}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v6, v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v5, v2, v1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_0
    if-eqz v1, :cond_6

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v6, v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v5, v2, v1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_5
    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v17, v3

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v18, v5

    move/from16 v5, v16

    move-object v14, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_2

    :cond_6
    :goto_1
    move-object/from16 v17, v3

    move-object v15, v4

    move-object/from16 v18, v5

    move-object v14, v6

    :goto_2
    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v1, v15, v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "s4s-att-must-appear"

    if-nez v1, :cond_7

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    filled-new-array {v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v6, v0, v10}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_3
    const/4 v1, 0x0

    return v1

    :cond_7
    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/apache/xerces/impl/xs/identity/Selector$XPath;

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/a;->b:Lorg/apache/xerces/util/SymbolTable;

    iget-object v4, v9, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/xerces/impl/xs/identity/Selector$XPath;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V

    new-instance v3, Lorg/apache/xerces/impl/xs/identity/Selector;

    invoke-direct {v3, v2, v0}, Lorg/apache/xerces/impl/xs/identity/Selector;-><init>(Lorg/apache/xerces/impl/xs/identity/Selector$XPath;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->setSelector(Lorg/apache/xerces/impl/xs/identity/Selector;)V
    :try_end_0
    .catch Lorg/apache/xerces/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_8

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v11, v0, v10}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_8
    move-object v10, v1

    :goto_4
    if-nez v10, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v14, 0x1

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    return v14

    :cond_a
    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    filled-new-array {v13, v12, v11}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v14, v18

    invoke-virtual {v7, v14, v1, v10}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    goto :goto_4

    :cond_b
    move-object/from16 v14, v18

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v15

    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v7, v1, v15, v2, v9}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_c
    if-eqz v1, :cond_d

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v17

    filled-new-array {v11, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v14, v2, v1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_6

    :cond_d
    move-object/from16 v5, v17

    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v4, v15

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object v8, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_7

    :cond_e
    :goto_6
    move-object/from16 v18, v5

    move-object v8, v6

    :goto_7
    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v1, v15, v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_f

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    filled-new-array {v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v8, v0, v10}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_8
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    goto/16 :goto_3

    :cond_f
    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    new-instance v2, Lorg/apache/xerces/impl/xs/identity/Field$XPath;

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/a;->b:Lorg/apache/xerces/util/SymbolTable;

    iget-object v4, v9, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/xerces/impl/xs/identity/Field$XPath;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V

    new-instance v3, Lorg/apache/xerces/impl/xs/identity/Field;

    invoke-direct {v3, v2, v0}, Lorg/apache/xerces/impl/xs/identity/Field;-><init>(Lorg/apache/xerces/impl/xs/identity/Field$XPath;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->addField(Lorg/apache/xerces/impl/xs/identity/Field;)V
    :try_end_1
    .catch Lorg/apache/xerces/impl/xpath/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    move-object v6, v8

    move-object/from16 v17, v18

    move-object/from16 v8, p2

    move-object/from16 v18, v14

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v10}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v10}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    goto/16 :goto_3
.end method
