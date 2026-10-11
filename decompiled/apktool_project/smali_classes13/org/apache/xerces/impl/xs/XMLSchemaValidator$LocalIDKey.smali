.class public final Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalIDKey"
.end annotation


# instance fields
.field public fDepth:I

.field public fId:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    iput p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v0, p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    if-ne v0, v2, :cond_0

    iget p1, p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    iget p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    add-int/2addr v0, p0

    return v0
.end method
