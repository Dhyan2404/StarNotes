.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method public checkDefaultValid(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getValInfo()Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getValInfo()Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getValInfo()Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getValInfo()Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    move-result-object p1

    invoke-interface {v0, v1, p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    return-void
.end method

.method public checkDefaultValid(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .line 3
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {v0, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-interface {v0, v1, p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    return-void
.end method

.method public traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;
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

    invoke-virtual/range {v2 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;->traverseNamedAttr(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ZLcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object p1
.end method

.method public traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v12

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v1, v12, v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v1, v12, v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v1, v12, v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    aget-object v2, v12, v2

    move-object v15, v2

    check-cast v15, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {v9, v2}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    const/4 v7, 0x1

    const/16 v16, 0x0

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v2, v10, v7, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v8, v3, v12, v11, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "src-attribute.3.2"

    invoke-virtual {v8, v5, v4, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_1
    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    move v11, v7

    goto :goto_0

    :cond_2
    move v11, v7

    move-object/from16 v2, v16

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v11, v7

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;->traverseNamedAttr(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ZLcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v2

    :goto_0
    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v3, v13

    move-object v13, v0

    move v0, v11

    goto :goto_1

    :cond_4
    if-eqz v13, :cond_5

    move v0, v1

    move-object/from16 v3, v16

    goto :goto_1

    :cond_5
    move-object v3, v13

    move-object v13, v0

    const/4 v0, 0x0

    :goto_1
    if-eqz v2, :cond_7

    iget-object v4, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->getAttributeUse()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    move-result-object v4

    goto :goto_2

    :cond_6
    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;-><init>()V

    :goto_2
    iput-object v2, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->shortValue()S

    move-result v5

    iput-short v5, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v13, :cond_8

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    iput-object v5, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iput-object v13, v5, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object/from16 v4, v16

    :cond_8
    :goto_3
    if-eqz v13, :cond_9

    if-eqz v3, :cond_9

    const-string v3, "src-attribute.1"

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v3, v5, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_9
    if-ne v0, v11, :cond_a

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "src-attribute.2"

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v0, v3, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_a
    if-eqz v13, :cond_d

    if-eqz v4, :cond_d

    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v3, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    :try_start_0
    invoke-virtual {v8, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;->checkDefaultValid(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v0, v3, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    const-string v0, "a-props-correct.2"

    filled-new-array {v14, v13}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v0, v3, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_4
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "a-props-correct.3"

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v0, v2, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_b
    iget-object v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v1, :cond_d

    iget-short v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v0, :cond_d

    if-ne v0, v1, :cond_c

    iget-object v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getValInfo()Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v1, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    iget-object v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getValInfo()Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "au-props-correct.2"

    invoke-virtual {v8, v1, v0, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_d
    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v12, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v4
.end method

.method public traverseNamedAttr(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ZLcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v1, v0, v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v1, v0, v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    aget-object v1, v0, v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    aget-object v3, v0, v3

    move-object v13, v3

    check-cast v13, Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->getAttributeDecl()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;-><init>()V

    :goto_0
    move-object v15, v3

    if-eqz v2, :cond_1

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object/from16 v23, v2

    const/4 v2, 0x2

    const/4 v14, 0x1

    const/4 v6, 0x0

    if-eqz p5, :cond_2

    iget-object v1, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object v4, v1

    move/from16 v19, v14

    const/16 v21, 0x0

    goto :goto_3

    :cond_2
    if-eqz p6, :cond_3

    move-object/from16 v3, p6

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v6

    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-ne v1, v14, :cond_5

    iget-object v1, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-boolean v1, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fAreLocalAttributesQualified:Z

    if-eqz v1, :cond_5

    iget-object v1, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    :goto_2
    move-object/from16 v21, v3

    move/from16 v19, v4

    move-object v4, v1

    goto :goto_3

    :cond_5
    move-object/from16 v21, v3

    move/from16 v19, v4

    const/4 v4, 0x0

    :goto_3
    if-eqz p5, :cond_7

    if-eqz v12, :cond_6

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    iput-object v12, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move-object v3, v1

    move/from16 v18, v2

    goto :goto_4

    :cond_6
    if-eqz v11, :cond_7

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    iput-object v11, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move-object v3, v1

    move/from16 v18, v14

    goto :goto_4

    :cond_7
    move/from16 v18, v6

    const/4 v3, 0x0

    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7, v2, v0, v6, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object/from16 v22, v0

    move-object/from16 p6, v3

    move-object/from16 p2, v4

    move/from16 v16, v6

    move-object v0, v12

    const/4 v12, 0x0

    goto :goto_5

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    move-object/from16 p6, v3

    move-object v3, v5

    move-object v5, v4

    move-object/from16 v4, p2

    move-object/from16 p2, v5

    move-object v0, v12

    const/4 v12, 0x0

    move/from16 v5, v17

    move/from16 v16, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    move-object/from16 v22, v1

    move-object/from16 v2, v20

    goto :goto_5

    :cond_9
    move-object/from16 v20, v2

    move-object/from16 p6, v3

    move-object/from16 p2, v4

    move/from16 v16, v6

    move-object v0, v12

    const/4 v12, 0x0

    move-object/from16 v22, v12

    :goto_5
    if-eqz v2, :cond_a

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v1, v2, v9, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v5

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    move v1, v14

    goto :goto_6

    :cond_a
    move-object v5, v12

    move/from16 v1, v16

    :goto_6
    if-nez v5, :cond_c

    if-eqz v13, :cond_c

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v9, v4, v13, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v6, 0x10

    if-ne v4, v6, :cond_b

    move-object v5, v3

    check-cast v5, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    goto :goto_7

    :cond_b
    iget-object v3, v13, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    const-string v4, "simpleType definition"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "src-resolve"

    invoke-virtual {v7, v4, v3, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_c
    :goto_7
    if-nez v5, :cond_d

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    :cond_d
    move-object v14, v15

    move-object v3, v15

    move-object/from16 v15, v23

    move-object/from16 v16, p2

    move-object/from16 v17, v5

    move-object/from16 v20, p6

    invoke-virtual/range {v14 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    if-eqz p5, :cond_e

    if-eqz v23, :cond_e

    invoke-virtual {v10, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;)V

    :cond_e
    if-nez v23, :cond_10

    if-eqz p5, :cond_f

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "s4s-att-must-appear"

    invoke-virtual {v7, v6, v4, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_8

    :cond_f
    const-string v4, "src-attribute.3.1"

    invoke-virtual {v7, v4, v12, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_8
    const-string v23, "(no name)"

    :cond_10
    move-object/from16 v4, v23

    if-eqz v2, :cond_11

    const-string v6, "(annotation?, (simpleType?))"

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v4, v6, v10}, [Ljava/lang/Object;

    move-result-object v6

    const-string v10, "s4s-elt-must-match.1"

    invoke-virtual {v7, v10, v6, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_11
    if-eqz v11, :cond_12

    if-eqz v0, :cond_12

    const-string v0, "src-attribute.1"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_12
    if-eqz v1, :cond_13

    if-eqz v13, :cond_13

    const-string v0, "src-attribute.4"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_13
    invoke-virtual {v7, v4, v5, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->checkNotationType(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Lorg/w3c/dom/Element;)V

    move-object/from16 v1, p6

    if-eqz v1, :cond_14

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v2, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    :try_start_0
    invoke-virtual {v7, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;->checkDefaultValid(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "a-props-correct.2"

    invoke-virtual {v7, v2, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_14
    :goto_9
    if-eqz v1, :cond_15

    invoke-interface {v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "a-props-correct.3"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_15
    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "no-xmlns"

    invoke-virtual {v7, v0, v12, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_16
    move-object/from16 v1, p2

    if-eqz v1, :cond_17

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "no-xsi"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_17
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    return-object v12

    :cond_18
    return-object v3
.end method
