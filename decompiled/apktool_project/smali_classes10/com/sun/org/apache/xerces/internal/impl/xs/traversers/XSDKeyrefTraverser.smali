.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDKeyrefTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractIDConstraintTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method public traverse(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "s4s-att-must-appear"

    if-nez v1, :cond_0

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    sget-object p4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_0
    sget v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    aget-object v3, v0, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    if-nez v3, :cond_1

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    sget-object p4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x5

    invoke-virtual {v2, p3, v4, v3, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    const-string v3, "identity constraint key/unique"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "src-resolve"

    invoke-virtual {p0, v3, v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_3
    :goto_0
    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_5
    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;

    iget-object v4, p3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v5, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;)V

    invoke-virtual {p0, v3, p1, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseIdentityConstraint(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v4

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v5

    if-eq v4, v5, :cond_6

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "c-props-correct.2"

    invoke-virtual {p0, p4, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p4, p2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    :goto_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-void
.end method
