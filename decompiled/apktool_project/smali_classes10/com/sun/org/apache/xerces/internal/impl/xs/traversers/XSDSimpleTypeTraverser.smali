.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;
.source "SourceFile"


# instance fields
.field private fIsBuiltIn:Z

.field private final schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->getInstance()Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    instance-of p0, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;

    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDVFactoryImpl;->setDeclPool(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;)V

    :cond_0
    return-void
.end method

.method private final checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    :cond_1
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    return p0
.end method

.method private errorType(Ljava/lang/String;Ljava/lang/String;S)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 6

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    const/4 v3, 0x0

    const/4 p0, 0x1

    new-array v4, p0, [Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 p0, 0x0

    sget-object p3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    aput-object p3, v4, p0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object p0

    return-object p0
.end method

.method private findDTValidator(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/QName;SLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, p5, v2, p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v4, 0x2

    if-ne v1, v2, :cond_1

    if-ne p4, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getFinal()S

    move-result p5

    and-int/2addr p5, p4

    if-eqz p5, :cond_6

    if-ne p4, v4, :cond_2

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "st-props-correct.3"

    invoke-virtual {p0, p3, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_2
    if-ne p4, v3, :cond_3

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "cos-st-restricts.2.3.1.1"

    invoke-virtual {p0, p3, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_3
    const/16 p5, 0x8

    if-ne p4, p5, :cond_6

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "cos-st-restricts.3.3.1.1"

    invoke-virtual {p0, p3, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    if-ne v1, p4, :cond_5

    iget-object p5, p5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {p0, p2, p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_5

    return-object v0

    :cond_5
    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "cos-st-restricts.1.1"

    invoke-virtual {p0, p3, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object p4

    :cond_6
    :goto_1
    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    return-object v1
.end method

.method private genAnonTypeName(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "#AnonType_"

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSimpleType(Ljava/lang/String;Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v1, v4, v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    if-nez v1, :cond_0

    iget-short v1, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v1

    :goto_0
    move v11, v1

    invoke-static/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v12, :cond_2

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7, v12, v4, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v14, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    aput-object v1, v2, v15

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    goto :goto_2

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    new-array v2, v14, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

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

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "s4s-elt-must-match.2"

    invoke-virtual {v7, v2, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v1, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "s4s-elt-must-match.1"

    if-eqz v3, :cond_5

    move v8, v5

    move/from16 v16, v14

    move/from16 v17, v15

    move/from16 v18, v17

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v2, 0x10

    move v8, v2

    move/from16 v17, v14

    move/from16 v16, v15

    move/from16 v18, v16

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/16 v2, 0x8

    move v8, v2

    move/from16 v18, v14

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_4
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v3, v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v4, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_7
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v6, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v13

    if-eqz v16, :cond_8

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    goto :goto_5

    :cond_8
    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    :goto_5
    aget-object v1, v13, v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    aget-object v1, v13, v1

    move-object v3, v1

    check-cast v3, Ljava/util/Vector;

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v7, v2, v13, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    if-eqz v1, :cond_a

    if-nez v12, :cond_9

    new-array v12, v14, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    aput-object v1, v12, v15

    goto :goto_6

    :cond_9
    const/4 v5, 0x2

    new-array v14, v5, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    aget-object v12, v12, v15

    aput-object v12, v14, v15

    const/4 v12, 0x1

    aput-object v1, v14, v12

    move-object v12, v14

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v5, 0x2

    :goto_7
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object/from16 v22, v3

    move-object v14, v4

    move-object/from16 p2, v6

    move v6, v5

    move-object v5, v12

    move-object v12, v2

    goto :goto_9

    :cond_b
    const/4 v5, 0x2

    :cond_c
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object v2, v6

    move-object/from16 v22, v3

    move-object v3, v14

    move-object v14, v4

    move-object v4, v13

    move/from16 v5, v20

    move-object/from16 p2, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    if-nez v12, :cond_d

    const/4 v2, 0x1

    new-array v12, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    aput-object v1, v12, v15

    move-object v5, v12

    move-object/from16 v12, v21

    const/4 v6, 0x2

    goto :goto_9

    :cond_d
    const/4 v2, 0x1

    const/4 v6, 0x2

    new-array v3, v6, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    aget-object v4, v12, v15

    aput-object v4, v3, v15

    aput-object v1, v3, v2

    move-object v5, v3

    goto :goto_8

    :cond_e
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object v14, v4

    move-object/from16 p2, v6

    move v6, v5

    move-object v5, v12

    :goto_8
    move-object/from16 v12, v21

    :goto_9
    if-nez v16, :cond_f

    if-eqz v17, :cond_11

    :cond_f
    if-eqz v19, :cond_11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, v19

    move-object/from16 v24, v5

    move v5, v8

    move v8, v6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/QName;SLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v1

    if-nez v1, :cond_10

    iget-boolean v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    if-eqz v2, :cond_10

    iput-boolean v15, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    const/4 v0, 0x0

    return-object v0

    :cond_10
    move-object/from16 v20, v1

    goto :goto_a

    :cond_11
    move-object/from16 v24, v5

    move v8, v6

    const/16 v20, 0x0

    :goto_a
    const/4 v6, 0x3

    if-eqz v18, :cond_16

    move-object/from16 v5, v22

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v4, v8}, Ljava/util/Vector;-><init>(II)V

    move v2, v15

    :goto_b
    if-ge v2, v4, :cond_14

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/16 v22, 0x8

    move-object/from16 v1, p0

    move/from16 v23, v2

    move-object/from16 v2, p2

    move-object v15, v3

    move-object/from16 v3, p1

    move/from16 v25, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v5

    move/from16 v5, v22

    move v8, v6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/QName;SLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v2

    if-ne v2, v8, :cond_12

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getMemberTypes()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_13

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_12
    invoke-virtual {v15, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_13
    add-int/lit8 v2, v23, 0x1

    move v6, v8

    move-object v3, v15

    move-object/from16 v5, v21

    move/from16 v4, v25

    const/4 v8, 0x2

    const/4 v15, 0x0

    goto :goto_b

    :cond_14
    move-object v15, v3

    move-object/from16 v21, v5

    move v8, v6

    goto :goto_e

    :cond_15
    move-object/from16 v21, v5

    move v8, v6

    goto :goto_d

    :cond_16
    move v8, v6

    move-object/from16 v21, v22

    :goto_d
    const/4 v15, 0x0

    :goto_e
    if-eqz v12, :cond_21

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    if-nez v16, :cond_1c

    if-eqz v17, :cond_17

    goto :goto_10

    :cond_17
    if-eqz v18, :cond_1b

    if-nez v15, :cond_18

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v2}, Ljava/util/Vector;-><init>(II)V

    move-object v15, v1

    :cond_18
    invoke-virtual {v7, v12, v9, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v2

    if-ne v2, v8, :cond_19

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getMemberTypes()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1a

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    invoke-virtual {v15, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1a
    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    if-eqz v12, :cond_1f

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_13

    :cond_1b
    move-object/from16 v8, p2

    goto :goto_14

    :cond_1c
    :goto_10
    if-eqz v19, :cond_1e

    if-eqz v17, :cond_1d

    const-string v1, "src-simple-type.3.a"

    goto :goto_11

    :cond_1d
    const-string v1, "src-simple-type.2.a"

    :goto_11
    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_12

    :cond_1e
    invoke-virtual {v7, v12, v9, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v20

    :goto_12
    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    :cond_1f
    :goto_13
    move-object/from16 v8, p2

    :cond_20
    :goto_14
    const/4 v2, 0x0

    goto :goto_16

    :cond_21
    if-nez v16, :cond_22

    if-eqz v17, :cond_24

    :cond_22
    if-nez v19, :cond_24

    if-eqz v17, :cond_23

    const-string v1, "src-simple-type.3.b"

    goto :goto_15

    :cond_23
    const-string v1, "src-simple-type.2.b"

    :goto_15
    move-object/from16 v8, p2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    sget-object v20, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_17

    :cond_24
    move-object/from16 v8, p2

    if-eqz v18, :cond_20

    if-eqz v21, :cond_25

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_20

    :cond_25
    const-string v1, "src-union-memberTypes-or-simpleTypes"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    new-instance v15, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Ljava/util/Vector;-><init>(I)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-virtual {v15, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_16
    const/4 v10, 0x0

    :goto_17
    if-nez v16, :cond_26

    if-eqz v17, :cond_27

    :cond_26
    if-nez v20, :cond_27

    sget-object v20, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    :cond_27
    move-object/from16 v6, v20

    if-eqz v18, :cond_29

    if-eqz v15, :cond_28

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_29

    :cond_28
    new-instance v15, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Ljava/util/Vector;-><init>(I)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-virtual {v15, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_29
    if-eqz v17, :cond_2a

    invoke-direct {v7, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->isListDatatype(Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v6}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "cos-st-restricts.2.1"

    invoke-virtual {v7, v3, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_2a
    if-eqz v16, :cond_2c

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    int-to-short v4, v11

    move-object/from16 v5, v24

    if-nez v5, :cond_2b

    goto :goto_18

    :cond_2b
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    array-length v11, v5

    invoke-direct {v2, v5, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    :goto_18
    move-object v11, v2

    move-object/from16 v2, p1

    move-object v5, v6

    move-object v0, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v1

    goto/16 :goto_1c

    :cond_2c
    move-object/from16 v5, v24

    if-eqz v17, :cond_2e

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    int-to-short v4, v11

    if-nez v5, :cond_2d

    goto :goto_19

    :cond_2d
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    array-length v11, v5

    invoke-direct {v2, v5, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    :goto_19
    move-object v11, v2

    move-object/from16 v2, p1

    move-object v5, v6

    move-object v0, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v1

    goto :goto_1c

    :cond_2e
    if-eqz v18, :cond_31

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v4, v1, [Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2f

    invoke-virtual {v15, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2f
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    int-to-short v11, v11

    if-nez v5, :cond_30

    goto :goto_1b

    :cond_30
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    array-length v15, v5

    invoke-direct {v2, v5, v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    :goto_1b
    move-object v15, v2

    move-object/from16 v2, p1

    move-object v0, v4

    move v4, v11

    move-object v5, v0

    move-object v0, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v1

    goto :goto_1c

    :cond_31
    move-object v0, v6

    move-object v1, v2

    :goto_1c
    if-eqz v16, :cond_32

    if-eqz v12, :cond_32

    invoke-virtual {v7, v12, v0, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseFacets(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v0

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lorg/w3c/dom/Element;

    if-nez v10, :cond_32

    :try_start_0
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v3, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iget-short v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->applyFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1d

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_32
    :goto_1d
    if-eqz v12, :cond_35

    if-eqz v16, :cond_33

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    const-string v2, "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*))"

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v14, v0, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1e

    :cond_33
    if-eqz v17, :cond_34

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    const-string v2, "(annotation?, (simpleType?))"

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v14, v0, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1e

    :cond_34
    if-eqz v18, :cond_35

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    const-string v2, "(annotation?, (simpleType*))"

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v14, v0, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_35
    :goto_1e
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v13, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v1

    :cond_36
    move-object v14, v4

    move v3, v5

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v14, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v1, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0
.end method

.method private isListDatatype(Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;)Z
    .locals 4

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne p0, v2, :cond_2

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getMemberTypes()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object p0

    move p1, v3

    :goto_0
    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v2

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private traverseSimpleTypeDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 7

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, p2, v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSimpleTypeDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v3, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    if-nez v1, :cond_0

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "s4s-att-must-appear"

    invoke-virtual {p0, v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p3, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V

    :cond_1
    return-object v2
.end method

.method public traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->genAnonTypeName(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object p1

    instance-of p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object p1
.end method
