.class abstract Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    }
.end annotation


# static fields
.field protected static final CHILD_OF_GROUP:I = 0x4

.field protected static final GROUP_REF_WITH_ALL:I = 0x2

.field protected static final NOT_ALL_CONTEXT:I = 0x0

.field protected static final NO_NAME:Ljava/lang/String; = "(no name)"

.field protected static final PROCESSING_ALL_EL:I = 0x1

.field protected static final PROCESSING_ALL_GP:I = 0x8

.field private static final fQNameDV:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;


# instance fields
.field protected fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

.field private fPattern:Ljava/lang/StringBuffer;

.field protected fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field protected fValidateAnnotations:Z

.field fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

.field private final xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "QName"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fQNameDV:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    return-void
.end method

.method private containsQName(Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;)Z
    .locals 4

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result p0

    const/16 p1, 0x12

    if-eq p0, p1, :cond_0

    const/16 p1, 0x14

    if-ne p0, p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getItemType()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;)Z

    move-result p0

    return p0

    :cond_3
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getMemberTypes()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private static processAttValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    const-string v2, "&quot;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1

    const-string v2, "&gt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v3, 0x26

    if-ne v2, v3, :cond_2

    const-string v2, "&amp;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkNotationType(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Lorg/w3c/dom/Element;)V
    .locals 3

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getDefinedFacets()S

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "enumeration-required-notation"

    invoke-virtual {p0, p2, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method public checkOccurrences(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Ljava/lang/String;Lorg/w3c/dom/Element;IJ)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget v5, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    sget v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    const/4 v7, 0x1

    shl-int v6, v7, v6

    int-to-long v8, v6

    and-long v8, p5, v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    sget v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    shl-int v9, v7, v9

    int-to-long v12, v9

    and-long v12, p5, v12

    cmp-long v9, v12, v10

    if-eqz v9, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    and-int/lit8 v10, p4, 0x1

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_2

    :cond_2
    move v10, v8

    :goto_2
    and-int/lit8 v11, p4, 0x8

    if-eqz v11, :cond_3

    move v11, v7

    goto :goto_3

    :cond_3
    move v11, v8

    :goto_3
    and-int/lit8 v12, p4, 0x2

    if-eqz v12, :cond_4

    move v12, v7

    goto :goto_4

    :cond_4
    move v12, v8

    :goto_4
    and-int/lit8 v13, p4, 0x4

    if-eqz v13, :cond_5

    move v13, v7

    goto :goto_5

    :cond_5
    move v13, v8

    :goto_5
    if-eqz v13, :cond_7

    const-string v13, "s4s-att-not-allowed"

    if-nez v6, :cond_6

    const-string v4, "minOccurs"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v13, v4, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move v4, v7

    :cond_6
    if-nez v9, :cond_7

    const-string v5, "maxOccurs"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v13, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move v5, v7

    :cond_7
    const/4 v2, 0x0

    if-nez v4, :cond_8

    if-nez v5, :cond_8

    iput-short v8, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    return-object v2

    :cond_8
    if-eqz v10, :cond_9

    if-eq v5, v7, :cond_b

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "cos-all-limited.2"

    invoke-virtual {p0, v4, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_6

    :cond_9
    if-nez v11, :cond_a

    if-eqz v12, :cond_b

    :cond_a
    if-eq v5, v7, :cond_b

    const-string v4, "cos-all-limited.1.2"

    invoke-virtual {p0, v4, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_6

    :cond_b
    move v7, v5

    :goto_6
    iput v7, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    return-object v1
.end method

.method public reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setExtraChecking(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setSymbolTable(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    return-void
.end method

.method public traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;
    .locals 10

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    move-object v2, v1

    :cond_0
    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "src-annotation"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v4, v3, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v0, :cond_2

    check-cast v3, Lorg/w3c/dom/Text;

    invoke-interface {v3}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x1

    invoke-virtual {v3, p3, v4, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v4, v3, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v0, :cond_4

    check-cast p3, Lorg/w3c/dom/Text;

    invoke-interface {p3}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_5

    return-object v1

    :cond_5
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p3

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object p2, p2, v0

    check-cast p2, Ljava/util/Vector;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_8

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const-string v8, ""

    if-ne v7, v6, :cond_6

    move-object v7, v4

    move-object v6, v8

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    iget-object v9, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    add-int/lit8 v4, v5, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    if-eqz p0, :cond_a

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    invoke-virtual {p4, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;)V

    :cond_a
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-direct {p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-object p0

    :cond_b
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    if-eqz p0, :cond_c

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;

    invoke-direct {p0, v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    invoke-virtual {p4, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;)V

    :cond_c
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-direct {p0, v2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-object p0
.end method

.method public traverseAttrsAndAttrGrps(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lorg/w3c/dom/Element;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    :goto_0
    const-string v6, "src-attribute_group.2"

    const-string v7, "src-ct.4"

    if-eqz v5, :cond_13

    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "ag-props-correct.3"

    const-string v11, "ct-props-correct.5"

    const-string v12, "ag-props-correct.2"

    const-string v13, "ct-props-correct.4"

    if-eqz v9, :cond_6

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {v8, v5, v2, v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    move-result-object v8

    if-nez v8, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v6, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v11

    :goto_1
    if-nez v4, :cond_2

    iget-object v7, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_2
    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7, v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v10, v6, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_d

    :cond_3
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v12, v13

    :goto_3
    if-nez v4, :cond_5

    iget-object v6, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_4

    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_4
    iget-object v7, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v12, v6, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_d

    :cond_6
    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v8, v5, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v8

    if-nez v8, :cond_7

    goto/16 :goto_e

    :cond_7
    invoke-virtual {v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object v9

    invoke-interface {v9}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_e

    invoke-interface {v9, v15}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v16

    move-object/from16 p1, v6

    move-object/from16 v6, v16

    check-cast v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    move-object/from16 v16, v7

    iget-object v7, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v9

    iget-object v9, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;

    move-result-object v7

    if-nez v7, :cond_b

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    if-nez v4, :cond_8

    move-object v9, v10

    goto :goto_6

    :cond_8
    move-object v9, v11

    :goto_6
    move-object/from16 v18, v10

    if-nez v4, :cond_9

    iget-object v10, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_7

    :cond_9
    invoke-virtual/range {p5 .. p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    :goto_7
    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v10, v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9, v6, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_a

    :cond_a
    move-object/from16 v18, v10

    goto :goto_a

    :cond_b
    move-object/from16 v18, v10

    if-nez v4, :cond_c

    move-object v7, v12

    goto :goto_8

    :cond_c
    move-object v7, v13

    :goto_8
    if-nez v4, :cond_d

    iget-object v9, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_9

    :cond_d
    invoke-virtual/range {p5 .. p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_9
    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v7, v6, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto :goto_5

    :cond_e
    move-object/from16 p1, v6

    move-object/from16 v16, v7

    iget-object v6, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-eqz v6, :cond_12

    iget-object v7, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-nez v7, :cond_f

    iput-object v6, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    goto :goto_d

    :cond_f
    iget-short v8, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v7, v6, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->performIntersectionWith(Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;S)Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-result-object v6

    iput-object v6, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-nez v6, :cond_12

    if-nez v4, :cond_10

    move-object/from16 v6, p1

    goto :goto_b

    :cond_10
    move-object/from16 v6, v16

    :goto_b
    if-nez v4, :cond_11

    iget-object v7, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_c

    :cond_11
    invoke-virtual/range {p5 .. p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_c
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_12
    :goto_d
    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    goto/16 :goto_0

    :cond_13
    :goto_e
    move-object/from16 p1, v6

    move-object/from16 v16, v7

    if-eqz v5, :cond_18

    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;

    invoke-virtual {v6, v5, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;->traverseAnyAttribute(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-result-object v2

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-nez v3, :cond_14

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    goto :goto_11

    :cond_14
    iget-short v6, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v2, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->performIntersectionWith(Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;S)Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-nez v2, :cond_17

    if-nez v4, :cond_15

    move-object/from16 v6, p1

    goto :goto_f

    :cond_15
    move-object/from16 v6, v16

    :goto_f
    if-nez v4, :cond_16

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    goto :goto_10

    :cond_16
    invoke-virtual/range {p5 .. p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_10
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_17
    :goto_11
    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    :cond_18
    return-object v5
.end method

.method public traverseFacets(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
    .locals 32

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct {v7, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->containsQName(Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v12, v0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->reset()V

    const/4 v13, 0x0

    move-object/from16 v14, p1

    move v3, v13

    move v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_1
    if-eqz v14, :cond_3d

    invoke-static {v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "(annotation?)"

    move-object/from16 p1, v5

    const-string v5, "s4s-elt-must-match.1"

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-eqz v1, :cond_8

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v13, v9, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;

    move-result-object v1

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v0, v1, v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    aget-object v0, v1, v0

    move-object v11, v0

    check-cast v11, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-interface/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v0

    const/16 v5, 0x14

    if-ne v0, v5, :cond_1

    iget-object v0, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v0, v11}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fQNameDV:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iget-object v5, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v13, v5, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const/4 v5, 0x6

    invoke-virtual {v2, v9, v5, v0, v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    :goto_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_3
    iget-object v0, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v2, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    goto :goto_4

    :cond_1
    move-object/from16 v19, v2

    :goto_4
    if-nez v6, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    invoke-direct {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v6, v0

    move-object v0, v5

    goto :goto_5

    :cond_2
    move-object/from16 v0, p1

    :goto_5
    invoke-virtual {v6, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->add(Lcom/sun/org/apache/xerces/internal/xs/XSObject;)V

    if-eqz v10, :cond_3

    invoke-virtual {v12, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-static {v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-static {v11}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    move/from16 v18, v3

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v1, v13, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->add(ILcom/sun/org/apache/xerces/internal/xs/XSObject;)V

    invoke-static {v11}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v11

    move-object/from16 v20, v1

    move v8, v4

    move-object v1, v11

    move-object/from16 v11, v16

    move/from16 v22, v18

    move-object/from16 v21, v19

    move-object/from16 v16, v6

    move/from16 v19, v10

    move-object v10, v5

    goto :goto_7

    :cond_4
    move/from16 v18, v3

    const/16 v17, 0x1

    invoke-static {v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    const/16 v17, 0x0

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v19

    move-object v2, v14

    move/from16 v22, v18

    move v8, v4

    move-object/from16 v4, v20

    move/from16 v19, v10

    move-object/from16 p1, v11

    move-object/from16 v11, v16

    move-object v10, v5

    move/from16 v5, v17

    move-object/from16 v16, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->add(ILcom/sun/org/apache/xerces/internal/xs/XSObject;)V

    goto :goto_6

    :cond_5
    move-object/from16 v20, v1

    move v8, v4

    move-object/from16 p1, v11

    move-object/from16 v11, v16

    move/from16 v22, v18

    move-object/from16 v21, v19

    move-object/from16 v16, v6

    move/from16 v19, v10

    move-object v10, v5

    :goto_6
    move-object/from16 v1, p1

    :goto_7
    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "enumeration"

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v10, v21

    filled-new-array {v2, v10, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v11, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_8

    :cond_6
    move-object/from16 v20, v1

    move/from16 v22, v3

    move v8, v4

    move-object/from16 v16, v6

    move/from16 v19, v10

    invoke-static {v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v10, v1, -0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, v20

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->add(ILcom/sun/org/apache/xerces/internal/xs/XSObject;)V

    :cond_7
    :goto_8
    move-object v5, v0

    move v4, v8

    move-object/from16 v6, v16

    move-object/from16 v1, v20

    goto/16 :goto_a

    :cond_8
    move/from16 v22, v3

    move v8, v4

    move/from16 v19, v10

    move-object/from16 v11, v16

    move-object v10, v2

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    sget v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_9
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    sget v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_9
    invoke-static {v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v15, :cond_a

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v15, v2

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v7, v1, v0, v2, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->add(Lcom/sun/org/apache/xerces/internal/xs/XSObject;)V

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "pattern"

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v10, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v11, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_c
    move-object/from16 v5, p1

    move-object v1, v0

    move v4, v8

    :goto_a
    move/from16 v3, v22

    goto/16 :goto_13

    :cond_d
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_b

    :cond_e
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x4

    goto :goto_b

    :cond_f
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x40

    goto :goto_b

    :cond_10
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x20

    goto :goto_b

    :cond_11
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x80

    goto :goto_b

    :cond_12
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x100

    goto :goto_b

    :cond_13
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0x200

    goto :goto_b

    :cond_14
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x400

    goto :goto_b

    :cond_15
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0x10

    goto :goto_b

    :cond_16
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    :goto_b
    iget-object v5, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v13, 0x0

    invoke-virtual {v5, v14, v13, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v5

    and-int v13, v8, v1

    if-eqz v13, :cond_17

    const-string v13, "src-single-facet-value"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v13, v3, v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_d

    :cond_17
    sget v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    aget-object v13, v5, v3

    if-eqz v13, :cond_23

    or-int/2addr v8, v1

    int-to-short v8, v8

    sget v13, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v13, v5, v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_18

    move/from16 v13, v22

    or-int/2addr v13, v1

    int-to-short v13, v13

    goto :goto_c

    :cond_18
    move/from16 v13, v22

    :goto_c
    const/4 v4, 0x1

    if-eq v1, v4, :cond_22

    if-eq v1, v2, :cond_21

    const/4 v4, 0x4

    if-eq v1, v4, :cond_20

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1f

    const/16 v4, 0x20

    if-eq v1, v4, :cond_1e

    const/16 v4, 0x40

    if-eq v1, v4, :cond_1d

    const/16 v4, 0x80

    if-eq v1, v4, :cond_1c

    const/16 v4, 0x100

    if-eq v1, v4, :cond_1b

    const/16 v4, 0x200

    if-eq v1, v4, :cond_1a

    const/16 v4, 0x400

    if-eq v1, v4, :cond_19

    goto/16 :goto_e

    :cond_19
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->fractionDigits:I

    goto :goto_e

    :cond_1a
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->totalDigits:I

    goto :goto_e

    :cond_1b
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    goto :goto_e

    :cond_1c
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    goto :goto_e

    :cond_1d
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    goto :goto_e

    :cond_1e
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    goto :goto_e

    :cond_1f
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->shortValue()S

    move-result v3

    iput-short v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpace:S

    goto :goto_e

    :cond_20
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxLength:I

    goto :goto_e

    :cond_21
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minLength:I

    goto :goto_e

    :cond_22
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    aget-object v3, v5, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->intValue()I

    move-result v3

    iput v3, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->length:I

    goto :goto_e

    :cond_23
    :goto_d
    move/from16 v13, v22

    :goto_e
    invoke-static {v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object/from16 v26, v2

    const/4 v3, 0x0

    invoke-virtual {v7, v4, v5, v3, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2d

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2c

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2b

    const/16 v3, 0x10

    if-eq v1, v3, :cond_2a

    const/16 v3, 0x20

    if-eq v1, v3, :cond_29

    const/16 v3, 0x40

    if-eq v1, v3, :cond_28

    const/16 v3, 0x80

    if-eq v1, v3, :cond_27

    const/16 v3, 0x100

    if-eq v1, v3, :cond_26

    const/16 v3, 0x200

    if-eq v1, v3, :cond_25

    const/16 v3, 0x400

    if-eq v1, v3, :cond_24

    goto :goto_f

    :cond_24
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_f

    :cond_25
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_f

    :cond_26
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_f

    :cond_27
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_f

    :cond_28
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_f

    :cond_29
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_f

    :cond_2a
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_f

    :cond_2b
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_f

    :cond_2c
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_f

    :cond_2d
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    :goto_f
    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v4

    move-object/from16 v29, p1

    move-object/from16 v17, v5

    move-object/from16 v30, v6

    move/from16 v27, v8

    move/from16 v28, v13

    move-object/from16 v23, v15

    move-object/from16 v13, v26

    goto/16 :goto_11

    :cond_2e
    move-object/from16 v26, v2

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/16 v17, 0x200

    const/16 v18, 0x100

    const/16 v20, 0x10

    const/16 v21, 0x40

    const/16 v22, 0x4

    const/16 v23, 0x2

    invoke-static {v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_39

    const/16 v25, 0x0

    move/from16 v27, v8

    move v8, v1

    move-object/from16 v1, p0

    move/from16 v28, v13

    move-object/from16 v13, v26

    move/from16 v31, v23

    move-object/from16 v23, v15

    move/from16 v15, v31

    move-object v2, v14

    move/from16 v20, v3

    move-object/from16 v3, v24

    move-object/from16 v18, v4

    move-object v4, v5

    move-object/from16 v29, p1

    move-object/from16 v17, v5

    move/from16 v15, v20

    move/from16 v5, v25

    move-object/from16 v30, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    if-eq v8, v15, :cond_38

    const/4 v2, 0x2

    if-eq v8, v2, :cond_37

    const/4 v2, 0x4

    if-eq v8, v2, :cond_36

    const/16 v2, 0x10

    if-eq v8, v2, :cond_35

    const/16 v2, 0x20

    if-eq v8, v2, :cond_34

    const/16 v2, 0x40

    if-eq v8, v2, :cond_33

    const/16 v2, 0x80

    if-eq v8, v2, :cond_32

    const/16 v2, 0x100

    if-eq v8, v2, :cond_31

    const/16 v2, 0x200

    if-eq v8, v2, :cond_30

    const/16 v2, 0x400

    if-eq v8, v2, :cond_2f

    goto :goto_10

    :cond_2f
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_30
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_31
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_32
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_33
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_34
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_35
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_36
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_37
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_38
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    goto :goto_10

    :cond_39
    move-object/from16 v29, p1

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object/from16 v30, v6

    move/from16 v27, v8

    move/from16 v28, v13

    move-object/from16 v23, v15

    move-object/from16 v13, v26

    :goto_10
    move-object/from16 v4, v18

    :goto_11
    if-eqz v4, :cond_3b

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v10, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v11, v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_12

    :cond_3a
    move-object/from16 v29, p1

    move-object/from16 v17, v5

    move-object/from16 v30, v6

    move/from16 v27, v8

    move/from16 v28, v13

    move-object/from16 v23, v15

    :cond_3b
    :goto_12
    move-object/from16 v1, v17

    move-object/from16 v15, v23

    move/from16 v4, v27

    move/from16 v3, v28

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    :goto_13
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v14

    move-object/from16 v8, p2

    move/from16 v10, v19

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_3c
    move-object/from16 v29, p1

    move-object/from16 v23, v15

    move/from16 v13, v22

    goto :goto_14

    :cond_3d
    move v13, v3

    move v8, v4

    move-object/from16 v29, v5

    move-object/from16 v23, v15

    :goto_14
    if-eqz v6, :cond_3e

    or-int/lit16 v0, v8, 0x800

    int-to-short v4, v0

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    iput-object v12, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    move-object/from16 v5, v29

    iput-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->enumAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    goto :goto_15

    :cond_3e
    move v4, v8

    :goto_15
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_3f

    or-int/lit8 v0, v4, 0x8

    int-to-short v4, v0

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    move-object/from16 v15, v23

    iput-object v15, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    :cond_3f
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fPattern:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->xsFacets:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iput-object v14, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lorg/w3c/dom/Element;

    iput-short v4, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    iput-short v13, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    return-object v0
.end method

.method public traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;
    .locals 6

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, p5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p4

    sget v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object p3, p3, v0

    check-cast p3, Ljava/util/Vector;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_0

    const-string v4, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :goto_1
    iget-object v5, p5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p3, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\" "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    invoke-virtual {p5, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;)V

    :cond_3
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-direct {p0, p2, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-object p0

    :cond_4
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidateAnnotations:Z

    if-eqz p0, :cond_5

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    invoke-virtual {p5, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;)V

    :cond_5
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-direct {p0, p2, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-object p0
.end method
