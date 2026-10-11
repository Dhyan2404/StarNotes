.class public Lorg/apache/xerces/util/XMLAttributesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/XMLAttributesImpl$a;
    }
.end annotation


# static fields
.field protected static final MAX_HASH_COLLISIONS:I = 0x28

.field protected static final MULTIPLIERS_MASK:I = 0x1f

.field protected static final MULTIPLIERS_SIZE:I = 0x20

.field protected static final SIZE_LIMIT:I = 0x14

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

.field protected fAttributeTableViewChainState:[I

.field protected fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

.field protected fHashMultipliers:[I

.field protected fIsTableViewConsistent:Z

.field protected fLargeCount:I

.field protected fLength:I

.field protected fNamespaces:Z

.field protected fTableViewBuckets:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    iput v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iput-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iput p1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLAttributesImpl$a;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/apache/xerces/xni/QName;
    .locals 15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    invoke-virtual {p0}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    iget v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v2, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iget-object v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iget-object v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v5, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    move v6, v0

    :goto_0
    const/4 v7, 0x0

    if-lt v6, v1, :cond_0

    return-object v7

    :cond_0
    aget-object v8, v2, v6

    iget-object v9, v8, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v10, v9, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aget v10, v4, v9

    if-eq v10, v5, :cond_1

    aput v5, v4, v9

    iput-object v7, v8, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aput-object v8, v3, v9

    goto :goto_2

    :cond_1
    aget-object v7, v3, v9

    move v10, v0

    :goto_1
    if-nez v7, :cond_3

    const/16 v7, 0x28

    if-lt v10, v7, :cond_2

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->j(I)V

    iget v5, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    goto :goto_2

    :cond_2
    aget-object v7, v3, v9

    iput-object v7, v8, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aput-object v8, v3, v9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v11, v7, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v12, v11, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v13, v8, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v14, v13, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v12, v14, :cond_4

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v12, v13, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v11, v12, :cond_4

    return-object v13

    :cond_4
    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_e

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v3, v1

    if-ne v0, v3, :cond_e

    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    new-array v4, v3, [Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v5, v1

    invoke-static {v1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v1, v1

    :goto_1
    if-lt v1, v3, :cond_1

    iput-object v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    goto/16 :goto_9

    :cond_1
    new-instance v5, Lorg/apache/xerces/util/XMLAttributesImpl$a;

    invoke-direct {v5}, Lorg/apache/xerces/util/XMLAttributesImpl$a;-><init>()V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_e

    :cond_3
    iget-boolean v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-eq v0, v3, :cond_4

    if-le v0, v3, :cond_5

    iget v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    if-le v0, v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView()V

    iput-boolean v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    :cond_5
    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v3, v3, v0

    iget v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v3, v4, :cond_8

    iget v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v5, v4

    if-ne v3, v5, :cond_7

    array-length v5, v4

    shl-int/lit8 v1, v5, 0x1

    new-array v5, v1, [Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v6, v4

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v4, v4

    :goto_2
    if-lt v4, v1, :cond_6

    iput-object v5, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    goto :goto_3

    :cond_6
    new-instance v6, Lorg/apache/xerces/util/XMLAttributesImpl$a;

    invoke-direct {v6}, Lorg/apache/xerces/util/XMLAttributesImpl$a;-><init>()V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v4, v1, v0

    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v1, v1, v3

    const/4 v4, 0x0

    iput-object v4, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iget-object v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aput-object v1, v4, v0

    :goto_4
    move v0, v3

    goto :goto_9

    :cond_8
    iget-object v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v3, v3, v0

    move v4, v2

    :goto_5
    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    iget-object v5, v3, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v6, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v5, v6, :cond_f

    :goto_6
    if-nez v3, :cond_d

    iget v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v5, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v6, v5

    if-ne v3, v6, :cond_b

    array-length v6, v5

    shl-int/lit8 v1, v6, 0x1

    new-array v6, v1, [Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v7, v5

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v5, v5

    :goto_7
    if-lt v5, v1, :cond_a

    iput-object v6, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    goto :goto_8

    :cond_a
    new-instance v7, Lorg/apache/xerces/util/XMLAttributesImpl$a;

    invoke-direct {v7}, Lorg/apache/xerces/util/XMLAttributesImpl$a;-><init>()V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    const/16 v1, 0x28

    if-lt v4, v1, :cond_c

    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->i(I)V

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v1, v1, v3

    iget-object v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v5, v4, v0

    iput-object v5, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aput-object v1, v4, v0

    goto :goto_4

    :cond_d
    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v0

    :cond_e
    :goto_9
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, v0

    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iput-object p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->d:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->e:Z

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p0}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    return v0

    :cond_f
    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method public addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v2, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v3, v2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    const/16 v3, 0x14

    if-ge v1, v3, :cond_0

    array-length v1, v2

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    array-length v1, v2

    shl-int/lit8 v1, v1, 0x1

    :goto_0
    new-array v1, v1, [Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    array-length v2, v2

    :goto_1
    array-length v3, v1

    if-lt v2, v3, :cond_1

    iput-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    goto :goto_2

    :cond_1
    new-instance v3, Lorg/apache/xerces/util/XMLAttributesImpl$a;

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLAttributesImpl$a;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, v0

    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iput-object p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->d:Ljava/lang/String;

    iput-boolean v4, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->e:Z

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->f:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {p0}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    const-string p0, "NMTOKEN"

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    :cond_0
    const/4 v2, 0x1

    shl-int/2addr v1, v2

    add-int/2addr v1, v2

    if-gez v1, :cond_1

    const v1, 0x7fffffff

    goto :goto_0

    :cond_1
    if-gt v0, v1, :cond_0

    :goto_0
    iput v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iput v2, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    return-void
.end method

.method public checkDuplicatesNS()Lorg/apache/xerces/xni/QName;
    .locals 8

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    const/4 p0, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lt p0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v2, v1, p0

    add-int/lit8 v3, p0, 0x1

    move p0, v3

    :goto_1
    if-lt p0, v0, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    aget-object v4, v1, p0

    iget-object v5, v2, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v6, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v7, v4, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v6, v7, :cond_2

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xerces/util/XMLAttributesImpl;->a()Lorg/apache/xerces/xni/QName;

    move-result-object p0

    return-object p0
.end method

.method public cleanTableView()V
    .locals 4

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->f(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->f(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2}, Lorg/apache/xerces/util/XMLAttributesImpl;->f(Ljava/lang/String;)I

    move-result p2

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    const/16 v0, 0x20

    aget p0, p0, v0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method public final f(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    and-int/lit8 v3, v1, 0x1f

    aget v3, p0, v3

    mul-int/2addr v2, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final g(I)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v1, v1, v0

    iget-object v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v4, v3, v2

    iget v5, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v4, v5, :cond_1

    aput v5, v3, v2

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iget-object v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aput-object v1, v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v4, v3, v2

    iput-object v4, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aput-object v1, v3, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->f:Lorg/apache/xerces/xni/Augmentations;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAugmentations(Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->f:Lorg/apache/xerces/xni/Augmentations;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->f:Lorg/apache/xerces/xni/Augmentations;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 2
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v1, v1, v0

    iget-object v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 2
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v2, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v2, p2, :cond_1

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName(ILorg/apache/xerces/xni/QName;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p2, p0}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTableViewBucket(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->d(Ljava/lang/String;)I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr p1, p0

    return p1
.end method

.method public getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 2
    const v0, 0x7fffffff

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->d(Ljava/lang/String;)I

    move-result p1

    :goto_0
    and-int/2addr p1, v0

    iget p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr p1, p0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/util/XMLAttributesImpl;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    iget-boolean v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p1, p2, p1

    iget-object p1, p1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->c:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final h(I)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v1, v1, v0

    iget-object v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iget-object v3, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v4, v3, v2

    iget v5, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v4, v5, :cond_1

    aput v5, v3, v2

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iget-object v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aput-object v1, v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v4, v3, v2

    iput-object v4, v1, Lorg/apache/xerces/util/XMLAttributesImpl$a;->g:Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aput-object v1, v3, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final i(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    if-nez v0, :cond_0

    const/16 v0, 0x21

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/f7l;->a([I)V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->g(I)V

    return-void
.end method

.method public isSpecified(I)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->e:Z

    return p0
.end method

.method public final j(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    if-nez v0, :cond_0

    const/16 v0, 0x21

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/f7l;->a([I)V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->h(I)V

    return-void
.end method

.method public prepareAndPopulateTableView()V
    .locals 1

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->g(I)V

    return-void
.end method

.method public prepareTableView()V
    .locals 2

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/util/XMLAttributesImpl;->c()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v1, v0, [Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iput-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/util/XMLAttributesImpl;->cleanTableView()V

    :goto_0
    return-void
.end method

.method public removeAllAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object v2, v1, p1

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    iget v0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    aput-object v2, p1, v0

    :cond_0
    iget p1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public setAugmentations(ILorg/apache/xerces/xni/Augmentations;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iput-object p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->f:Lorg/apache/xerces/xni/Augmentations;

    return-void
.end method

.method public setName(ILorg/apache/xerces/xni/QName;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    return-void
.end method

.method public setNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p2, p2, p1

    iget-object p2, p2, Lorg/apache/xerces/util/XMLAttributesImpl$a;->c:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iput-object p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->d:Ljava/lang/String;

    return-void
.end method

.method public setSpecified(IZ)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iput-boolean p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->e:Z

    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iput-object p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->b:Ljava/lang/String;

    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->a:Lorg/apache/xerces/xni/QName;

    iput-object p2, p0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$a;

    aget-object p0, p0, p1

    iput-object p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/util/XMLAttributesImpl$a;->d:Ljava/lang/String;

    return-void
.end method
