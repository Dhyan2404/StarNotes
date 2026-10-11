.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method public traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    new-instance v9, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;-><init>()V

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v10, 0x1

    invoke-virtual {v0, v7, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v11

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, v11, v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "attributeGroup (global)"

    const-string v1, "name"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-att-must-appear"

    invoke-virtual {p0, v1, v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    const-string v0, "no name"

    :cond_0
    move-object v12, v0

    iput-object v12, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v13, v11, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v3, v11

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move-object v14, v13

    move-object v13, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v14

    move-object v2, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAttrsAndAttrGrps(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "(annotation?, ((attribute | attributeGroup)*, anyAttribute?))"

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "s4s-elt-must-match.1"

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_3
    invoke-virtual {v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iget-object v3, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v1, v2, v12, v12, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, v8, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGrpOrAttrGrpRedefinedByRestriction(ILcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    if-eqz v0, :cond_4

    invoke-virtual {v9, v12, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    sub-int/2addr v1, v10

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    array-length v1, v0

    sub-int/2addr v1, v10

    aget-object v0, v0, v1

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "src-redefine.7.2.2"

    invoke-virtual {p0, v1, v0, v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_4
    iput-object v13, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)V

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v9
.end method

.method public traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;
    .locals 5

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object p3

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v1, p3, v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    if-nez v1, :cond_0

    const-string v0, "attributeGroup (local)"

    const-string v1, "ref"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-att-must-appear"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, p3, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, p2, v3, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    const-string v1, "(annotation?)"

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, p3, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v2
.end method
