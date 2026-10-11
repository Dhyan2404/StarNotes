.class public final Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/dtd/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QNameHashtable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable$a;
    }
.end annotation


# static fields
.field public static final e:I = 0x4

.field public static final f:I = 0x65

.field public static final g:I = 0x28

.field public static final h:I = 0x20

.field public static final i:I = 0x1f


# instance fields
.field public a:[[Ljava/lang/Object;

.field public b:I

.field public c:I

.field public d:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    new-array v1, v0, [[Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    iput v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->d:[I

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

.method public final b()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->d:[I

    if-nez v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->d:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->d:[I

    invoke-static {v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable$a;->a([I)V

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->d(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->d(I)V

    return-void
.end method

.method public final d(I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    array-length v2, v1

    move/from16 v3, p1

    new-array v3, v3, [[Ljava/lang/Object;

    iput-object v3, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    array-length v3, v3

    iput v3, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->b:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    return-void

    :cond_0
    aget-object v5, v1, v4

    if-eqz v5, :cond_5

    aget-object v6, v5, v3

    check-cast v6, [I

    aget v6, v6, v3

    const/4 v7, 0x1

    move v8, v3

    move v10, v8

    move v9, v7

    :goto_1
    if-lt v8, v6, :cond_1

    goto/16 :goto_5

    :cond_1
    aget-object v11, v5, v9

    check-cast v11, Ljava/lang/String;

    add-int/lit8 v12, v9, 0x1

    aget-object v12, v5, v12

    invoke-virtual {v0, v11}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->hash(Ljava/lang/String;)I

    move-result v13

    const v14, 0x7fffffff

    and-int/2addr v13, v14

    iget v14, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->b:I

    rem-int/2addr v13, v14

    iget-object v14, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    aget-object v15, v14, v13

    const/16 v16, 0x2

    if-nez v15, :cond_3

    if-eqz v10, :cond_2

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Object;

    filled-new-array {v7}, [I

    move-result-object v17

    aput-object v17, v15, v3

    goto :goto_2

    :cond_2
    aget-object v10, v5, v3

    check-cast v10, [I

    aput v7, v10, v3

    move-object v15, v5

    move v10, v7

    :goto_2
    aput-object v11, v15, v7

    aput-object v12, v15, v16

    aput-object v15, v14, v13

    move-object/from16 v17, v1

    move v1, v3

    move/from16 v16, v7

    goto :goto_4

    :cond_3
    aget-object v14, v15, v3

    check-cast v14, [I

    aget v14, v14, v3

    mul-int/lit8 v17, v14, 0x2

    add-int/lit8 v3, v17, 0x1

    array-length v7, v15

    if-ne v3, v7, :cond_4

    add-int/lit8 v7, v14, 0x4

    mul-int/lit8 v7, v7, 0x2

    const/16 v16, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v17, v1

    const/4 v1, 0x0

    invoke-static {v15, v1, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v15, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    aput-object v7, v15, v13

    move-object v15, v7

    goto :goto_3

    :cond_4
    move-object/from16 v17, v1

    const/4 v1, 0x0

    const/16 v16, 0x1

    :goto_3
    add-int/lit8 v7, v3, 0x1

    aput-object v11, v15, v3

    aput-object v12, v15, v7

    aget-object v3, v15, v1

    check-cast v3, [I

    add-int/lit8 v14, v14, 0x1

    aput v14, v3, v1

    :goto_4
    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v8, v8, 0x1

    move v3, v1

    move/from16 v7, v16

    move-object/from16 v1, v17

    goto :goto_1

    :cond_5
    :goto_5
    move-object/from16 v17, v1

    move v1, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v1

    move-object/from16 v1, v17

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->hash(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->b:I

    rem-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    aget-object p0, p0, v0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    aget-object v2, p0, v1

    check-cast v2, [I

    aget v2, v2, v1

    const/4 v3, 0x1

    move v4, v1

    move v5, v3

    :goto_0
    if-lt v4, v2, :cond_1

    return v0

    :cond_1
    aget-object v6, p0, v5

    check-cast v6, Ljava/lang/String;

    if-ne v6, p1, :cond_2

    add-int/2addr v5, v3

    aget-object p0, p0, v5

    check-cast p0, [I

    aget p0, p0, v1

    return p0

    :cond_2
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->d:[I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->hash(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->b:I

    rem-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    aget-object v3, v2, v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    filled-new-array {v6}, [I

    move-result-object v7

    aput-object v7, v3, v5

    aput-object p1, v3, v6

    filled-new-array {p2}, [I

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v3, v2, v0

    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->c:I

    if-le p1, v1, :cond_4

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->c()V

    goto :goto_3

    :cond_0
    aget-object v1, v3, v5

    check-cast v1, [I

    aget v1, v1, v5

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v6

    array-length v7, v3

    if-ne v2, v7, :cond_1

    add-int/lit8 v7, v1, 0x4

    mul-int/2addr v7, v4

    add-int/2addr v7, v6

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->a:[[Ljava/lang/Object;

    aput-object v4, v3, v0

    move-object v3, v4

    :cond_1
    move v0, v5

    move v4, v6

    :goto_1
    if-lt v0, v1, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    aget-object v7, v3, v4

    check-cast v7, Ljava/lang/String;

    if-ne v7, p1, :cond_5

    add-int/2addr v4, v6

    aget-object v0, v3, v4

    check-cast v0, [I

    aput p2, v0, v5

    move v0, v6

    :goto_2
    if-nez v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    aput-object p1, v3, v2

    filled-new-array {p2}, [I

    move-result-object p1

    aput-object p1, v3, v0

    aget-object p1, v3, v5

    check-cast p1, [I

    add-int/2addr v1, v6

    aput v1, p1, v5

    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->c:I

    iget p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->b:I

    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x28

    if-le v1, p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->b()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
