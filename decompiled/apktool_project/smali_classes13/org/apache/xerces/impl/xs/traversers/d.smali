.class public Lorg/apache/xerces/impl/xs/traversers/d;
.super Lcom/sunia/HTREnginev2/omo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/omo;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method public v(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSGroupDecl;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v10

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, v10, v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    const-string v12, "group (global)"

    if-nez v11, :cond_0

    const-string v0, "name"

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "s4s-att-must-appear"

    invoke-virtual {v6, v2, v0, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    new-instance v13, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    invoke-direct {v13}, Lorg/apache/xerces/impl/xs/XSGroupDecl;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v14

    const-string v15, "s4s-elt-must-match.2"

    const/16 v16, 0x0

    const-string v5, "(annotation?, (all | choice | sequence))"

    if-nez v14, :cond_1

    filled-new-array {v12, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15, v0, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, v16

    move-object v1, v0

    goto/16 :goto_3

    :cond_1
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6, v14, v10, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v14}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v19, v14

    move-object v14, v5

    move-object/from16 v5, v19

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v10

    move-object/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v17, v14

    move-object v14, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    move-object/from16 v17, v0

    goto :goto_0

    :cond_4
    move-object/from16 v18, v4

    move-object/from16 v17, v14

    move-object v14, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v16

    :goto_0
    const-string v3, "s4s-elt-must-match.1"

    if-nez v5, :cond_5

    filled-new-array {v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15, v0, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move-object v15, v3

    move-object v1, v5

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move-object v15, v3

    move-object/from16 v3, p3

    move-object/from16 v18, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/omo;->r(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    move-object/from16 v1, v18

    goto :goto_2

    :cond_6
    move-object v15, v3

    move-object/from16 v18, v5

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/omo;->s(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_2

    :cond_7
    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/omo;->u(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-static/range {v18 .. v18}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v6, v15, v0, v1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_1
    move-object/from16 v0, v16

    :goto_2
    if-eqz v1, :cond_9

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v14, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v6, v15, v2, v1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_9
    move-object/from16 v1, v17

    :goto_3
    if-eqz v11, :cond_f

    iput-object v11, v13, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    iget-object v2, v8, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iput-object v2, v13, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-static {}, Lorg/apache/xerces/impl/xs/XSConstraints;->getEmptySequence()Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    :cond_a
    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    check-cast v0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v0, v13, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    if-eqz v1, :cond_b

    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    goto :goto_4

    :cond_b
    sget-object v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_4
    iput-object v0, v13, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iget-object v0, v13, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {v9, v13}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;)V

    :cond_c
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lcom/sunia/HTREnginev2/tmo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v13, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {v9, v13, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    :cond_d
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v2, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-eqz v2, :cond_10

    if-eqz v1, :cond_e

    move-object v13, v1

    :cond_e
    invoke-virtual {v0, v13}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i(Lorg/apache/xerces/impl/xs/XSGroupDecl;)V

    goto :goto_5

    :cond_f
    move-object/from16 v13, v16

    :cond_10
    :goto_5
    if-eqz v13, :cond_11

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    new-instance v1, Lorg/apache/xerces/xni/QName;

    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iget-object v3, v8, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-direct {v1, v2, v11, v11, v3}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, v8, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l0(ILorg/apache/xerces/xni/QName;Lcom/sunia/HTREnginev2/tmo;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;)Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v1

    invoke-virtual {v9, v13, v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addRedefinedGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;Lorg/apache/xerces/impl/xs/XSGroupDecl;Lorg/apache/xerces/impl/xs/util/SimpleLocator;)V

    :cond_11
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-object v13
.end method

.method public w(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v9

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v0, v9, v0

    move-object v10, v0

    check-cast v10, Lorg/apache/xerces/xni/QName;

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v0, v9, v0

    move-object v11, v0

    check-cast v11, Lorg/apache/xerces/impl/xs/util/XInt;

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v0, v9, v0

    move-object v12, v0

    check-cast v12, Lorg/apache/xerces/impl/xs/util/XInt;

    const-string v13, "group (local)"

    const/4 v14, 0x0

    if-nez v10, :cond_0

    const-string v0, "ref"

    filled-new-array {v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "s4s-att-must-appear"

    invoke-virtual {v7, v2, v0, v6}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move-object v15, v14

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v8, v2, v10, v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-object v15, v0

    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v5, v9, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v9

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object/from16 v16, v5

    move-object v5, v14

    :goto_2
    if-eqz v16, :cond_3

    const-string v0, "(annotation?)"

    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v13, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {v7, v1, v0, v6}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_3
    invoke-virtual {v11}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    invoke-virtual {v12}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-eqz v15, :cond_9

    iget-object v2, v15, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    if-eqz v2, :cond_9

    if-nez v0, :cond_4

    if-eqz v1, :cond_9

    :cond_4
    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lorg/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->getParticleDecl()Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v2

    goto :goto_3

    :cond_5
    new-instance v2, Lorg/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lorg/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    :goto_3
    const/4 v3, 0x3

    iput-short v3, v2, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v3, v15, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v3, v2, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    iput v0, v2, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, v2, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget-short v0, v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x67

    if-ne v0, v1, :cond_6

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v0, v9, v0

    check-cast v0, Ljava/lang/Long;

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/Element;

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    move-object v14, v5

    move-wide v5, v11

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->e(Lorg/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lorg/w3c/dom/Element;IJ)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v14, v5

    move-object v0, v2

    :goto_4
    if-eqz v10, :cond_8

    if-eqz v14, :cond_7

    new-instance v1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    invoke-virtual {v1, v14}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    goto :goto_5

    :cond_7
    sget-object v1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_5

    :cond_8
    iget-object v1, v15, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    :goto_5
    iput-object v1, v0, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    move-object v14, v0

    :cond_9
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v9, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-object v14
.end method
