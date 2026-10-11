.class public Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;
.source "SourceFile"


# instance fields
.field protected fKey:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;->fKey:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;

    const/4 p1, 0x2

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->type:S

    return-void
.end method


# virtual methods
.method public getKey()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;->fKey:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;

    return-object p0
.end method

.method public getRefKey()Lcom/sun/org/apache/xerces/internal/xs/XSIDCDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/KeyRef;->fKey:Lcom/sun/org/apache/xerces/internal/impl/xs/identity/UniqueOrKey;

    return-object p0
.end method
