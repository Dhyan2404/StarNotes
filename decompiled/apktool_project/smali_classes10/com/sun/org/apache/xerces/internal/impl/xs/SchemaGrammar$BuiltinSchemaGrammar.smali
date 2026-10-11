.class public Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuiltinSchemaGrammar"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 9

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;-><init>()V

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->getInstance()Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    iput-short v1, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->getBuiltInTypes()Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    iput-short v1, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-direct {v1, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    const-string v2, "QName"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v4, v1, p1, v2, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;S)V

    invoke-virtual {v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    const-string v2, "boolean"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v4, v1, p1, v2, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;S)V

    invoke-virtual {v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "anyURI"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v7

    sget-object v8, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v2, v8, p1, v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;S)V

    invoke-virtual {v1, v8, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v1, v0, p1, v7, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;S)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
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
