.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyValueStore;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyValueStore"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyValueStore;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    return-void
.end method


# virtual methods
.method public checkDuplicateValues()V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->contains()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyValueStore;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DuplicateKey"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
