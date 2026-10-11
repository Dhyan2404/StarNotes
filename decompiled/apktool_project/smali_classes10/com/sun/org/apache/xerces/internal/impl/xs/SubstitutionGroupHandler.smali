.class public Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    }
.end annotation


# static fields
.field private static final EMPTY_GROUP:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

.field private static final EMPTY_VECTOR:[Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;


# instance fields
.field fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

.field fSubGroups:Ljava/util/Hashtable;

.field fSubGroupsB:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->EMPTY_GROUP:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->EMPTY_VECTOR:[Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    return-void
.end method

.method private getDBMethods(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;)Z
    .locals 5

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :cond_0
    :goto_0
    if-eq p1, p2, :cond_3

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eq p1, v2, :cond_3

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-short v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    or-int/2addr v0, v3

    goto :goto_1

    :cond_1
    or-int/lit8 v0, v0, 0x2

    :goto_1
    int-to-short v0, v0

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v2

    :cond_2
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    if-ne v2, v4, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-short v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_0

    :cond_3
    if-ne p1, p2, :cond_5

    and-int p1, v0, v1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iput-short v0, p3, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    iput-short v1, p3, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    const/4 p0, 0x1

    :cond_5
    :goto_2
    return p0
.end method

.method private getSubGroupB(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;)[Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;
    .locals 11

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->EMPTY_VECTOR:[Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_0
    instance-of v1, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    if-eqz v1, :cond_1

    check-cast v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    return-object v0

    :cond_1
    check-cast v0, Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v5, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-direct {p0, v4, v5, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->getDBMethods(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    iget-short v4, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    iget-short v5, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    new-instance v6, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    invoke-direct {v6, v3, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;SS)V

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, v3, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->getSubGroupB(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;)[Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    move-result-object v3

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_4

    aget-object v7, v3, v6

    iget-short v8, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    or-int/2addr v8, v4

    int-to-short v8, v8

    iget-short v9, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    or-int/2addr v9, v5

    int-to-short v9, v9

    and-int v10, v8, v9

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    new-instance v10, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    iget-object v7, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->sub:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-direct {v10, v7, v8, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;SS)V

    invoke-virtual {v1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p2

    new-array p2, p2, [Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method


# virtual methods
.method public addSubstitutionGroup([Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)V
    .locals 5

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v1, p1, v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fSubGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMatchingElemDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 3

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    return-object p2

    :cond_0
    iget-short v0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fScope:S

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    iget-short v0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    iget-short v0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->substitutionGroupOK(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;S)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p1

    :cond_5
    return-object v2
.end method

.method public getSubstitutionGroup(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 9

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    return-object v0

    :cond_0
    iget-short v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->EMPTY_GROUP:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->getSubGroupB(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;)[Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_3

    iget-short v6, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    aget-object v7, v0, v4

    iget-short v8, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    and-int/2addr v6, v8

    if-nez v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    iget-object v7, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->sub:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aput-object v7, v2, v5

    move v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v5, v1, :cond_4

    new-array v0, v5, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-static {v2, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public inSubstitutionGroup(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)Z
    .locals 1

    iget-short v0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->substitutionGroupOK(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;S)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroupsB:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->fSubGroups:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public substitutionGroupOK(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;S)Z
    .locals 5

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    and-int/lit8 v0, p3, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fSubGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    :goto_0
    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fSubGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move v0, v1

    :cond_4
    :goto_1
    iget-object v2, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eq p1, v2, :cond_7

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eq p1, v3, :cond_7

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    const/16 v4, 0xf

    if-ne v2, v4, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-short v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    or-int/2addr v0, v2

    goto :goto_2

    :cond_5
    or-int/lit8 v0, v0, 0x2

    :goto_2
    int-to-short v0, v0

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_6

    move-object p1, v3

    :cond_6
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    if-ne v2, v4, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-short v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr p3, v2

    int-to-short p3, p3

    goto :goto_1

    :cond_7
    if-eq p1, v2, :cond_8

    return v1

    :cond_8
    and-int p1, v0, p3

    if-eqz p1, :cond_9

    return v1

    :cond_9
    return p0
.end method
