.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSAttributeGroupDefinition;


# static fields
.field private static final INITIAL_SIZE:I = 0x5


# instance fields
.field public fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

.field fAttrUseNum:I

.field protected fAttrUses:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

.field fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

.field public fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

.field public fIDAttrName:Ljava/lang/String;

.field public fName:Ljava/lang/String;

.field public fTargetNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public static final resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;
    .locals 2

    new-array v0, p1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addAttributeUse(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    mul-int/2addr v0, v3

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->resize([Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;I)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    aput-object p1, v0, v1

    iget-short v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v1, 0x0

    if-ne v0, v3, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getAnnotation()Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    return-object p0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v3, p1, :cond_0

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeUses()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    return-object p0
.end method

.method public getAttributeWildcard()Lcom/sun/org/apache/xerces/internal/xs/XSWildcard;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public removeProhibitedAttrs()V
    .locals 10

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    const/4 v5, 0x2

    if-ge v2, v4, :cond_2

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aget-object v6, v6, v2

    iget-short v7, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v7, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v4, v3

    aput-object v6, v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_7

    move v2, v1

    :goto_1
    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aget-object v4, v4, v1

    iget-short v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v4, v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    :goto_2
    if-gt v4, v3, :cond_5

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object v7, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    sub-int v9, v8, v3

    aget-object v9, v0, v9

    iget-object v9, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object v9, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    if-ne v7, v9, :cond_4

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    sub-int/2addr v8, v3

    aget-object v7, v0, v8

    iget-object v7, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object v7, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v6, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v2, 0x1

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aget-object v6, v6, v1

    aput-object v6, v0, v2

    move v2, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    :cond_7
    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    return-void
.end method

.method public validRestrictionOf(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v1

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v6, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v9

    if-nez v9, :cond_1

    new-array p0, v7, [Ljava/lang/Object;

    aput-object p1, p0, v0

    iget-object p1, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object p1, p0, v3

    iget-short p1, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    if-nez p1, :cond_0

    const-string p1, "optional"

    goto :goto_1

    :cond_0
    const-string p1, "prohibited"

    :goto_1
    aput-object p1, p0, v8

    const-string p1, "derivation-ok-restriction.2.1.1"

    aput-object p1, p0, v6

    return-object p0

    :cond_1
    iget-short v3, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v3, v8, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v3, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object v6, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iget-object v7, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v7}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getFinal()S

    move-result v9

    invoke-static {v6, v7, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;S)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object p0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object p2, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "derivation-ok-restriction.2.1.2"

    filled-new-array {p1, p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    iget-short v6, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v6

    :goto_2
    iget-short v7, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v7

    :goto_3
    if-ne v6, v8, :cond_c

    if-eq v7, v8, :cond_6

    iget-object p0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    const-string p2, "derivation-ok-restriction.2.1.3.a"

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    :goto_4
    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    iget-object v2, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    :goto_5
    iget-object v3, v5, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v6, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object p0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "derivation-ok-restriction.2.1.3.b"

    filled-new-array {p1, p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object v2, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-nez v2, :cond_a

    iget-object p0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    const-string p2, "derivation-ok-restriction.2.2.a"

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_a
    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    new-array p0, v7, [Ljava/lang/Object;

    aput-object p1, p0, v0

    iget-object p1, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object p1, p0, v3

    iget-object p1, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-nez p1, :cond_b

    const-string p1, ""

    :cond_b
    aput-object p1, p0, v8

    const-string p1, "derivation-ok-restriction.2.2.b"

    aput-object p1, p0, v6

    return-object p0

    :cond_c
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    :goto_7
    iget v1, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v0, v1, :cond_f

    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v2, v3, :cond_e

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;

    move-result-object v2

    if-nez v2, :cond_e

    iget-object p0, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    const-string p2, "derivation-ok-restriction.3"

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-eqz v0, :cond_12

    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-nez v1, :cond_10

    const-string p0, "derivation-ok-restriction.4.1"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->isSubsetOf(Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p0, "derivation-ok-restriction.4.2"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->weakerProcessContents(Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "derivation-ok-restriction.4.3"

    filled-new-array {p1, p0, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method
