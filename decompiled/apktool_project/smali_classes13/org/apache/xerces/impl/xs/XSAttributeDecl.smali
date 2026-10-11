.class public Lorg/apache/xerces/impl/xs/XSAttributeDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSAttributeDeclaration;


# static fields
.field public static final SCOPE_ABSENT:S = 0x0s

.field public static final SCOPE_GLOBAL:S = 0x1s

.field public static final SCOPE_LOCAL:S = 0x2s


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public fUnresolvedTypeName:Lorg/apache/xerces/xni/QName;

.field public g:Lorg/apache/xerces/impl/dv/XSSimpleType;

.field public h:S

.field public i:S

.field public j:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

.field public k:Lorg/apache/xerces/xs/XSObjectList;

.field public l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

.field public m:Lorg/apache/xerces/xs/XSNamespaceItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->fUnresolvedTypeName:Lorg/apache/xerces/xni/QName;

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->h:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->i:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->j:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->k:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->m:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->m:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public getActualVC()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public getActualVCType()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x2d

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    :goto_0
    return p0
.end method

.method public getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->k:Lorg/apache/xerces/xs/XSObjectList;

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

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->k:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getConstraintType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->h:S

    return p0
.end method

.method public getConstraintValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEnclosingCTDefinition()Lorg/apache/xerces/xs/XSComplexTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->j:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object p0
.end method

.method public getItemValueTypes()Lorg/apache/xerces/xs/ShortList;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lorg/apache/xerces/xs/ShortList;

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->m:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-object p0
.end method

.method public getScope()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->i:S

    return p0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    return-object p0
.end method

.method public getValInfo()Lorg/apache/xerces/impl/dv/ValidatedInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    return-object p0
.end method

.method public getValueConstraintValue()Lorg/apache/xerces/xs/XSValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    return-object p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->fUnresolvedTypeName:Lorg/apache/xerces/xni/QName;

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->h:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->i:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->k:Lorg/apache/xerces/xs/XSObjectList;

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/dv/XSSimpleType;SSLorg/apache/xerces/impl/dv/ValidatedInfo;Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;Lorg/apache/xerces/xs/XSObjectList;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-short p4, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->h:S

    iput-short p5, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->i:S

    iput-object p6, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object p7, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->j:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object p8, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->k:Lorg/apache/xerces/xs/XSObjectList;

    return-void
.end method
