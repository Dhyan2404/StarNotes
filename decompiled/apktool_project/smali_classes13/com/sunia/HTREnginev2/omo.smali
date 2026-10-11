.class public abstract Lcom/sunia/HTREnginev2/omo;
.super Lorg/apache/xerces/impl/xs/traversers/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/omo$a;
    }
.end annotation


# instance fields
.field public o:Lcom/sunia/HTREnginev2/omo$a;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/a;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    new-instance p1, Lcom/sunia/HTREnginev2/omo$a;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/omo$a;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/omo;->o:Lcom/sunia/HTREnginev2/omo$a;

    return-void
.end method


# virtual methods
.method public q(Lorg/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    iget-short v0, p1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    check-cast p1, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short p1, p1, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v0, 0x67

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public r(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 14

    move-object v7, p0

    move-object/from16 v8, p2

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    move-object v6, p1

    invoke-virtual {v0, p1, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v10, v9, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v9

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    :goto_0
    move-object v13, v10

    move-object v10, v0

    move-object v0, v13

    goto :goto_1

    :cond_1
    move-object v0, v10

    move-object v10, v11

    :goto_1
    iget-object v1, v7, Lcom/sunia/HTREnginev2/omo;->o:Lcom/sunia/HTREnginev2/omo$a;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/omo$a;->d()V

    move-object v12, v0

    :goto_2
    if-nez v12, :cond_3

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v0, v9, v0

    check-cast v0, Lorg/apache/xerces/impl/xs/util/XInt;

    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v9, v1

    check-cast v1, Lorg/apache/xerces/impl/xs/util/XInt;

    sget v2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v2, v9, v2

    check-cast v2, Ljava/lang/Long;

    new-instance v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v4, 0x67

    iput-short v4, v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v4, v7, Lcom/sunia/HTREnginev2/omo;->o:Lcom/sunia/HTREnginev2/omo$a;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/omo$a;->b()I

    move-result v4

    iput v4, v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    iget-object v4, v7, Lcom/sunia/HTREnginev2/omo;->o:Lcom/sunia/HTREnginev2/omo$a;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/omo$a;->c()[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v10, :cond_2

    new-instance v4, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    invoke-virtual {v4, v10}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    goto :goto_3

    :cond_2
    sget-object v4, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_3
    iput-object v4, v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    new-instance v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v5}, Lorg/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v10, 0x3

    iput-short v10, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-object v3, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    iput-object v4, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, v5

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p4

    move-wide v5, v10

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->e(Lorg/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lorg/w3c/dom/Element;IJ)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v9, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-object v0

    :cond_3
    invoke-static {v12}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    const/4 v4, 0x1

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/c;->r(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_4

    :cond_4
    const-string v0, "(annotation?, element*)"

    invoke-static {v12}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "all"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {p0, v1, v0, v12}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move-object v0, v11

    :goto_4
    if-eqz v0, :cond_5

    iget-object v1, v7, Lcom/sunia/HTREnginev2/omo;->o:Lcom/sunia/HTREnginev2/omo$a;

    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/omo$a;->a(Lorg/apache/xerces/impl/xs/XSParticleDecl;)V

    :cond_5
    invoke-static {v12}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    goto/16 :goto_2
.end method

.method public s(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sunia/HTREnginev2/omo;->t(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;IZLorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;IZLorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v6, p3

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v0, v9, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v11, v10, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v11

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v3, v10

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    :goto_0
    move-object v14, v11

    move-object v11, v0

    move-object v0, v14

    goto :goto_1

    :cond_1
    move-object v0, v11

    move-object v11, v12

    :goto_1
    iget-object v1, v7, Lcom/sunia/HTREnginev2/omo;->o:Lcom/sunia/HTREnginev2/omo$a;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/omo$a;->d()V

    move-object v13, v0

    :goto_2
    if-nez v13, :cond_5

    sget v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v0, v10, v0

    check-cast v0, Lorg/apache/xerces/impl/xs/util/XInt;

    sget v1, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v10, v1

    check-cast v1, Lorg/apache/xerces/impl/xs/util/XInt;

    sget v2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v2, v10, v2

    check-cast v2, Ljava/lang/Long;

    new-instance v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    if-eqz p5, :cond_2

    const/16 v4, 0x65

    goto :goto_3

    :cond_2
    const/16 v4, 0x66

    :goto_3
    iput-short v4, v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v4, v7, Lcom/sunia/HTREnginev2/omo;->o:Lcom/sunia/HTREnginev2/omo$a;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/omo$a;->b()I

    move-result v4

    iput v4, v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    iget-object v4, v7, Lcom/sunia/HTREnginev2/omo;->o:Lcom/sunia/HTREnginev2/omo$a;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/omo$a;->c()[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v11, :cond_3

    new-instance v4, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    invoke-virtual {v4, v11}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    goto :goto_4

    :cond_3
    sget-object v4, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_4
    iput-object v4, v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    new-instance v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v5}, Lorg/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v6, 0x3

    iput-short v6, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-object v3, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    iput-object v4, v5, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p5, :cond_4

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    goto :goto_5

    :cond_4
    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    :goto_5
    move-object v3, v0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v5

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p4

    move-wide v5, v11

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/a;->e(Lorg/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lorg/w3c/dom/Element;IJ)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/traversers/a;->c:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    return-object v0

    :cond_5
    invoke-static {v13}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/c;->r(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto/16 :goto_8

    :cond_6
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->T:Lorg/apache/xerces/impl/xs/traversers/d;

    invoke-virtual {v0, v13, v8, v6}, Lorg/apache/xerces/impl/xs/traversers/d;->w(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/omo;->q(Lorg/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "cos-all-limited.1.2"

    invoke-virtual {p0, v0, v12, v13}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_6
    move-object v0, v12

    goto :goto_8

    :cond_7
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/omo;->s(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_8

    :cond_8
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/omo;->u(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_8

    :cond_9
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/a;->a:Lorg/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Y:Lorg/apache/xerces/impl/xs/traversers/g;

    invoke-virtual {v0, v13, v8, v6}, Lorg/apache/xerces/impl/xs/traversers/g;->q(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_8

    :cond_a
    const-string v0, "(annotation?, (element | group | choice | sequence | any)*)"

    if-eqz p5, :cond_b

    const-string v1, "choice"

    goto :goto_7

    :cond_b
    const-string v1, "sequence"

    :goto_7
    invoke-static {v13}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {p0, v1, v0, v13}, Lorg/apache/xerces/impl/xs/traversers/a;->j(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_6

    :cond_c
    :goto_8
    if-eqz v0, :cond_d

    iget-object v1, v7, Lcom/sunia/HTREnginev2/omo;->o:Lcom/sunia/HTREnginev2/omo$a;

    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/omo$a;->a(Lorg/apache/xerces/impl/xs/XSParticleDecl;)V

    :cond_d
    invoke-static {v13}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    goto/16 :goto_2
.end method

.method public u(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sunia/HTREnginev2/omo;->t(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;IZLorg/apache/xerces/xs/XSObject;)Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object p0

    return-object p0
.end method
