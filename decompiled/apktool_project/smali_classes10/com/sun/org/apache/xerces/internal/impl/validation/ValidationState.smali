.class public Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;


# static fields
.field private static final fNullValue:Ljava/lang/Object;


# instance fields
.field private fEntityState:Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;

.field private fExtraChecking:Z

.field private fFacetChecking:Z

.field private final fIdRefTable:Ljava/util/Hashtable;

.field private final fIdTable:Ljava/util/Hashtable;

.field private fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field private fNamespaces:Z

.field private fNormalize:Z

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNullValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fExtraChecking:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fFacetChecking:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNormalize:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNamespaces:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fEntityState:Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdRefTable:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdTable:Ljava/util/Hashtable;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNullValue:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdRefTable:Ljava/util/Hashtable;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNullValue:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkIDRefID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdRefTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fEntityState:Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;->isEntityDeclared(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fEntityState:Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public needExtraChecking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fExtraChecking:Z

    return p0
.end method

.method public needFacetChecking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fFacetChecking:Z

    return p0
.end method

.method public needToNormalize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNormalize:Z

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fExtraChecking:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fFacetChecking:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNamespaces:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdRefTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fEntityState:Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method public resetIDTables()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fIdRefTable:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public setEntityState(Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fEntityState:Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;

    return-void
.end method

.method public setExtraChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fExtraChecking:Z

    return-void
.end method

.method public setFacetChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fFacetChecking:Z

    return-void
.end method

.method public setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    return-void
.end method

.method public setNormalizationRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNormalize:Z

    return-void
.end method

.method public setSymbolTable(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method public setUsingNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNamespaces:Z

    return-void
.end method

.method public useNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->fNamespaces:Z

    return p0
.end method
