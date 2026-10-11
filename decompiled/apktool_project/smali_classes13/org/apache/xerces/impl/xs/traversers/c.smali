.class public Lorg/apache/xerces/impl/xs/traversers/c;
.super Lorg/apache/xerces/impl/xs/traversers/a;
.source "SourceFile"


# instance fields
.field public final o:Lorg/apache/xerces/impl/xs/XSElementDecl;

.field public p:Z


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/a;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    new-instance p1, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {p1}, Lorg/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/c;->o:Lorg/apache/xerces/impl/xs/XSElementDecl;

    return-void
.end method


# virtual methods
.method public l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/traversers/c;->p:Z

    return-void
.end method

.method public q(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 9

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lorg/apache/xerces/impl/xs/traversers/c;->t(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ZLorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-object p1
.end method

.method public r(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 9

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lorg/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->getParticleDecl()Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    :goto_0
    iget-boolean v1, p0, Lorg/apache/xerces/impl/xs/traversers/c;->p:Z

    if-eqz v1, :cond_2

    const/4 p3, 0x1

    iput-short p3, v0, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    sget-object p3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p3

    :try_start_0
    invoke-static {p3}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_1

    iput p3, v0, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xs/XSObject;Lorg/apache/xerces/impl/xs/XSParticleDecl;)V

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

    invoke-virtual/range {v1 .. v8}, Lorg/apache/xerces/impl/xs/traversers/c;->s(Lorg/apache/xerces/impl/xs/XSParticleDecl;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;[Ljava/lang/String;)V

    iget-short p0, v0, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-nez p0, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public s(Lorg/apache/xerces/impl/xs/XSParticleDecl;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v0, p7

    if-eqz v0, :cond_0

    iget-object v1, v10, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->setEffectiveContext([Ljava/lang/String;)V

    :cond_0
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11, v10}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v12

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v0, v12, v0

    move-object v13, v0

    check-cast v13, Lorg/apache/xerces/xni/QName;

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v0, v12, v0

    move-object v14, v0

    check-cast v14, Lorg/apache/xerces/impl/xs/util/XInt;

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v0, v12, v0

    move-object v15, v0

    check-cast v15, Lorg/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    const/16 v16, 0x0

    if-eqz v0, :cond_5

    if-eqz v13, :cond_4

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, v13, v9}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v5, v12, v11, v10}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v12

    move-object/from16 v17, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    move-object/from16 v5, v17

    goto :goto_0

    :cond_2
    move-object/from16 v17, v5

    :goto_0
    if-eqz v5, :cond_3

    iget-object v0, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "src-element.2.2"

    invoke-virtual {v7, v1, v0, v5}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_3
    move-object v0, v6

    goto :goto_1

    :cond_4
    move-object/from16 v0, v16

    move-object v1, v0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/c;->t(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ZLorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    :goto_1
    move-object/from16 v1, v16

    :goto_2
    invoke-virtual {v14}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    iput v2, v8, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v15}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    iput v2, v8, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    iput-short v2, v8, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v0, v8, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    goto :goto_3

    :cond_6
    iput-short v11, v8, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    :goto_3
    if-eqz v13, :cond_7

    if-eqz v1, :cond_8

    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    goto :goto_4

    :cond_8
    sget-object v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_4
    iput-object v0, v8, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/Long;

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->e(Lorg/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lorg/w3c/dom/Element;IJ)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v12, v10}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-void
.end method

.method public t(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ZLorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v0, p6

    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/Boolean;

    sget v2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    aget-object v2, v3, v2

    check-cast v2, Lorg/apache/xerces/impl/xs/util/XInt;

    sget v4, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v4, v3, v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    sget v4, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v4, v3, v4

    check-cast v4, Lorg/apache/xerces/impl/xs/util/XInt;

    sget v5, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v5, v3, v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    sget v5, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    aget-object v5, v3, v5

    check-cast v5, Lorg/apache/xerces/impl/xs/util/XInt;

    sget v8, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v8, v3, v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    sget v8, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Boolean;

    sget v9, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    aget-object v9, v3, v9

    move-object v10, v9

    check-cast v10, Lorg/apache/xerces/xni/QName;

    sget v9, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    aget-object v9, v3, v9

    check-cast v9, Lorg/apache/xerces/xni/QName;

    move-object/from16 v16, v9

    iget-object v9, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v9, v9, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lorg/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->getElementDecl()Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v9

    goto :goto_0

    :cond_0
    new-instance v9, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v9}, Lorg/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    :goto_0
    if-eqz v11, :cond_1

    iget-object v14, v6, Lorg/apache/xerces/impl/xs/traversers/a;->b:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v14, v11}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    :cond_1
    if-eqz p5, :cond_2

    iget-object v0, v15, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iput-object v0, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v9}, Lorg/apache/xerces/impl/xs/XSElementDecl;->setIsGlobal()V

    :goto_1
    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    instance-of v14, v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v14, :cond_3

    check-cast v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v9, v0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->setIsLocal(Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;)V

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    iget-object v0, v15, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iput-object v0, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    iget-boolean v0, v15, Lcom/sunia/HTREnginev2/tmo;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, v15, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iput-object v0, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto :goto_3

    :cond_6
    :goto_2
    iput-object v14, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    :goto_3
    if-nez v2, :cond_7

    iget-short v0, v15, Lcom/sunia/HTREnginev2/tmo;->f:S

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    :goto_4
    iput-short v0, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    if-nez v4, :cond_8

    iget-short v0, v15, Lcom/sunia/HTREnginev2/tmo;->g:S

    goto :goto_5

    :cond_8
    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    :goto_5
    iget-short v2, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    const/4 v5, 0x7

    and-int/2addr v2, v5

    int-to-short v2, v2

    iput-short v2, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    const/4 v2, 0x3

    and-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Lorg/apache/xerces/impl/xs/XSElementDecl;->setIsNillable()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Lorg/apache/xerces/impl/xs/XSElementDecl;->setIsAbstract()V

    :cond_a
    const/4 v8, 0x0

    if-eqz v12, :cond_b

    new-instance v0, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v12, v0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    if-eqz v13, :cond_c

    new-instance v0, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v13, v0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Lorg/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    goto :goto_6

    :cond_c
    const/4 v4, 0x1

    invoke-virtual {v9, v8}, Lorg/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    :goto_6
    if-eqz v10, :cond_d

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v15, v2, v10, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lorg/apache/xerces/impl/xs/XSElementDecl;

    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v6, v2, v3, v8, v15}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    move/from16 v17, v4

    move v8, v5

    goto :goto_7

    :cond_e
    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v17, v4

    move/from16 v4, v18

    move v8, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object/from16 v2, v19

    goto :goto_7

    :cond_f
    move-object/from16 v19, v2

    move/from16 v17, v4

    move v8, v5

    move-object v0, v14

    :goto_7
    if-eqz v0, :cond_10

    new-instance v1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    goto :goto_8

    :cond_10
    sget-object v1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_8
    iput-object v1, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz v2, :cond_12

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R:Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v15, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->J(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    :goto_9
    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    goto :goto_a

    :cond_11
    move-object/from16 v1, p4

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->W:Lorg/apache/xerces/impl/xs/traversers/f;

    invoke-virtual {v0, v2, v15, v1}, Lorg/apache/xerces/impl/xs/traversers/f;->x(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    goto :goto_9

    :cond_12
    move-object/from16 v1, p4

    :cond_13
    move-object v0, v14

    const/16 v17, 0x0

    :goto_a
    if-nez v0, :cond_14

    if-eqz v16, :cond_14

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v3, v16

    invoke-virtual {v0, v15, v8, v3, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_15

    iput-object v3, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fUnresolvedTypeName:Lorg/apache/xerces/xni/QName;

    goto :goto_b

    :cond_14
    move-object/from16 v3, v16

    :cond_15
    :goto_b
    if-nez v0, :cond_16

    iget-object v4, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_16

    iget-object v0, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    :cond_16
    if-nez v0, :cond_17

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    :cond_17
    iput-object v0, v9, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz v2, :cond_1e

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    :goto_c
    if-eqz v2, :cond_1e

    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    sget-object v8, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    sget-object v8, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    goto/16 :goto_12

    :cond_18
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_d

    :cond_19
    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v2, v15, v9}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->storeKeyRef(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/XSElementDecl;)V

    goto/16 :goto_f

    :cond_1a
    :goto_d
    iget-object v5, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v5, v5, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v2, v5}, Lorg/apache/xerces/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v5, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v5, v5, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->X:Lcom/sunia/HTREnginev2/smo;

    invoke-virtual {v5, v2, v9, v15, v1}, Lcom/sunia/HTREnginev2/smo;->r(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/XSElementDecl;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v14, v15, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    const-string v1, ","

    if-nez v14, :cond_1b

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2, v5}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v3

    goto :goto_e

    :cond_1b
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v16, v3

    iget-object v3, v15, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2, v5}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_e
    const/4 v3, 0x1

    iget-object v5, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getIDRegistry()Ljava/util/Hashtable;

    move-result-object v5

    iget-object v14, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v14}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getIDRegistry_sub()Ljava/util/Hashtable;

    move-result-object v14

    move-object/from16 v19, v4

    move-object v4, v9

    move-object v9, v1

    move-object v1, v10

    move v10, v3

    move-object v3, v11

    move-object v11, v5

    move-object v5, v12

    move-object v12, v14

    move-object/from16 v20, v13

    move-object v13, v2

    move-object/from16 v18, v1

    const/4 v1, 0x0

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)V

    goto :goto_10

    :cond_1c
    :goto_f
    move-object/from16 v16, v3

    move-object/from16 v19, v4

    move-object v4, v9

    move-object/from16 v18, v10

    move-object v3, v11

    move-object v5, v12

    move-object/from16 v20, v13

    move-object v1, v14

    :goto_10
    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v1

    move-object v11, v3

    move-object v9, v4

    move-object v12, v5

    move-object v4, v8

    move-object/from16 v3, v16

    move-object/from16 v10, v18

    goto :goto_11

    :cond_1d
    move-object v14, v1

    move-object v11, v3

    move-object v9, v4

    move-object v12, v5

    move-object/from16 v3, v16

    move-object/from16 v10, v18

    move-object/from16 v4, v19

    :goto_11
    move-object/from16 v13, v20

    move-object/from16 v1, p4

    goto/16 :goto_c

    :cond_1e
    :goto_12
    move-object/from16 v16, v3

    move-object v4, v9

    move-object/from16 v18, v10

    move-object v3, v11

    move-object v5, v12

    move-object/from16 v20, v13

    move-object v1, v14

    if-nez v3, :cond_20

    if-eqz p5, :cond_1f

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    sget-object v8, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "s4s-att-must-appear"

    invoke-virtual {v6, v8, v3, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_13

    :cond_1f
    const-string v3, "src-element.2.1"

    invoke-virtual {v6, v3, v1, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_13
    const-string v11, "(no name)"

    goto :goto_14

    :cond_20
    move-object v11, v3

    :goto_14
    if-eqz v2, :cond_21

    const-string v3, "(annotation?, (simpleType | complexType)?, (unique | key | keyref)*))"

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v11, v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "s4s-elt-must-match.1"

    invoke-virtual {v6, v8, v3, v2}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_21
    if-eqz v20, :cond_22

    if-eqz v5, :cond_22

    const-string v2, "src-element.1"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v2, v3, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_22
    if-eqz v17, :cond_23

    if-eqz v16, :cond_23

    const-string v2, "src-element.3"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v2, v3, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_23
    invoke-virtual {v6, v11, v0, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->d(Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;Lorg/w3c/dom/Element;)V

    iget-object v2, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v2, :cond_24

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/traversers/a;->e:Lorg/apache/xerces/impl/validation/ValidationState;

    iget-object v3, v15, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    iget-object v2, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v8, v6, Lorg/apache/xerces/impl/xs/traversers/a;->e:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-static {v2, v5, v8, v3}, Lorg/apache/xerces/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_24

    iget-object v2, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, v2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "e-props-correct.2"

    invoke-virtual {v6, v3, v2, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iput-object v1, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lorg/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    goto :goto_15

    :cond_24
    const/4 v2, 0x0

    :goto_15
    iget-object v3, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v3, :cond_25

    iget-object v5, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v8, v3, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-short v3, v3, Lorg/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    invoke-static {v5, v8, v3}, Lorg/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lorg/apache/xerces/xs/XSTypeDefinition;Lorg/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v3

    if-nez v3, :cond_25

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v9, v18

    iget-object v5, v9, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v9, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v11, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "e-props-correct.4"

    invoke-virtual {v6, v5, v3, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iput-object v1, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lorg/apache/xerces/impl/xs/XSElementDecl;

    :cond_25
    iget-object v3, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v3, :cond_28

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_26

    move-object v3, v0

    check-cast v3, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v3}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v3

    if-nez v3, :cond_27

    :cond_26
    invoke-interface {v0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v5, 0xf

    if-ne v3, v5, :cond_28

    check-cast v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->containsTypeID()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    iget-object v0, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "e-props-correct.5"

    invoke-virtual {v6, v3, v0, v7}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iput-object v1, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v4, v2}, Lorg/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    :cond_28
    iget-object v0, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-nez v0, :cond_29

    return-object v1

    :cond_29
    if-eqz p5, :cond_2d

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDeclAll(Lorg/apache/xerces/impl/xs/XSElementDecl;)V

    iget-object v1, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    if-nez v1, :cond_2a

    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;)V

    :cond_2a
    iget-object v1, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, v15}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lcom/sunia/HTREnginev2/tmo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    if-nez v2, :cond_2b

    invoke-virtual {v0, v4, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    :cond_2b
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v1, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-eqz v1, :cond_2d

    if-eqz v2, :cond_2c

    move-object v9, v2

    goto :goto_16

    :cond_2c
    move-object v9, v4

    :goto_16
    invoke-virtual {v0, v9}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g(Lorg/apache/xerces/impl/xs/XSElementDecl;)V

    goto :goto_17

    :cond_2d
    move-object v9, v4

    :goto_17
    return-object v9
.end method
