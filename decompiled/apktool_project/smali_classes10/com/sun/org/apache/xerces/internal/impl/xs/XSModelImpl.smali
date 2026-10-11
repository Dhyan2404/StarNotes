.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSModel;


# static fields
.field private static final GLOBAL_COMP:[Z

.field private static final MAX_COMP_IDX:S = 0x10s


# instance fields
.field private fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

.field private fGlobalComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

.field private fGrammarCount:I

.field private fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

.field private fGrammarMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

.field private fHasIDC:Z

.field private fNSComponents:[[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

.field private fNamespaces:[Ljava/lang/String;

.field private fSubGroupMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->GLOBAL_COMP:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>([Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fHasIDC:Z

    array-length v1, p1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move v3, v0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v7, p1, v3

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v7, p1, v3

    aput-object v7, v6, v3

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v6, v6, v3

    sget-object v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v6, v7, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    aput-object v3, p1, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    aput-object v3, p1, v1

    move v1, v2

    :cond_2
    move p1, v0

    :goto_1
    if-ge p1, v1, :cond_9

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_2
    if-ltz v3, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move v6, v0

    :goto_3
    if-ge v6, v1, :cond_5

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v7, v7, v6

    if-ne v4, v7, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ne v6, v1, :cond_7

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    array-length v6, v6

    if-ne v1, v6, :cond_6

    mul-int/lit8 v6, v1, 0x2

    new-array v7, v6, [Ljava/lang/String;

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    invoke-static {v8, v0, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    new-array v6, v6, [Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    invoke-static {v7, v0, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    :cond_6
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aput-object v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_9
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    mul-int/lit8 v2, v1, 0x2

    invoke-direct {p1, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    :goto_5
    if-ge v0, v1, :cond_b

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->hasIDConstraints()Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fHasIDC:Z

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    const/16 p1, 0x11

    new-array v0, p1, [Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGlobalComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    filled-new-array {v1, p1}, [I

    move-result-object p1

    const-class v0, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNSComponents:[[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->buildSubGroups()V

    return-void
.end method

.method private buildSubGroups()V
    .locals 9

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getSubstitutionGroups()[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->addSubstitutionGroup([Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->getComponents(S)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->getLength()I

    move-result v3

    new-instance v4, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    mul-int/lit8 v5, v3, 0x2

    invoke-direct {v4, v5}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fSubGroupMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fSubGroupMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    array-length v7, v5

    if-lez v7, :cond_1

    new-instance v7, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    array-length v8, v5

    invoke-direct {v7, v5, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    goto :goto_2

    :cond_1
    sget-object v7, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    :goto_2
    invoke-virtual {v6, v4, v7}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static final null2EmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized getAnnotations()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    :try_start_1
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fNumAnnotations:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move v3, v0

    move v4, v3

    :goto_1
    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v5, v5, v3

    iget v6, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fNumAnnotations:I

    if-lez v6, :cond_2

    iget-object v7, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-static {v7, v0, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fNumAnnotations:I

    add-int/2addr v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAttributeDeclaration(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    return-object p0
.end method

.method public getAttributeGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeGroupDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSAttributeGroupDefinition;

    return-object p0
.end method

.method public declared-synchronized getComponents(S)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;
    .locals 5

    monitor-enter p0

    if-lez p1, :cond_b

    const/16 v0, 0x10

    if-gt p1, v0, :cond_b

    :try_start_0
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->GLOBAL_COMP:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGlobalComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    aget-object v2, v2, p1

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    const/16 v4, 0xf

    if-ge v2, v3, :cond_7

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x5

    if-eq p1, v3, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/16 v3, 0xb

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-eq p1, v4, :cond_9

    if-ne p1, v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGlobalComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-direct {v2, v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;-><init>([Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;I)V

    aput-object v2, v0, p1

    goto :goto_3

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGlobalComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMap4Types;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-direct {v2, v3, v1, v4, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMap4Types;-><init>([Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/util/SymbolHash;IS)V

    aput-object v2, v0, p1

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGlobalComponents:[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    :goto_4
    :try_start_1
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getComponentsByNamespace(SLjava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;
    .locals 5

    monitor-enter p0

    if-lez p1, :cond_f

    const/16 v0, 0x10

    if-gt p1, v0, :cond_f

    :try_start_0
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->GLOBAL_COMP:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ne v1, v2, :cond_5

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNSComponents:[[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    aget-object v2, v2, v1

    aget-object v3, v2, p1

    if-nez v3, :cond_e

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-eq p1, v4, :cond_b

    const/4 v4, 0x2

    if-eq p1, v4, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_9

    const/4 v4, 0x5

    if-eq p1, v4, :cond_8

    const/4 v4, 0x6

    if-eq p1, v4, :cond_7

    const/16 v4, 0xb

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_9

    if-eq p1, v0, :cond_9

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    goto :goto_3

    :cond_b
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    :goto_3
    if-eq p1, v3, :cond_d

    if-ne p1, v0, :cond_c

    goto :goto_4

    :cond_c
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;

    invoke-direct {v0, p2, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolHash;)V

    aput-object v0, v2, p1

    goto :goto_5

    :cond_d
    :goto_4
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMap4Types;

    invoke-direct {v0, p2, v4, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMap4Types;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolHash;S)V

    aput-object v0, v2, p1

    :cond_e
    :goto_5
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNSComponents:[[Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    aget-object p2, p2, v1

    aget-object p1, p2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_f
    :goto_6
    :try_start_2
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getElementDeclaration(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    return-object p0
.end method

.method public getModelGroupDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSModelGroupDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSModelGroupDefinition;

    return-object p0
.end method

.method public getNamespaceItems()Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItemList;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarList:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/NSItemListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;I)V

    return-object v0
.end method

.method public getNamespaces()Lcom/sun/org/apache/xerces/internal/xs/StringList;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public getNotationDeclaration(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    return-object p0
.end method

.method public getSubstitutionGroup(Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;)Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fSubGroupMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    return-object p0
.end method

.method public getTypeDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fGrammarMap:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    return-object p0
.end method

.method public hasIDConstraints()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;->fHasIDC:Z

    return p0
.end method
