.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueStoreCache"
.end annotation


# instance fields
.field protected final fGlobalIDConstraintMap:Ljava/util/Hashtable;

.field protected final fGlobalMapStack:Ljava/util/Stack;

.field protected final fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

.field final fLocalId:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

.field protected final fValueStores:Ljava/util/Vector;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/Vector;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocument()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endElement()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eq v4, v3, :cond_2

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->append(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getGlobalValueStoreFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-object p0
.end method

.method public getValueStoreFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput p2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-object p0
.end method

.method public initValueStoresFor(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;)V
    .locals 6

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fIDConstraints:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fIDCPos:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_6

    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    aget-object v1, p2, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->access$000(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$UniqueValueStore;

    if-nez v3, :cond_1

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$UniqueValueStore;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {v3, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$UniqueValueStore;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->clear()V

    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->access$100(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    goto :goto_4

    :cond_2
    aget-object v1, p2, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->access$000(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;

    if-nez v3, :cond_3

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyValueStore;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->clear()V

    :goto_2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->access$100(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    goto :goto_4

    :cond_4
    aget-object v1, p2, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->access$000(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyValueStore;

    if-nez v3, :cond_5

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyValueStore;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {v3, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyValueStore;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->clear()V

    :goto_3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->access$100(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public startDocument()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public startElement()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

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

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public transplant(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput p2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/Hashtable;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->append(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
