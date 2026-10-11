.class public Lorg/apache/xerces/util/SymbolTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/SymbolTable$Entry;
    }
.end annotation


# static fields
.field protected static final MAX_HASH_COLLISIONS:I = 0x28

.field protected static final MULTIPLIERS_MASK:I = 0x1f

.field protected static final MULTIPLIERS_SIZE:I = 0x20

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

.field protected final fCollisionThreshold:I

.field protected transient fCount:I

.field protected fHashMultipliers:[I

.field protected fLoadFactor:F

.field protected fTableSize:I

.field protected fThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x65

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/apache/xerces/util/SymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/util/SymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p2, p0, Lorg/apache/xerces/util/SymbolTable;->fLoadFactor:F

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    new-array v0, p1, [Lorg/apache/xerces/util/SymbolTable$Entry;

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    const/high16 p1, 0x42200000    # 40.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCollisionThreshold:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Illegal Load: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Illegal Capacity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolTable;->rehash()V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result p2

    iget p3, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr p2, p3

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCollisionThreshold:I

    if-lt p3, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolTable;->rebalance()V

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p3, Lorg/apache/xerces/util/SymbolTable$Entry;

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    aget-object v0, v0, p2

    invoke-direct {p3, p1, v0}, Lorg/apache/xerces/util/SymbolTable$Entry;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable$Entry;)V

    iget-object p1, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    aput-object p3, p1, p2

    iget p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    iget-object p0, p3, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    return-object p0
.end method

.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/xerces/util/SymbolTable;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v3, v1, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v1, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 8

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int v6, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    aget-object v0, v0, v6

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-nez v0, :cond_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/util/SymbolTable;->b([CIIII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v2, v0, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v2, v2

    if-ne p3, v2, :cond_3

    move v2, v1

    :goto_1
    if-lt v2, p3, :cond_1

    iget-object p0, v0, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int v3, p2, v2

    aget-char v3, p1, v3

    iget-object v4, v0, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v4, v4, v2

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    iget-object v0, v0, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public final b([CIIII)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolTable;->rehash()V

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result p4

    iget p5, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr p4, p5

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCollisionThreshold:I

    if-lt p5, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolTable;->rebalance()V

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p5, Lorg/apache/xerces/util/SymbolTable$Entry;

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    aget-object v0, v0, p4

    invoke-direct {p5, p1, p2, p3, v0}, Lorg/apache/xerces/util/SymbolTable$Entry;-><init>([CIILorg/apache/xerces/util/SymbolTable$Entry;)V

    iget-object p1, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    aput-object p5, p1, p4

    iget p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    iget-object p0, p5, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

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

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    aget-object p0, p0, v0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v2, v2

    if-ne v1, v2, :cond_3

    :goto_1
    if-lt v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v3, v3, v0

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p0, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public containsSymbol([CII)Z
    .locals 3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    aget-object p0, p0, v0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v1, v1

    if-ne p3, v1, :cond_3

    :goto_1
    if-lt v0, p3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int v1, p2, v0

    aget-char v1, p1, v1

    iget-object v2, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v2, v2, v0

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p0, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public final d([CII)I
    .locals 3

    iget-object p0, p0, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, p3, :cond_0

    const p0, 0x7fffffff

    and-int/2addr p0, v1

    return p0

    :cond_0
    and-int/lit8 v2, v0, 0x1f

    aget v2, p0, v2

    mul-int/2addr v1, v2

    add-int v2, p2, v0

    aget-char v2, p1, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final e(I)V
    .locals 7

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    array-length v1, v0

    new-array v2, p1, [Lorg/apache/xerces/util/SymbolTable$Entry;

    int-to-float v3, p1

    iget v4, p0, Lorg/apache/xerces/util/SymbolTable;->fLoadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    iput-object v2, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    array-length v3, v2

    iput v3, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

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
    iget-object v4, v1, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    iget-object v5, v1, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v5

    rem-int/2addr v5, p1

    aget-object v6, v2, v5

    iput-object v6, v1, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    aput-object v1, v2, v5

    move-object v1, v4

    goto :goto_1
.end method

.method public hash(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hash([CII)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    if-nez v0, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-lt p0, p3, :cond_0

    const p0, 0x7fffffff

    and-int/2addr p0, v0

    return p0

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    add-int v1, p2, p0

    aget-char v1, p1, v1

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->d([CII)I

    move-result p0

    return p0
.end method

.method public rebalance()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    if-nez v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/f7l;->a([I)V

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/SymbolTable;->e(I)V

    return-void
.end method

.method public rehash()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/SymbolTable;->e(I)V

    return-void
.end method
