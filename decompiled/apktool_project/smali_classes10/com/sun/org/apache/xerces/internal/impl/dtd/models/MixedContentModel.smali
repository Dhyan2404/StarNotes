.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;


# instance fields
.field private fChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fChildrenType:[I

.field private fCount:I

.field private fOrdered:Z


# direct methods
.method public constructor <init>([Lcom/sun/org/apache/xerces/internal/xni/QName;[IIIZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fCount:I

    new-array v0, p4, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-array p4, p4, [I

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    const/4 p4, 0x0

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fCount:I

    if-ge p4, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    add-int v2, p3, p4

    aget-object v3, p1, v2

    invoke-direct {v1, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    aput-object v1, v0, p4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    aget v1, p2, v2

    aput v1, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fOrdered:Z

    return-void
.end method


# virtual methods
.method public validate([Lcom/sun/org/apache/xerces/internal/xni/QName;II)I
    .locals 10

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fOrdered:Z

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    move v0, v4

    :goto_0
    if-ge v4, p3, :cond_d

    add-int v5, p2, v4

    aget-object v5, p1, v5

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    aget v6, v6, v0

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq v6, v5, :cond_4

    return v4

    :cond_1
    if-ne v6, v3, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_4

    aget-object v6, p1, v4

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eq v5, v6, :cond_4

    return v4

    :cond_2
    if-ne v6, v2, :cond_3

    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_4

    return v4

    :cond_3
    if-ne v6, v1, :cond_4

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    aget-object v6, p1, v4

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v0, v4

    :goto_2
    if-ge v0, p3, :cond_d

    add-int v5, p2, v0

    aget-object v5, p1, v5

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    move v6, v4

    :goto_3
    iget v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fCount:I

    if-ge v6, v7, :cond_b

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildrenType:[I

    aget v8, v8, v6

    if-nez v8, :cond_7

    iget-object v8, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v8, v9, :cond_a

    goto :goto_4

    :cond_7
    if-ne v8, v3, :cond_8

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v8, :cond_b

    aget-object v9, p1, v0

    iget-object v9, v9, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_a

    goto :goto_4

    :cond_8
    if-ne v8, v2, :cond_9

    aget-object v8, p1, v0

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez v8, :cond_a

    goto :goto_4

    :cond_9
    if-ne v8, v1, :cond_a

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;->fChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    aget-object v9, p1, v0

    iget-object v9, v9, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eq v8, v9, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    if-ne v6, v7, :cond_c

    return v0

    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    const/4 p0, -0x1

    return p0
.end method
