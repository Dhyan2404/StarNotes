.class public final Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Schema4Annotations"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 31

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;-><init>()V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    const/4 v3, 0x3

    iput-short v3, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const/4 v4, 0x6

    invoke-direct {v1, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v6

    sget-object v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v8

    iget-object v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v10, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v9, v10, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v10, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v9, v10, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v10, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-direct {v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;-><init>()V

    new-instance v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-direct {v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;-><init>()V

    new-instance v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-direct {v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;-><init>()V

    iput-object v9, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-object v10, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-object v15, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;-><init>()V

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;-><init>()V

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;-><init>()V

    new-instance v12, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    invoke-direct {v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v11, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-direct {v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;-><init>()V

    iput-object v11, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    sget-object v16, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v3, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v24, v12

    move-object/from16 v12, v16

    move-object/from16 v25, v13

    move-object/from16 v13, v17

    move-object/from16 v26, v14

    move-object v14, v2

    move-object v2, v15

    move v15, v3

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v9

    move-object/from16 v19, v22

    invoke-virtual/range {v11 .. v19}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    move-object/from16 v15, v24

    iput-short v3, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v3, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    invoke-direct {v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v11, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-direct {v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;-><init>()V

    iput-object v11, v14, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    sget-object v19, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const-string v3, "anyURI"

    invoke-virtual {v13, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v27, v10

    move-object v10, v11

    move-object/from16 v11, v19

    move-object/from16 v28, v14

    move/from16 v14, v16

    move-object/from16 v29, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v22

    invoke-virtual/range {v10 .. v18}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    move-object/from16 v15, v28

    const/4 v10, 0x0

    iput-short v10, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v10, v15, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    invoke-direct {v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-direct {v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;-><init>()V

    iput-object v10, v14, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    const-string v11, "lang"

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    move-object/from16 v16, v14

    const-string v14, "language"

    invoke-virtual {v13, v14}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v14, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v30, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v22

    invoke-virtual/range {v10 .. v18}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    const/4 v10, 0x0

    iput-short v10, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v10, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    invoke-direct {v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v11, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-direct {v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;-><init>()V

    iput-object v11, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    const/4 v13, 0x0

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v3, 0x0

    move-object/from16 v12, v19

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v11 .. v19}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    const/4 v3, 0x0

    iput-short v3, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v3, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;-><init>()V

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    const/4 v15, 0x0

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v11, 0x2

    iput-short v11, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fType:S

    const/4 v12, 0x3

    iput-short v12, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    move-object/from16 v12, v29

    invoke-virtual {v4, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    iput-object v3, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-object/from16 v14, v26

    move-object/from16 v12, v30

    invoke-virtual {v14, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    invoke-virtual {v14, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    iput-object v3, v14, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-object/from16 v7, v25

    invoke-virtual {v7, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    iput-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedModelGroupParticle()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v3

    new-instance v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v12, 0x65

    iput-short v12, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    iput v11, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v11, v11, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v11, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;->createChoiceElementParticle(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v11, v12

    iget-object v8, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;->createChoiceElementParticle(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v8, v11

    iput-object v10, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedAnyWildcardSequenceParticle()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#AnonType_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    sget-object v8, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    const/16 v17, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v11, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    const/4 v14, 0x0

    invoke-direct {v11, v15, v14}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    move-object/from16 v23, v11

    move-object v11, v9

    move-object/from16 v25, v26

    move-object v14, v8

    move-object/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v4

    move-object/from16 v22, v3

    invoke-virtual/range {v11 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;SSSSZLcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v20, 0x0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v7, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    move-object v3, v10

    move-object/from16 v10, v27

    move-object v13, v8

    move-object/from16 v19, v25

    move-object/from16 v21, v6

    move-object/from16 v22, v1

    invoke-virtual/range {v10 .. v22}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;SSSSZLcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v27

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v21, 0x0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    move-object v11, v2

    move-object v14, v8

    move-object/from16 v20, v26

    move-object/from16 v22, v6

    move-object/from16 v23, v0

    invoke-virtual/range {v11 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;SSSSZLcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    return-void
.end method

.method private createAnnotationElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;-><init>()V

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    iput-object p0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setIsGlobal()V

    const/4 p0, 0x7

    iput-short p0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->setConstraintType(S)V

    return-object v0
.end method

.method private createAnyLaxWildcardParticle()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 3

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v1, 0x2

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fType:S

    const/4 v0, 0x3

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    return-object p0
.end method

.method private createChoiceElementParticle(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    return-object p0
.end method

.method private createUnboundedAnyWildcardSequenceParticle()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedModelGroupParticle()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v2, 0x66

    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v2, 0x1

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$Schema4Annotations;->createAnyLaxWildcardParticle()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object p0

    aput-object p0, v2, v3

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    return-object v0
.end method

.method private createUnboundedModelGroupParticle()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    return-object p0
.end method


# virtual methods
.method public addComplexTypeDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public addGlobalAttributeDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalNotationDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalTypeDecl(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V
    .locals 0

    return-void
.end method

.method public addRedefinedGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized getDOMParser()Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGrammarDescription()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->makeClone()Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getSAXParser()Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0

    return-void
.end method
