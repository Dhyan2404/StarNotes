.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;


# instance fields
.field public fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

.field public fConstraintType:S

.field public fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

.field public fUse:S


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    return-void
.end method


# virtual methods
.method public getActualVC()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public getActualVCType()S
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x2d

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    :goto_0
    return p0
.end method

.method public getAttrDeclaration()Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    return-object p0
.end method

.method public getConstraintType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    return p0
.end method

.method public getConstraintValue()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceItem()Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequired()Z
    .locals 1

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    return-void
.end method
