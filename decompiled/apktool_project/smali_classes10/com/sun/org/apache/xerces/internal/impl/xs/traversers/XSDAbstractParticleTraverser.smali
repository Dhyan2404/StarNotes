.class abstract Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;
    }
.end annotation


# instance fields
.field fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    return-void
.end method

.method private traverseSeqChoice(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;IZLcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v6, p3

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v0, v9, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    invoke-static {v11}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v11, v10, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v11}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v11

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v3, v10

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

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
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->pushContext()V

    move-object v13, v0

    :goto_2
    if-eqz v13, :cond_a

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    goto/16 :goto_5

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v0, v13, v8, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->hasAllContent(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "cos-all-limited.1.2"

    invoke-virtual {p0, v0, v12, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_3
    move-object v0, v12

    goto :goto_5

    :cond_3
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseChoice(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_5

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSequence(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;

    invoke-virtual {v0, v13, v8, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;->traverseAny(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_5

    :cond_6
    const-string v0, "(annotation?, (element | group | choice | sequence | any)*)"

    if-eqz p5, :cond_7

    const-string v1, "choice"

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_7
    const-string v1, "sequence"

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    :goto_4
    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {p0, v1, v0, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->addParticle(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)V

    :cond_9
    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    goto/16 :goto_2

    :cond_a
    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v0, v10, v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v10, v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v2, v10, v2

    check-cast v2, Ljava/lang/Long;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;-><init>()V

    if-eqz p5, :cond_b

    const/16 v4, 0x65

    goto :goto_6

    :cond_b
    const/16 v4, 0x66

    :goto_6
    iput-short v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->getParticleCount()I

    move-result v4

    iput v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->popContext()[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v11, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    const/4 v5, 0x3

    iput-short v5, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-object v3, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    if-eqz p5, :cond_c

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    goto :goto_7

    :cond_c
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    :goto_7
    move-object v3, v0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v4

    move-object v2, v3

    move-object v3, v5

    move/from16 v4, p4

    move-wide v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->checkOccurrences(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Ljava/lang/String;Lorg/w3c/dom/Element;IJ)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v0
.end method


# virtual methods
.method public hasAllContent(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    iget-short v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iget-short p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v0, 0x67

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public traverseAll(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 14

    move-object v7, p0

    move-object/from16 v8, p2

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    move-object v6, p1

    invoke-virtual {v0, p1, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v10, v9, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v9

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

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
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->pushContext()V

    move-object v12, v0

    :goto_2
    if-eqz v12, :cond_4

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    const/4 v4, 0x1

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_3

    :cond_2
    const-string v0, "(annotation?, element*)"

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "all"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {p0, v1, v0, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move-object v0, v11

    :goto_3
    if-eqz v0, :cond_3

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->addParticle(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)V

    :cond_3
    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    goto :goto_2

    :cond_4
    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v0, v9, v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v9, v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v2, v9, v2

    check-cast v2, Ljava/lang/Long;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v4, 0x67

    iput-short v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->getParticleCount()I

    move-result v4

    iput v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->popContext()[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v10, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    const/4 v5, 0x3

    iput-short v5, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-object v3, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, v4

    move-object v2, v3

    move-object v3, v5

    move/from16 v4, p4

    move-wide v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->checkOccurrences(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Ljava/lang/String;Lorg/w3c/dom/Element;IJ)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v9, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v0
.end method

.method public traverseChoice(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSeqChoice(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;IZLcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object p0

    return-object p0
.end method

.method public traverseSequence(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSeqChoice(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;IZLcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object p0

    return-object p0
.end method
