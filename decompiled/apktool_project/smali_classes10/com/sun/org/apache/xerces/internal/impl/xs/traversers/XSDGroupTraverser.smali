.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method public traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, v10, v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    const-string v12, "group (global)"

    if-nez v11, :cond_0

    const-string v0, "name"

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "s4s-att-must-appear"

    invoke-virtual {v6, v2, v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    const-string v14, "s4s-elt-must-match.2"

    const-string v15, "(annotation?, (all | choice | sequence))"

    const/16 v16, 0x0

    if-nez v13, :cond_2

    filled-new-array {v12, v15}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14, v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_1
    move-object/from16 v1, v16

    goto/16 :goto_4

    :cond_2
    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    invoke-direct {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;-><init>()V

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, v13, v10, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    :cond_3
    move-object/from16 v17, v5

    move-object v5, v13

    :goto_0
    move-object v13, v0

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v10

    move-object/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object v5, v13

    move-object/from16 v4, v18

    goto :goto_0

    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object v5, v13

    move-object/from16 v13, v16

    :goto_1
    const-string v3, "s4s-elt-must-match.1"

    if-nez v5, :cond_6

    filled-new-array {v12, v15}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v14, v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move-object v14, v3

    move-object v1, v5

    goto/16 :goto_2

    :cond_6
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move-object v14, v3

    move-object/from16 v3, p3

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseAll(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    move-object/from16 v1, v18

    goto :goto_3

    :cond_7
    move-object v14, v3

    move-object/from16 v18, v5

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseChoice(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSequence(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_3

    :cond_9
    invoke-static/range {v18 .. v18}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v15, v0}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v6, v14, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_2
    move-object/from16 v0, v16

    :goto_3
    if-eqz v1, :cond_a

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v15, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v6, v14, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_a
    if-eqz v11, :cond_1

    move-object/from16 v1, v17

    iput-object v11, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    iget-object v2, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fTargetNamespace:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fModelGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    :cond_b
    iput-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-virtual {v9, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;)V

    :goto_4
    if-eqz v1, :cond_c

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iget-object v4, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v2, v3, v11, v11, v4}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2, v8, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGrpOrAttrGrpRedefinedByRestriction(ILcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object v2

    invoke-virtual {v9, v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addRedefinedGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)V

    :cond_c
    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v1
.end method

.method public traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 9

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object p3

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v1, p3, v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v2, p3, v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v3, p3, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    const-string v4, "group (local)"

    const/4 v5, 0x0

    if-nez v1, :cond_0

    const-string v1, "ref"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "s4s-att-must-appear"

    invoke-virtual {p0, v6, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move-object v1, v5

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, p2, v7, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    :goto_0
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6, p3, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    const-string v0, "(annotation?)"

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "s4s-elt-must-match.1"

    invoke-virtual {p0, v4, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_2
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result p1

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v0

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fModelGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    if-eqz v2, :cond_5

    if-nez p1, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->getParticleDecl()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v2

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    :goto_1
    move-object v5, v2

    const/4 v2, 0x3

    iput-short v2, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fModelGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iput-object v1, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    iput p1, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v0, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, p3, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v5
.end method
