.class public Lorg/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;
.super Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UniqueValueStore"
.end annotation


# instance fields
.field public final synthetic i:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;-><init>(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;->i:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    return-void
.end method


# virtual methods
.method public checkDuplicateValues()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->contains()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;->i:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DuplicateUnique"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
