.class public Lorg/apache/xerces/impl/validation/ValidationState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/dv/ValidationContext;


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lorg/apache/xerces/impl/validation/EntityState;

.field public f:Lorg/apache/xerces/xni/NamespaceContext;

.field public g:Lorg/apache/xerces/util/SymbolTable;

.field public h:Ljava/util/Locale;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/validation/ValidationState;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->a:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->b:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->c:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->e:Lorg/apache/xerces/impl/validation/EntityState;

    iput-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->f:Lorg/apache/xerces/xni/NamespaceContext;

    iput-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->g:Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->h:Ljava/util/Locale;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->j:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->i:Ljava/util/HashMap;

    sget-object v0, Lorg/apache/xerces/impl/validation/ValidationState;->k:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->j:Ljava/util/HashMap;

    sget-object v0, Lorg/apache/xerces/impl/validation/ValidationState;->k:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkIDRefID()Ljava/util/Iterator;
    .locals 5

    iget-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xerces/impl/validation/ValidationState;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->h:Ljava/util/Locale;

    return-object p0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->g:Lorg/apache/xerces/util/SymbolTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->f:Lorg/apache/xerces/xni/NamespaceContext;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->e:Lorg/apache/xerces/impl/validation/EntityState;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/validation/ValidationState;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/xerces/impl/validation/EntityState;->isEntityDeclared(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->e:Lorg/apache/xerces/impl/validation/EntityState;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/validation/ValidationState;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/xerces/impl/validation/EntityState;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public needExtraChecking()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->a:Z

    return p0
.end method

.method public needFacetChecking()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->b:Z

    return p0
.end method

.method public needToNormalize()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->c:Z

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->a:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->b:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->d:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->e:Lorg/apache/xerces/impl/validation/EntityState;

    iput-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->f:Lorg/apache/xerces/xni/NamespaceContext;

    iput-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->g:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public resetIDTables()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->j:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setEntityState(Lorg/apache/xerces/impl/validation/EntityState;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/validation/ValidationState;->e:Lorg/apache/xerces/impl/validation/EntityState;

    return-void
.end method

.method public setExtraChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/validation/ValidationState;->a:Z

    return-void
.end method

.method public setFacetChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/validation/ValidationState;->b:Z

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/validation/ValidationState;->h:Ljava/util/Locale;

    return-void
.end method

.method public setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/validation/ValidationState;->f:Lorg/apache/xerces/xni/NamespaceContext;

    return-void
.end method

.method public setNormalizationRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/validation/ValidationState;->c:Z

    return-void
.end method

.method public setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/validation/ValidationState;->g:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public setUsingNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/validation/ValidationState;->d:Z

    return-void
.end method

.method public useNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/validation/ValidationState;->d:Z

    return p0
.end method
