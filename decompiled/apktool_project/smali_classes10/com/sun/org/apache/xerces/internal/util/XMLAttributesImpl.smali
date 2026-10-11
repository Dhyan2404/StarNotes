.class public Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;
.implements Lcom/sun/xml/internal/stream/XMLBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;
    }
.end annotation


# static fields
.field protected static final SIZE_LIMIT:I = 0x14

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

.field protected fAttributeTableViewChainState:[I

.field protected fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

.field protected fIsTableViewConsistent:Z

.field protected fLargeCount:I

.field protected fLength:I

.field protected fNamespaces:Z

.field protected fTableViewBuckets:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x65

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fNamespaces:Z

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    .line 6
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fTableViewBuckets:I

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 8
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getReportableType(Ljava/lang/String;)Ljava/lang/String;
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


# virtual methods
.method public addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;)I

    move-result p0

    return p0
.end method

.method public addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;)I
    .locals 7

    .line 2
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    .line 3
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_e

    .line 4
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    array-length v3, v1

    if-ne v0, v3, :cond_e

    .line 6
    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    new-array v4, v3, [Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    .line 7
    array-length v5, v1

    invoke-static {v1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    array-length v1, v1

    :goto_1
    if-ge v1, v3, :cond_1

    .line 9
    new-instance v5, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    invoke-direct {v5}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    goto/16 :goto_7

    .line 11
    :cond_2
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 12
    :cond_3
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-ne v0, v3, :cond_5

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->prepareAndPopulateTableView()V

    .line 14
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 15
    :cond_5
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v0

    .line 16
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v3, v4, :cond_8

    .line 17
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v4, v3, 0x1

    .line 18
    iput v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    array-length v5, v4

    if-ne v3, v5, :cond_7

    .line 19
    array-length v5, v4

    shl-int/lit8 v1, v5, 0x1

    new-array v5, v1, [Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    .line 20
    array-length v6, v4

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    :goto_2
    if-ge v4, v1, :cond_6

    .line 22
    new-instance v6, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 23
    :cond_6
    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    .line 24
    :cond_7
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLargeCount:I

    aput v4, v1, v0

    .line 25
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v3

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->next:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    .line 26
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aput-object v1, v4, v0

    :goto_3
    move v0, v3

    goto :goto_7

    .line 27
    :cond_8
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v3, v3, v0

    :goto_4
    if-eqz v3, :cond_a

    .line 28
    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v4, v5, :cond_9

    goto :goto_5

    .line 29
    :cond_9
    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->next:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    goto :goto_4

    :cond_a
    :goto_5
    if-nez v3, :cond_d

    .line 30
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v4, v3, 0x1

    .line 31
    iput v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    array-length v5, v4

    if-ne v3, v5, :cond_c

    .line 32
    array-length v5, v4

    shl-int/lit8 v1, v5, 0x1

    new-array v5, v1, [Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    .line 33
    array-length v6, v4

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    :goto_6
    if-ge v4, v1, :cond_b

    .line 35
    new-instance v6, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 36
    :cond_b
    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    .line 37
    :cond_c
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v5, v4, v0

    iput-object v5, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->next:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    .line 38
    aput-object v1, v4, v0

    goto :goto_3

    .line 39
    :cond_d
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v0

    .line 40
    :cond_e
    :goto_7
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, v0

    .line 41
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    .line 42
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->xmlValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    .line 45
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 46
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 47
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->augs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    if-eqz p0, :cond_f

    .line 48
    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    :cond_f
    return v0
.end method

.method public addAttributeNS(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    array-length v3, v2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    const/16 v3, 0x14

    if-ge v1, v3, :cond_0

    array-length v1, v2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    goto :goto_0

    :cond_0
    array-length v1, v2

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    :goto_0
    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    array-length v2, v2

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, v0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->specified:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->augs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    return-void
.end method

.method public checkDuplicatesNS()Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 9

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gt v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    :goto_0
    iget v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v4, v4, v1

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v7, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    if-ne v6, v7, :cond_1

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->prepareTableView()V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v5, v4, v3

    iget v6, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v5, v6, :cond_3

    aput v6, v4, v3

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->next:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aput-object v1, v4, v3

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v4, v4, v3

    :goto_2
    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v7, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v8, v7, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    if-ne v6, v8, :cond_4

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, v7, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_4

    return-object v7

    :cond_4
    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->next:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v5, v4, v3

    iput-object v5, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->next:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aput-object v1, v4, v3

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    return-object v2
.end method

.method public cleanTableView()V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLargeCount:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fTableViewBuckets:I

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLargeCount:I

    :cond_1
    return-void
.end method

.method public getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 1

    if-ltz p1, :cond_1

    .line 5
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->augs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAugmentations(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->augs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->augs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 3
    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 6
    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getIndexFast(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 3
    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    .line 6
    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    if-ne v2, p2, :cond_0

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    return p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 2
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

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

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

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

.method public getQualifiedName(I)Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSchemaId(I)Z
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->schemaId:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSchemaId(Ljava/lang/String;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->schemaId:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSchemaId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fNamespaces:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->schemaId:Z

    :cond_1
    return v1
.end method

.method public getTableViewBucket(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr p1, p0

    return p1
.end method

.method public getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const v0, 0x7fffffff

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    and-int/2addr p1, v0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr p1, p0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    and-int/2addr p1, v0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr p1, p0

    return p1
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fNamespaces:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->xmlValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->xmlValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isSpecified(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->specified:Z

    return p0
.end method

.method public prepareAndPopulateTableView()V
    .locals 6

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->prepareTableView()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v4, v3, v2

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v4, v5, :cond_0

    aput v5, v3, v2

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->next:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aput-object v1, v3, v2

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v4, v3, v2

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->next:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aput-object v1, v3, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareTableView()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v1, v0, [Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->cleanTableView()V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refresh(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public removeAllAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object v2, v1, p1

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v0, v0, -0x1

    aput-object v2, p1, v0

    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public setAugmentations(ILcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->augs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-void
.end method

.method public setName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-void
.end method

.method public setNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fNamespaces:Z

    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p2, p2, p1

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-void
.end method

.method public setSchemaId(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->schemaId:Z

    return-void
.end method

.method public setSpecified(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->specified:Z

    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setValue(ILjava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    return-void
.end method

.method public setValue(ILjava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    aget-object p0, p0, p1

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->xmlValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    return-void
.end method
