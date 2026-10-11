.class public Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSAttributeGroupDefinition;


# static fields
.field public static final h:I = 0x5


# instance fields
.field public e:I

.field public f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

.field public fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

.field protected fAttrUses:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

.field public fIDAttrName:Ljava/lang/String;

.field public fName:Ljava/lang/String;

.field public fTargetNamespace:Ljava/lang/String;

.field public g:Lorg/apache/xerces/xs/XSNamespaceItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->g:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public static final a([Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;I)[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 2

    new-array v0, p1, [Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addAttributeUse(Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;
    .locals 4

    iget-short v0, p1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v3, v2

    if-ne v0, v3, :cond_2

    mul-int/2addr v0, v1

    invoke-static {v2, v0}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->a([Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;I)[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    aput-object p1, v0, v1

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lorg/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->g:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

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

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeUse;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v2, v1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v3, v2, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    if-ne v3, p1, :cond_1

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    if-ne v2, p2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeUse;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v2, v1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v3, v2, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    if-ne v3, p1, :cond_1

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    if-ne v2, p2, :cond_1

    iget-short v2, v1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeUses()Lorg/apache/xerces/xs/XSObjectList;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    if-lez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v2, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    invoke-direct {v0, v1, v2}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object p0
.end method

.method public getAttributeWildcard()Lorg/apache/xerces/xs/XSWildcard;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->g:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public removeProhibitedAttrs()V
    .locals 6

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-array v0, v0, [Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    if-lt v1, v3, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    return-void

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v3, v3, v1

    iget-short v4, v3, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    aput-object v3, v0, v2

    move v2, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public replaceAttributeUse(Lorg/apache/xerces/xs/XSAttributeUse;Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    aput-object p2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    if-lt v2, v3, :cond_0

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public validRestrictionOf(Ljava/lang/String;Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_5

    :goto_1
    iget v1, p2, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->e:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v0, :cond_2

    iget-object v1, p2, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v1, :cond_0

    const-string p0, "derivation-ok-restriction.4.1"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->isSubsetOf(Lorg/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "derivation-ok-restriction.4.2"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v1, p2, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->weakerProcessContents(Lorg/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p2, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "derivation-ok-restriction.4.3"

    filled-new-array {p1, p0, p2, v0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    iget-object v1, p2, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-short v2, v1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v2, v3, :cond_4

    iget-object v2, v1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v4, v2, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeUse;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object p0, v1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    const-string p2, "derivation-ok-restriction.3"

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->f:[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v1

    iget-object v4, v2, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v5, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    iget-object v6, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeUse;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v9

    if-nez v9, :cond_7

    new-array p0, v7, [Ljava/lang/Object;

    aput-object p1, p0, v0

    iget-object p1, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    aput-object p1, p0, v3

    iget-short p1, v2, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-nez p1, :cond_6

    const-string p1, "optional"

    goto :goto_2

    :cond_6
    const-string p1, "prohibited"

    :goto_2
    aput-object p1, p0, v8

    const-string p1, "derivation-ok-restriction.2.1.1"

    aput-object p1, p0, v6

    return-object p0

    :cond_7
    iget-short v3, v2, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v3, v8, :cond_8

    goto/16 :goto_7

    :cond_8
    iget-object v3, v5, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v6, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iget-object v7, v3, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v7}, Lorg/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result v9

    invoke-static {v6, v7, v9}, Lorg/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object p0, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    iget-object p2, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {p2}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v3, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "derivation-ok-restriction.2.1.2"

    filled-new-array {p1, p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    iget-short v6, v5, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v6, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v6

    :goto_3
    iget-short v7, v2, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v7, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v7

    :goto_4
    if-ne v6, v8, :cond_12

    if-eq v7, v8, :cond_c

    iget-object p0, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    const-string p2, "derivation-ok-restriction.2.1.3.a"

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    iget-object v5, v5, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    iget-object v5, v3, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    :goto_5
    iget-object v2, v2, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v2, :cond_e

    goto :goto_6

    :cond_e
    iget-object v2, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    :goto_6
    iget-object v3, v5, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v6, v2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object p0, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "derivation-ok-restriction.2.1.3.b"

    filled-new-array {p1, p0, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object v2, p2, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v2, :cond_10

    iget-object p0, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    const-string p2, "derivation-ok-restriction.2.2.a"

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object v5, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    new-array p0, v7, [Ljava/lang/Object;

    aput-object p1, p0, v0

    iget-object p1, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    aput-object p1, p0, v3

    iget-object p1, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    if-nez p1, :cond_11

    const-string p1, ""

    :cond_11
    aput-object p1, p0, v8

    const-string p1, "derivation-ok-restriction.2.2.b"

    aput-object p1, p0, v6

    return-object p0

    :cond_12
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
