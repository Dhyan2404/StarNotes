.class public Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSAttributeUse;


# instance fields
.field public fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

.field public fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

.field public fConstraintType:S

.field public fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

.field public fUse:S


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    return-void
.end method


# virtual methods
.method public getActualVC()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public getActualVCType()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x2d

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    :goto_0
    return p0
.end method

.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getAttrDeclaration()Lorg/apache/xerces/xs/XSAttributeDeclaration;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    return-object p0
.end method

.method public getConstraintType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    return p0
.end method

.method public getConstraintValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getItemValueTypes()Lorg/apache/xerces/xs/ShortList;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lorg/apache/xerces/xs/ShortList;

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

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequired()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

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

.method public getValueConstraintValue()Lorg/apache/xerces/xs/XSValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    return-object p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    return-void
.end method
