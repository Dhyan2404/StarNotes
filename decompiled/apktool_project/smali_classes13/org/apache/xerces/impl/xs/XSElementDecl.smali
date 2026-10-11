.class public Lorg/apache/xerces/impl/xs/XSElementDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSElementDeclaration;


# static fields
.field public static final SCOPE_ABSENT:S = 0x0s

.field public static final SCOPE_GLOBAL:S = 0x1s

.field public static final SCOPE_LOCAL:S = 0x2s

.field public static final k:I = 0x2

.field public static final l:S = 0x3s

.field public static final m:S = 0x4s

.field public static final n:S = 0x8s


# instance fields
.field public e:S

.field public f:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

.field public fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

.field public fBlock:S

.field public fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

.field public fFinal:S

.field public fName:Ljava/lang/String;

.field public fScope:S

.field public fSubGroup:Lorg/apache/xerces/impl/xs/XSElementDecl;

.field public fTargetNamespace:Ljava/lang/String;

.field public fType:Lorg/apache/xerces/xs/XSTypeDefinition;

.field public fUnresolvedTypeName:Lorg/apache/xerces/xni/QName;

.field public g:I

.field public h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

.field public i:Lorg/apache/xerces/xs/XSNamespaceItem;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fUnresolvedTypeName:Lorg/apache/xerces/xni/QName;

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->f:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->i:Lorg/apache/xerces/xs/XSNamespaceItem;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->j:Ljava/lang/String;

    return-void
.end method

.method public static final a([Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 2

    new-array v0, p1, [Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addIDConstraint(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->a([Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method public b(Lorg/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->i:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAbstract()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getActualVC()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public getActualVCType()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x2d

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    :goto_0
    return p0
.end method

.method public getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getConstraintType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    and-int/lit8 p0, p0, 0x3

    int-to-short p0, p0

    return p0
.end method

.method public getConstraintValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDisallowedSubstitutions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    return p0
.end method

.method public getEnclosingCTDefinition()Lorg/apache/xerces/xs/XSComplexTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->f:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object p0
.end method

.method public getIDConstraints()[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->a([Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public getIdentityConstraints()Lorg/apache/xerces/xs/XSNamedMap;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    return-object v0
.end method

.method public getItemValueTypes()Lorg/apache/xerces/xs/ShortList;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lorg/apache/xerces/xs/ShortList;

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->i:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-object p0
.end method

.method public getNillable()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getScope()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    return p0
.end method

.method public getSubstitutionGroupAffiliation()Lorg/apache/xerces/xs/XSElementDeclaration;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lorg/apache/xerces/impl/xs/XSElementDecl;

    return-object p0
.end method

.method public getSubstitutionGroupExclusions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    return p0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getValueConstraintValue()Lorg/apache/xerces/xs/XSValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eqz p0, :cond_0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public isDisallowedSubstitution(S)Z
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSubstitutionGroupExclusion(S)Z
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fUnresolvedTypeName:Lorg/apache/xerces/xni/QName;

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lorg/apache/xerces/impl/xs/XSElementDecl;

    move v2, v0

    :goto_0
    iget v3, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    if-lt v2, v3, :cond_0

    iput v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    return-void

    :cond_0
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->h:[Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setConstraintType(S)V
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    and-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    int-to-short v0, v0

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    return-void
.end method

.method public setIsAbstract()V
    .locals 1

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    return-void
.end method

.method public setIsGlobal()V
    .locals 1

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    return-void
.end method

.method public setIsLocal(Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 1

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->f:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-void
.end method

.method public setIsNillable()V
    .locals 1

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->e:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->j:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSElementDecl;->j:Ljava/lang/String;

    return-object p0
.end method
