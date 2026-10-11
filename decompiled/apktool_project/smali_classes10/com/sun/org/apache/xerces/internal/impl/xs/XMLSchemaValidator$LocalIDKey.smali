.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalIDKey"
.end annotation


# instance fields
.field public fDepth:I

.field public fId:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    .line 4
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    if-ne v0, v2, :cond_0

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    add-int/2addr v0, p0

    return v0
.end method
