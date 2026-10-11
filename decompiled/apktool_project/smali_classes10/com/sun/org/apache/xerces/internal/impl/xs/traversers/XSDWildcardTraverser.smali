.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method public traverseAny(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;->traverseWildcardDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-result-object p1

    if-eqz p1, :cond_1

    sget p3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object p3, v0, p3

    check-cast p3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result p3

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v0, v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->getParticleDecl()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    :goto_0
    const/4 v3, 0x2

    iput-short v3, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iput-object p1, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    iput p3, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v2
.end method

.method public traverseAnyAttribute(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;->traverseWildcardDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object p1
.end method

.method public traverseWildcardDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;
    .locals 8

    new-instance p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-direct {p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;-><init>()V

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    aget-object v0, p2, v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->shortValue()S

    move-result v0

    iput-short v0, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fType:S

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aget-object v0, p2, v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    aget-object v0, p2, v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->shortValue()S

    move-result v0

    iput-short v0, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    const-string p2, "(annotation?)"

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "wildcard"

    filled-new-array {v0, p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "s4s-elt-must-match.1"

    invoke-virtual {p0, p3, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    :cond_3
    :goto_1
    iput-object v1, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    return-object p4
.end method
