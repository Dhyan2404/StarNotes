.class public Lnet/sf/saxon/trans/TypeAliasManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/type/ItemType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/TypeAliasManager;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/TypeAliasManager;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getItemType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/TypeAliasManager;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public processAllDeclarations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v0}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/style/XSLItemType;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/TypeAliasManager;->processDeclaration(Lnet/sf/saxon/style/ComponentDeclaration;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/trans/TypeAliasManager;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    :goto_1
    if-lez p1, :cond_5

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lnet/sf/saxon/trans/TypeAliasManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/TypeAliasManager;->processDeclaration(Lnet/sf/saxon/style/ComponentDeclaration;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/trans/TypeAliasManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Cannot resolve all type aliases, because of missing or circular definitions. Unresolved names: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/trans/TypeAliasManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SXTA0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/trans/TypeAliasManager;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public processDeclaration(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/XSLItemType;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLItemType;->tryToResolve()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLItemType;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/TypeAliasManager;->registerTypeAlias(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/ItemType;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/trans/TypeAliasManager;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLItemType;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public registerTypeAlias(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/ItemType;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/TypeAliasManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/trans/TypeAliasManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
