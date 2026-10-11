.class public Lorg/apache/xerces/impl/dtd/models/MixedContentModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;


# instance fields
.field public final a:I

.field public final b:[Lorg/apache/xerces/xni/QName;

.field public final c:[I

.field public final d:Z


# direct methods
.method public constructor <init>([Lorg/apache/xerces/xni/QName;[IIIZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->a:I

    new-array v0, p4, [Lorg/apache/xerces/xni/QName;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->b:[Lorg/apache/xerces/xni/QName;

    new-array p4, p4, [I

    iput-object p4, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->c:[I

    const/4 p4, 0x0

    :goto_0
    iget v0, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->a:I

    if-lt p4, v0, :cond_0

    iput-boolean p5, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->d:Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->b:[Lorg/apache/xerces/xni/QName;

    new-instance v1, Lorg/apache/xerces/xni/QName;

    add-int v2, p3, p4

    aget-object v3, p1, v2

    invoke-direct {v1, v3}, Lorg/apache/xerces/xni/QName;-><init>(Lorg/apache/xerces/xni/QName;)V

    aput-object v1, v0, p4

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->c:[I

    aget v1, p2, v2

    aput v1, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public validate([Lorg/apache/xerces/xni/QName;II)I
    .locals 10

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->d:Z

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    move v0, v4

    :goto_0
    if-lt v4, p3, :cond_0

    goto :goto_3

    :cond_0
    add-int v5, p2, v4

    aget-object v5, p1, v5

    iget-object v6, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->c:[I

    aget v6, v6, v0

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->b:[Lorg/apache/xerces/xni/QName;

    aget-object v6, v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v6, v5, :cond_5

    return v4

    :cond_2
    if-ne v6, v3, :cond_3

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->b:[Lorg/apache/xerces/xni/QName;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_5

    aget-object v6, p1, v4

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v5, v6, :cond_5

    return v4

    :cond_3
    if-ne v6, v2, :cond_4

    aget-object v5, p1, v4

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_5

    return v4

    :cond_4
    if-ne v6, v1, :cond_5

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->b:[Lorg/apache/xerces/xni/QName;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aget-object v6, p1, v4

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_5

    return v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move v0, v4

    :goto_2
    if-lt v0, p3, :cond_7

    :goto_3
    const/4 p0, -0x1

    return p0

    :cond_7
    add-int v5, p2, v0

    aget-object v5, p1, v5

    iget-object v6, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-nez v6, :cond_8

    goto :goto_6

    :cond_8
    move v6, v4

    :goto_4
    iget v7, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->a:I

    if-lt v6, v7, :cond_9

    goto :goto_5

    :cond_9
    iget-object v8, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->c:[I

    aget v8, v8, v6

    if-nez v8, :cond_a

    iget-object v8, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->b:[Lorg/apache/xerces/xni/QName;

    aget-object v9, v9, v6

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v8, v9, :cond_f

    goto :goto_5

    :cond_a
    if-ne v8, v3, :cond_b

    iget-object v8, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->b:[Lorg/apache/xerces/xni/QName;

    aget-object v8, v8, v6

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v8, :cond_d

    aget-object v9, p1, v0

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_f

    goto :goto_5

    :cond_b
    if-ne v8, v2, :cond_c

    aget-object v8, p1, v0

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v8, :cond_f

    goto :goto_5

    :cond_c
    if-ne v8, v1, :cond_f

    iget-object v8, p0, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;->b:[Lorg/apache/xerces/xni/QName;

    aget-object v8, v8, v6

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aget-object v9, p1, v0

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v8, v9, :cond_f

    :cond_d
    :goto_5
    if-ne v6, v7, :cond_e

    return v0

    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method
