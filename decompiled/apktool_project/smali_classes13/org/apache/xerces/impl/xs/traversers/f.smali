.class public Lorg/apache/xerces/impl/xs/traversers/f;
.super Lorg/apache/xerces/impl/xs/traversers/a;
.source "SourceFile"


# instance fields
.field public o:Z


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/a;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/traversers/f;->o:Z

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p2, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {p2, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/traversers/f;->o:Z

    :cond_1
    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/traversers/f;->o:Z

    return p0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;S)Lorg/apache/xerces/impl/dv/XSSimpleType;
    .locals 12

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "string"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z:Lorg/apache/xerces/impl/dv/SchemaDVFactory;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z:Lorg/apache/xerces/impl/dv/SchemaDVFactory;

    const/4 v9, 0x0

    const/4 p0, 0x1

    new-array v10, p0, [Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/4 p0, 0x0

    aput-object v5, v10, p0

    const/4 v11, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v6 .. v11}, Lorg/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z:Lorg/apache/xerces/impl/dv/SchemaDVFactory;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p0

    return-object p0
.end method

.method public final s(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/xerces/xni/QName;SLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/dv/XSSimpleType;
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, p5, v2, p3, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xs/XSTypeDefinition;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    const-string v3, "cos-st-restricts.1.1"

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v0

    :cond_2
    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/4 v5, 0x2

    if-ne v1, v2, :cond_4

    if-ne p4, v5, :cond_4

    iget-object p4, p5, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {p0, p2, p4}, Lorg/apache/xerces/impl/xs/traversers/f;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    return-object v0

    :cond_3
    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v0

    :cond_4
    invoke-interface {v1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result p5

    and-int/2addr p5, p4

    if-eqz p5, :cond_8

    if-ne p4, v5, :cond_5

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "st-props-correct.3"

    invoke-virtual {p0, p3, p2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_5
    if-ne p4, v4, :cond_6

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "cos-st-restricts.2.3.1.1"

    invoke-virtual {p0, p3, p2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_6
    const/16 p5, 0x8

    if-ne p4, p5, :cond_7

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "cos-st-restricts.3.3.1.1"

    invoke-virtual {p0, p3, p2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_7
    :goto_0
    return-object v0

    :cond_8
    check-cast v1, Lorg/apache/xerces/impl/dv/XSSimpleType;

    return-object v1
.end method

.method public final t(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "#AnonType_"

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/String;Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v1, v4, v1

    check-cast v1, Lorg/apache/xerces/impl/xs/util/XInt;

    if-nez v1, :cond_0

    iget-short v1, v9, Lcom/sunia/HTREnginev2/tmo;->g:S

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    :goto_0
    move v11, v1

    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v15, 0x0

    if-eqz v12, :cond_2

    invoke-static {v12}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7, v12, v4, v15, v9}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v13, [Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v1, v2, v15

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v12}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    goto :goto_2

    :cond_2
    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    new-array v2, v13, [Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v1, v2, v15

    :goto_2
    move-object v6, v12

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object v6, v12

    const/4 v12, 0x0

    :goto_3
    const-string v1, "(annotation?, (restriction | list | union))"

    const/4 v5, 0x2

    if-nez v6, :cond_4

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "s4s-elt-must-match.2"

    invoke-virtual {v7, v2, v1, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v5}, Lorg/apache/xerces/impl/xs/traversers/f;->r(Ljava/lang/String;Ljava/lang/String;S)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v6}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v14, "s4s-elt-must-match.1"

    if-eqz v3, :cond_5

    move v0, v5

    move/from16 v17, v13

    move/from16 v18, v15

    move/from16 v19, v18

    goto :goto_4

    :cond_5
    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v18, v13

    move/from16 v17, v15

    move/from16 v19, v17

    const/16 v0, 0x10

    goto :goto_4

    :cond_6
    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move/from16 v19, v13

    move/from16 v17, v15

    move/from16 v18, v17

    const/16 v0, 0x8

    :goto_4
    invoke-static {v6}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v14, v1, v2}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_7
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v6, v15, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v17, :cond_8

    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    goto :goto_5

    :cond_8
    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    :goto_5
    aget-object v1, v4, v1

    move-object/from16 v21, v1

    check-cast v21, Lorg/apache/xerces/xni/QName;

    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    aget-object v1, v4, v1

    move-object v3, v1

    check-cast v3, Ljava/util/Vector;

    invoke-static {v6}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v7, v2, v4, v15, v9}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    if-eqz v1, :cond_a

    if-nez v12, :cond_9

    new-array v12, v13, [Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v1, v12, v15

    goto :goto_6

    :cond_9
    const/4 v5, 0x2

    new-array v13, v5, [Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    aget-object v12, v12, v15

    aput-object v12, v13, v15

    const/4 v12, 0x1

    aput-object v1, v13, v12

    move-object v12, v13

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v5, 0x2

    :goto_7
    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object/from16 v25, v3

    move-object v13, v4

    move-object/from16 p2, v6

    move v6, v5

    move-object v5, v12

    move-object v12, v2

    goto :goto_9

    :cond_b
    const/4 v5, 0x2

    :cond_c
    invoke-static {v6}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_e

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v24, v2

    move-object v2, v6

    move-object/from16 v25, v3

    move-object v3, v13

    move-object v13, v4

    move/from16 v5, v23

    move-object/from16 p2, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v12, :cond_d

    new-array v12, v2, [Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v1, v12, v15

    move-object v5, v12

    move-object/from16 v12, v24

    const/4 v6, 0x2

    goto :goto_9

    :cond_d
    const/4 v6, 0x2

    new-array v3, v6, [Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    aget-object v4, v12, v15

    aput-object v4, v3, v15

    aput-object v1, v3, v2

    move-object v5, v3

    goto :goto_8

    :cond_e
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object v13, v4

    move-object/from16 p2, v6

    move v6, v5

    move-object v5, v12

    :goto_8
    move-object/from16 v12, v24

    :goto_9
    if-nez v17, :cond_f

    if-eqz v18, :cond_11

    :cond_f
    if-eqz v21, :cond_11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, v21

    move-object/from16 v27, v5

    move v5, v0

    move v0, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/f;->s(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/xerces/xni/QName;SLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    if-nez v1, :cond_10

    iget-boolean v2, v7, Lorg/apache/xerces/impl/xs/traversers/f;->o:Z

    if-eqz v2, :cond_10

    iput-boolean v15, v7, Lorg/apache/xerces/impl/xs/traversers/f;->o:Z

    const/4 v1, 0x0

    return-object v1

    :cond_10
    move-object/from16 v20, v1

    goto :goto_a

    :cond_11
    move-object/from16 v27, v5

    move v0, v6

    const/16 v20, 0x0

    :goto_a
    const/4 v6, 0x3

    if-eqz v19, :cond_17

    move-object/from16 v5, v25

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_16

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v15

    :goto_b
    if-lt v2, v4, :cond_12

    move-object v1, v3

    move-object/from16 v22, v5

    move v0, v6

    goto :goto_f

    :cond_12
    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lorg/apache/xerces/xni/QName;

    const/16 v23, 0x8

    move-object/from16 v1, p0

    move/from16 v24, v2

    move-object/from16 v2, p2

    move-object v15, v3

    move-object/from16 v3, p1

    move/from16 v26, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v5

    move/from16 v5, v23

    move v0, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/f;->s(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/xerces/xni/QName;SLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v2

    if-ne v2, v0, :cond_14

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v2}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_13

    goto :goto_d

    :cond_13
    invoke-interface {v2, v1}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_d
    add-int/lit8 v2, v24, 0x1

    move v6, v0

    move-object v3, v15

    move-object/from16 v5, v22

    move/from16 v4, v26

    const/4 v0, 0x2

    const/4 v15, 0x0

    goto :goto_b

    :cond_16
    move-object/from16 v22, v5

    move v0, v6

    goto :goto_e

    :cond_17
    move v0, v6

    move-object/from16 v22, v25

    :goto_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v12, :cond_24

    invoke-static {v12}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    if-nez v17, :cond_1f

    if-eqz v18, :cond_18

    goto :goto_13

    :cond_18
    if-eqz v19, :cond_1e

    if-nez v1, :cond_19

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_10

    :cond_19
    const/4 v2, 0x2

    :cond_1a
    :goto_10
    invoke-virtual {v7, v12, v9, v10}, Lorg/apache/xerces/impl/xs/traversers/f;->x(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v4

    if-ne v4, v0, :cond_1c

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object v4

    const/4 v3, 0x0

    :goto_11
    invoke-interface {v4}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v5

    if-lt v3, v5, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-interface {v4, v3}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_12
    invoke-static {v12}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    if-eqz v12, :cond_23

    invoke-static {v12}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_15

    :cond_1e
    const/4 v2, 0x2

    move-object/from16 v15, p2

    const/4 v10, 0x0

    goto :goto_18

    :cond_1f
    :goto_13
    const/4 v2, 0x2

    if-eqz v21, :cond_21

    if-eqz v18, :cond_20

    const-string v0, "src-simple-type.3.a"

    goto :goto_14

    :cond_20
    const-string v0, "src-simple-type.2.a"

    :goto_14
    const/4 v3, 0x0

    invoke-virtual {v7, v0, v3, v12}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_21
    if-nez v20, :cond_22

    invoke-virtual {v7, v12, v9, v10}, Lorg/apache/xerces/impl/xs/traversers/f;->x(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v20

    :cond_22
    invoke-static {v12}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    :cond_23
    :goto_15
    move-object/from16 v15, p2

    move-object v0, v12

    move-object/from16 v12, v20

    const/4 v10, 0x0

    goto :goto_19

    :cond_24
    const/4 v2, 0x2

    if-nez v17, :cond_25

    if-eqz v18, :cond_27

    :cond_25
    if-nez v21, :cond_27

    if-eqz v18, :cond_26

    const-string v0, "src-simple-type.3.b"

    goto :goto_16

    :cond_26
    const-string v0, "src-simple-type.2.b"

    :goto_16
    move-object/from16 v15, p2

    const/4 v10, 0x0

    goto :goto_17

    :cond_27
    move-object/from16 v15, p2

    const/4 v10, 0x0

    if-eqz v19, :cond_29

    if-eqz v22, :cond_28

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_29

    :cond_28
    const-string v0, "src-union-memberTypes-or-simpleTypes"

    :goto_17
    invoke-virtual {v7, v0, v10, v15}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_29
    :goto_18
    move-object v0, v12

    move-object/from16 v12, v20

    :goto_19
    if-nez v17, :cond_2a

    if-eqz v18, :cond_2c

    :cond_2a
    if-nez v12, :cond_2c

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v13, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    iget-object v0, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-eqz v17, :cond_2b

    move v5, v2

    goto :goto_1a

    :cond_2b
    const/16 v5, 0x10

    :goto_1a
    invoke-virtual {v7, v8, v0, v5}, Lorg/apache/xerces/impl/xs/traversers/f;->r(Ljava/lang/String;Ljava/lang/String;S)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :cond_2c
    if-eqz v19, :cond_2e

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2e

    :cond_2d
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v13, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    iget-object v0, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {v7, v8, v0, v1}, Lorg/apache/xerces/impl/xs/traversers/f;->r(Ljava/lang/String;Ljava/lang/String;S)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :cond_2e
    if-eqz v18, :cond_2f

    invoke-virtual {v7, v12}, Lorg/apache/xerces/impl/xs/traversers/f;->v(Lorg/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v12}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cos-st-restricts.2.1"

    invoke-virtual {v7, v1, v0, v15}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v13, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    iget-object v0, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {v7, v8, v0, v1}, Lorg/apache/xerces/impl/xs/traversers/f;->r(Ljava/lang/String;Ljava/lang/String;S)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :cond_2f
    if-eqz v17, :cond_31

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z:Lorg/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    int-to-short v4, v11

    move-object/from16 v6, v27

    if-nez v6, :cond_30

    move-object/from16 v16, v10

    goto :goto_1b

    :cond_30
    new-instance v2, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v5, v6

    invoke-direct {v2, v6, v5}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    move-object/from16 v16, v2

    :goto_1b
    move-object/from16 v2, p1

    move-object v5, v12

    move-object v10, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    goto :goto_1e

    :cond_31
    move-object/from16 v10, v27

    if-eqz v18, :cond_33

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z:Lorg/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    int-to-short v4, v11

    if-nez v10, :cond_32

    const/4 v6, 0x0

    goto :goto_1c

    :cond_32
    new-instance v2, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v5, v10

    invoke-direct {v2, v10, v5}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    move-object v6, v2

    :goto_1c
    move-object/from16 v2, p1

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    goto :goto_1e

    :cond_33
    if-eqz v19, :cond_35

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lorg/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z:Lorg/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    int-to-short v4, v11

    if-nez v10, :cond_34

    const/4 v6, 0x0

    goto :goto_1d

    :cond_34
    new-instance v2, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v6, v10

    invoke-direct {v2, v10, v6}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    move-object v6, v2

    :goto_1d
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    goto :goto_1e

    :cond_35
    const/4 v1, 0x0

    :goto_1e
    if-eqz v17, :cond_37

    if-eqz v0, :cond_37

    invoke-virtual {v7, v0, v1, v12, v9}, Lorg/apache/xerces/impl/xs/traversers/a;->o(Lorg/w3c/dom/Element;Lorg/apache/xerces/xs/XSTypeDefinition;Lorg/apache/xerces/impl/dv/XSSimpleType;Lcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/traversers/a$a;

    move-result-object v0

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/a$a;->b:Lorg/w3c/dom/Element;

    :try_start_0
    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/a;->e:Lorg/apache/xerces/impl/validation/ValidationState;

    iget-object v3, v9, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    iget-object v2, v0, Lorg/apache/xerces/impl/xs/traversers/a$a;->a:Lorg/apache/xerces/impl/dv/XSFacets;

    iget-short v3, v0, Lorg/apache/xerces/impl/xs/traversers/a$a;->c:S

    iget-short v0, v0, Lorg/apache/xerces/impl/xs/traversers/a$a;->d:S

    iget-object v4, v7, Lorg/apache/xerces/impl/xs/traversers/a;->e:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v1, v2, v3, v0, v4}, Lorg/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lorg/apache/xerces/impl/dv/XSFacets;SSLorg/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_20

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0, v15}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z:Lorg/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    int-to-short v4, v11

    if-nez v10, :cond_36

    const/4 v0, 0x0

    goto :goto_1f

    :cond_36
    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v2, v10

    invoke-direct {v0, v10, v2}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    :goto_1f
    move-object/from16 v2, p1

    move-object v5, v12

    move-object v8, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    move-object v0, v8

    :cond_37
    :goto_20
    if-eqz v0, :cond_3a

    if-eqz v17, :cond_38

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    const-string v3, "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*))"

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v14, v2, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_21

    :cond_38
    if-eqz v18, :cond_39

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    const-string v3, "(annotation?, (simpleType?))"

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v14, v2, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_21

    :cond_39
    if-eqz v19, :cond_3a

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    const-string v3, "(annotation?, (simpleType*))"

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v14, v2, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_3a
    :goto_21
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v13, v9}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-object v1

    :cond_3b
    move v3, v5

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v14, v1, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v3}, Lorg/apache/xerces/impl/xs/traversers/f;->r(Ljava/lang/String;Ljava/lang/String;S)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lorg/apache/xerces/impl/dv/XSSimpleType;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne p0, v2, :cond_3

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p0

    move p1, v3

    :goto_0
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v2

    if-ne v2, v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v3
.end method

.method public w(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v3, "(no name)"

    aput-object v3, v0, v1

    :cond_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/xerces/impl/xs/traversers/f;->y(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v3, v0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    if-nez v2, :cond_1

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-att-must-appear"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p3, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lorg/apache/xerces/impl/dv/XSSimpleType;)V

    :cond_2
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lcom/sunia/HTREnginev2/tmo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p3, v1, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lorg/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    instance-of p1, p2, Lorg/apache/xerces/impl/dv/XSSimpleType;

    if-eqz p1, :cond_4

    check-cast p2, Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-object v1, p2

    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_5
    return-object v1
.end method

.method public x(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;
    .locals 8

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/f;->t(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/impl/xs/traversers/f;->u(Ljava/lang/String;Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p1

    instance-of p3, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-object p1
.end method

.method public final y(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;
    .locals 7

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, p2, v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/f;->u(Ljava/lang/String;Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p0

    return-object p0
.end method
