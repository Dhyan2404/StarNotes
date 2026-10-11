.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyRefValueStore"
.end annotation


# instance fields
.field protected fKeyValueStore:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyValueStore;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 0

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocument()V

    return-void
.end method

.method public endDocumentFragment()V
    .locals 3

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;->getKey()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyRefOutOfScope"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->contains(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->toString(Ljava/util/Vector;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyNotFound"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
