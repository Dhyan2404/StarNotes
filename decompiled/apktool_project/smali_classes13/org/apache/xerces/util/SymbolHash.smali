.class public Lorg/apache/xerces/util/SymbolHash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/SymbolHash$Entry;
    }
.end annotation


# static fields
.field protected static final MAX_HASH_COLLISIONS:I = 0x28

.field protected static final MULTIPLIERS_MASK:I = 0x1f

.field protected static final MULTIPLIERS_SIZE:I = 0x20

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

.field protected fHashMultipliers:[I

.field protected fNum:I

.field protected fTableSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    iput p1, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    new-array p1, p1, [Lorg/apache/xerces/util/SymbolHash$Entry;

    iput-object p1, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    const p0, 0x7fffffff

    and-int/2addr p0, v2

    return p0

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

.method public final b(I)V
    .locals 7

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    array-length v1, v0

    new-array v2, p1, [Lorg/apache/xerces/util/SymbolHash$Entry;

    iput-object v2, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    array-length v3, v2

    iput v3, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    aget-object v1, v0, v3

    :goto_1
    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    iget-object v5, v1, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lorg/apache/xerces/util/SymbolHash;->hash(Ljava/lang/Object;)I

    move-result v5

    rem-int/2addr v5, p1

    aget-object v6, v2, v5

    iput-object v6, v1, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    aput-object v1, v2, v5

    move-object v1, v4

    goto :goto_1
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    iput v0, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    iput-object v3, p0, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->hash(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/util/SymbolHash;->search(Ljava/lang/Object;I)Lorg/apache/xerces/util/SymbolHash$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntries()[Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-ge v1, v3, :cond_2

    iget v3, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    shl-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    aget-object v3, v3, v1

    :goto_1
    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, v3, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v3, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    return p0
.end method

.method public getValues([Ljava/lang/Object;I)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-ge v0, v2, :cond_2

    iget v2, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    if-lt v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    aget-object v2, v2, v0

    :goto_1
    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v3, p2, v1

    iget-object v4, v2, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    goto :goto_1

    :cond_2
    :goto_2
    iget p0, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    return p0
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->a(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public makeClone()Lorg/apache/xerces/util/SymbolHash;
    .locals 4

    new-instance v0, Lorg/apache/xerces/util/SymbolHash;

    iget v1, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    invoke-direct {v0, v1}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iget v1, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    iput v1, v0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    iget-object v1, p0, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v3, v0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    invoke-virtual {v2}, Lorg/apache/xerces/util/SymbolHash$Entry;->makeClone()Lorg/apache/xerces/util/SymbolHash$Entry;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->hash(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int v1, v0, v1

    iget-object v2, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_2

    iget v2, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    iget v4, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-lt v2, v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolHash;->rehash()V

    :goto_1
    iget v1, p0, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int v1, v0, v1

    goto :goto_2

    :cond_0
    const/16 v0, 0x28

    if-lt v3, v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolHash;->rebalance()V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->hash(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_2
    new-instance v0, Lorg/apache/xerces/util/SymbolHash$Entry;

    iget-object v2, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    aget-object v2, v2, v1

    invoke-direct {v0, p1, p2, v2}, Lorg/apache/xerces/util/SymbolHash$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/xerces/util/SymbolHash$Entry;)V

    iget-object p1, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    aput-object v0, p1, v1

    iget p1, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    return-void

    :cond_2
    iget-object v4, v2, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object p2, v2, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    goto :goto_0
.end method

.method public rebalance()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    if-nez v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/f7l;->a([I)V

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/SymbolHash;->b(I)V

    return-void
.end method

.method public rehash()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/SymbolHash;->b(I)V

    return-void
.end method

.method public search(Ljava/lang/Object;I)Lorg/apache/xerces/util/SymbolHash$Entry;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    aget-object p0, p0, p2

    :goto_0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p2, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    goto :goto_0
.end method
