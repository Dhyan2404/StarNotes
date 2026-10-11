.class public final Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QNameHashtable"
.end annotation


# static fields
.field private static final HASHTABLE_SIZE:I = 0x65

.field private static final INITIAL_BUCKET_SIZE:I = 0x4

.field public static final UNIQUE_STRINGS:Z = true


# instance fields
.field private fHashTable:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    new-array v0, v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->hash(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x65

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

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
    if-ge v4, v2, :cond_2

    aget-object v6, p0, v5

    check-cast v6, Ljava/lang/String;

    if-ne v6, p1, :cond_1

    add-int/2addr v5, v3

    aget-object p0, p0, v5

    check-cast p0, [I

    aget p0, p0, v1

    return p0

    :cond_1
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p0

    :goto_0
    if-ge p0, v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const p0, 0x7ffffff

    and-int/2addr p0, v1

    return p0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->hash(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x65

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aget-object v3, v2, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    filled-new-array {v4}, [I

    move-result-object v3

    aput-object v3, p0, v5

    aput-object p1, p0, v4

    filled-new-array {p2}, [I

    move-result-object p1

    aput-object p1, p0, v1

    aput-object p0, v2, v0

    goto :goto_2

    :cond_0
    aget-object v2, v3, v5

    check-cast v2, [I

    aget v2, v2, v5

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    array-length v7, v3

    if-ne v6, v7, :cond_1

    add-int/lit8 v7, v2, 0x4

    mul-int/2addr v7, v1

    add-int/2addr v7, v4

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aput-object v1, p0, v0

    move-object v3, v1

    :cond_1
    move v0, v4

    move p0, v5

    :goto_0
    if-ge p0, v2, :cond_3

    aget-object v1, v3, v0

    check-cast v1, Ljava/lang/String;

    if-ne v1, p1, :cond_2

    add-int/2addr v0, v4

    aget-object p0, v3, v0

    check-cast p0, [I

    aput p2, p0, v5

    move p0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    move p0, v5

    :goto_1
    if-nez p0, :cond_4

    add-int/lit8 p0, v6, 0x1

    aput-object p1, v3, v6

    filled-new-array {p2}, [I

    move-result-object p1

    aput-object p1, v3, p0

    aget-object p0, v3, v5

    check-cast p0, [I

    add-int/2addr v2, v4

    aput v2, p0, v5

    :cond_4
    :goto_2
    return-void
.end method
