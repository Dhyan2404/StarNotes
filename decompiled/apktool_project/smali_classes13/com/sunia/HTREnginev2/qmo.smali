.class public Lcom/sunia/HTREnginev2/qmo;
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

    const-string v2, "s4s-att-must-appear"

    if-nez v1, :cond_1

    sget-object p2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    sget-object p4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2, p2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p3}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-void

    :cond_1
    sget v3, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    aget-object v3, v0, v3

    check-cast v3, Lorg/apache/xerces/xni/QName;

    if-nez v3, :cond_2

    sget-object p2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    sget-object p4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2, p2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x5

    invoke-virtual {v2, p3, v4, v3, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string v3, "identity constraint key/unique"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "src-resolve"

    invoke-virtual {p0, v3, v2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_2

    :cond_4
    :goto_1
    check-cast v2, Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    new-instance v3, Lorg/apache/xerces/impl/xs/identity/KeyRef;

    iget-object v4, p3, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iget-object v5, p2, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v5, v2}, Lorg/apache/xerces/impl/xs/identity/KeyRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    invoke-virtual {p0, v3, p1, p3, v0}, Lcom/sunia/HTREnginev2/nmo;->q(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v4

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "c-props-correct.2"

    invoke-virtual {p0, p4, p2, p1}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {p4, p2, v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    :cond_8
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lcom/sunia/HTREnginev2/tmo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {p4, p2, v3, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean p2, p1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-eqz p2, :cond_0

    if-eqz v1, :cond_a

    instance-of p2, v1, Lorg/apache/xerces/impl/xs/identity/KeyRef;

    if-eqz p2, :cond_a

    move-object v3, v1

    check-cast v3, Lorg/apache/xerces/impl/xs/identity/KeyRef;

    :cond_a
    invoke-virtual {p1, v3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto/16 :goto_0
.end method
