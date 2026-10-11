.class public Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueStoreCache"
.end annotation


# instance fields
.field public final a:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

.field public final synthetic b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field protected final fGlobalIDConstraintMap:Ljava/util/HashMap;

.field protected final fGlobalMapStack:Ljava/util/Stack;

.field protected final fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

.field protected final fValueStores:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    new-instance p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    invoke-direct {p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->a:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocument()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public endElement()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eq v3, v1, :cond_2

    invoke-virtual {v3, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->append(Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V

    goto :goto_0
.end method

.method public getGlobalValueStoreFor(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-object p0
.end method

.method public getValueStoreFor(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->a:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput p2, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    iput-object p1, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-object p0
.end method

.method public initValueStoresFor(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/identity/FieldActivator;)V
    .locals 6

    iget-object p2, p1, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget p1, p1, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    aget-object v1, p2, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;

    new-instance v2, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-static {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->o(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;

    if-nez v3, :cond_2

    new-instance v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v3, v4, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;-><init>(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->clear()V

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    aget-object v2, p2, v0

    goto :goto_4

    :cond_3
    aget-object v1, p2, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/identity/KeyRef;

    new-instance v2, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-static {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->o(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;

    if-nez v3, :cond_4

    new-instance v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;-><init>(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;Lorg/apache/xerces/impl/xs/identity/KeyRef;Lorg/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->clear()V

    :goto_2
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    aget-object v2, p2, v0

    goto :goto_4

    :cond_5
    aget-object v1, p2, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;

    new-instance v2, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-static {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->o(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;

    if-nez v3, :cond_6

    new-instance v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v3, v4, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;-><init>(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->clear()V

    :goto_3
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->b:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    aget-object v2, p2, v0

    :goto_4
    invoke-static {v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->p(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public startElement()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public transplant(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->a:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput p2, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    iput-object p1, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->append(Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
