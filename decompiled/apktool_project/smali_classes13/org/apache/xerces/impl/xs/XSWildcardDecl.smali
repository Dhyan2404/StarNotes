.class public Lorg/apache/xerces/impl/xs/XSWildcardDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSWildcard;


# static fields
.field public static final ABSENT:Ljava/lang/String;


# instance fields
.field public e:Ljava/lang/String;

.field public fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

.field public fNamespaceList:[Ljava/lang/String;

.field public fProcessContents:S

.field public fType:S


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 5

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-short v1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object p0, p0, v2

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object p1, p1, v2

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v3, v3

    if-ne v0, v3, :cond_5

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v4, v3

    if-lt v0, v4, :cond_3

    return v1

    :cond_3
    aget-object v3, v3, v0

    iget-object v4, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public allowNamespace(Ljava/lang/String;)Z
    .locals 6

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    move v2, v3

    move v4, v2

    :goto_0
    if-ge v2, v0, :cond_3

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-ne p1, v5, :cond_2

    move v4, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    return v1

    :cond_4
    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    move v2, v3

    :goto_2
    if-lt v2, v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-ne p1, v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return v3
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p2

    if-ge p0, v1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p2, p0

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public c([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-lt v2, v4, :cond_0

    new-array p0, v3, [Ljava/lang/String;

    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_0
    aget-object v4, p1, v2

    invoke-virtual {p0, v4, p2}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v5, p1, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public d([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public e([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-lt v2, v4, :cond_0

    array-length p0, p2

    add-int/2addr p0, v3

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    invoke-static {p2, v1, p0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_0
    aget-object v4, p1, v2

    invoke-virtual {p0, v4, p2}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v5, p1, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

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

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getConstraintType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    return p0
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

.method public getNsConstraintList()Lorg/apache/xerces/xs/StringList;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xs/util/StringListImpl;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public getProcessContents()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    return p0
.end method

.method public getProcessContentsAsString()Ljava/lang/String;
    .locals 1

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "invalid value"

    return-object p0

    :cond_0
    const-string p0, "lax"

    return-object p0

    :cond_1
    const-string p0, "skip"

    return-object p0

    :cond_2
    const-string p0, "strict"

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public isSubsetOf(Lorg/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-short v1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v2

    :cond_1
    iget-short v3, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-ne v1, v4, :cond_2

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v6, v6, v0

    if-ne v5, v6, :cond_2

    return v2

    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->d([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-short v1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v1, v4, :cond_4

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object p1, p1, v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public performIntersectionWith(Lorg/apache/xerces/impl/xs/XSWildcardDecl;S)Lorg/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    iput-short p2, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->a(Lorg/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-short p1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short p1, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_3

    :cond_1
    iget-short p2, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x1

    if-eq p2, v2, :cond_c

    iget-short v3, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v3, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne p2, v2, :cond_3

    if-eq v3, v4, :cond_4

    :cond_3
    if-ne p2, v4, :cond_8

    if-ne v3, v2, :cond_8

    :cond_4
    if-ne p2, v2, :cond_5

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    move-object v6, p0

    move-object v7, p1

    goto :goto_0

    :cond_5
    iget-object p1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    move-object v7, p0

    move-object v6, p1

    :goto_0
    array-length v8, v7

    new-array v9, v8, [Ljava/lang/String;

    move p0, v5

    move p1, p0

    :goto_1
    if-lt p0, v8, :cond_6

    iput-short v4, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array p0, p1, [Ljava/lang/String;

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-static {v9, v5, p0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    aget-object p2, v7, p0

    aget-object v0, v6, v5

    if-eq p2, v0, :cond_7

    sget-object v0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq p2, v0, :cond_7

    add-int/lit8 v0, p1, 0x1

    aput-object p2, v9, p1

    move p1, v0

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    if-ne p2, v4, :cond_9

    if-ne v3, v4, :cond_9

    iput-short v4, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->c([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_3

    :cond_9
    if-ne p2, v2, :cond_e

    if-ne v3, v2, :cond_e

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object p2, p2, v5

    sget-object v2, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq p2, v2, :cond_a

    iget-object v3, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eq v3, v2, :cond_a

    return-object v0

    :cond_a
    if-ne p2, v2, :cond_b

    move-object p0, p1

    :cond_b
    iget-short p1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short p1, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_3

    :cond_c
    :goto_2
    if-ne p2, v2, :cond_d

    move-object p0, p1

    :cond_d
    iget-short p1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short p1, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    :cond_e
    :goto_3
    return-object v1
.end method

.method public performUnionWith(Lorg/apache/xerces/impl/xs/XSWildcardDecl;S)Lorg/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    iput-short p2, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->a(Lorg/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-short p1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short p1, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    iget-short p2, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x1

    if-eq p2, v2, :cond_c

    iget-short v3, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v3, v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    if-ne v3, v4, :cond_3

    iput-short v4, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->e([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne p2, v6, :cond_4

    if-ne v3, v6, :cond_4

    iput-short v6, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array p0, v6, [Ljava/lang/String;

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object p1, p0, v5

    aput-object p1, p0, v2

    goto :goto_2

    :cond_4
    if-ne p2, v6, :cond_5

    if-eq v3, v4, :cond_6

    :cond_5
    if-ne p2, v4, :cond_d

    if-ne v3, v6, :cond_d

    :cond_6
    if-ne p2, v6, :cond_7

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object p2, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    :goto_0
    sget-object v3, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    aget-object v7, p2, v5

    if-eq v7, v3, :cond_a

    invoke-virtual {p0, v7, p1}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v4, :cond_8

    goto :goto_1

    :cond_8
    if-eqz p0, :cond_9

    if-nez v4, :cond_9

    iput-short v6, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array p0, v6, [Ljava/lang/String;

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aput-object v3, p0, v5

    aput-object v3, p0, v2

    goto :goto_2

    :cond_9
    if-nez p0, :cond_b

    if-eqz v4, :cond_b

    return-object v0

    :cond_a
    if-eqz v4, :cond_b

    goto :goto_1

    :cond_b
    iput-short v6, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-object p2, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_2

    :cond_c
    :goto_1
    iput-short v2, v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    :cond_d
    :goto_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->e:Ljava/lang/String;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "WC["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "\""

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v1, v1, v4

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v2, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "##other"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v1, v1, v4

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const-string v1, "##any"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->e:Ljava/lang/String;

    :cond_8
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->e:Ljava/lang/String;

    return-object p0
.end method

.method public weakerProcessContents(Lorg/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 2

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    iget-short v0, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    iget-short p0, p1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
