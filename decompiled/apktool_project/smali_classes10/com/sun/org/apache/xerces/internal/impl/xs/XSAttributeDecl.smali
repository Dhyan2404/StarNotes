.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;


# static fields
.field public static final SCOPE_ABSENT:S = 0x0s

.field public static final SCOPE_GLOBAL:S = 0x1s

.field public static final SCOPE_LOCAL:S = 0x2s


# instance fields
.field fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

.field fConstraintType:S

.field fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

.field fEnclosingCT:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

.field fName:Ljava/lang/String;

.field fScope:S

.field fTargetNamespace:Ljava/lang/String;

.field fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fConstraintType:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fScope:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fEnclosingCT:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    return-void
.end method


# virtual methods
.method public getActualVC()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public getActualVCType()S
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x2d

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    :goto_0
    return p0
.end method

.method public getAnnotation()Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    return-object p0
.end method

.method public getConstraintType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fConstraintType:S

    return p0
.end method

.method public getConstraintValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEnclosingCTDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSComplexTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fEnclosingCT:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    return-object p0
.end method

.method public getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScope()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fScope:S

    return p0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    return-object p0
.end method

.method public getValInfo()Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    return-object p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fConstraintType:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fScope:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-short p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fConstraintType:S

    iput-short p5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fScope:S

    iput-object p6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iput-object p7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fEnclosingCT:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object p8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    return-void
.end method
