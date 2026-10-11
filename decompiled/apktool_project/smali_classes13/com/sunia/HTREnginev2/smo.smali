.class public Lcom/sunia/HTREnginev2/smo;
.super Lcom/sunia/HTREnginev2/nmo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/nmo;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method public r(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/XSElementDecl;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "s4s-att-must-appear"

    invoke-virtual {p0, p4, p2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p3}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-void

    :cond_1
    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;

    iget-object v3, p3, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iget-object v4, p2, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;

    iget-object v3, p3, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iget-object v4, p2, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    :goto_1
    invoke-virtual {p0, v2, p1, p3, v0}, Lcom/sunia/HTREnginev2/nmo;->q(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p4, p2, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    :cond_3
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lcom/sunia/HTREnginev2/tmo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p4, p2, v2, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean p2, p1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-eqz p2, :cond_0

    if-eqz v1, :cond_5

    instance-of p2, v1, Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;

    :cond_5
    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_0
.end method
