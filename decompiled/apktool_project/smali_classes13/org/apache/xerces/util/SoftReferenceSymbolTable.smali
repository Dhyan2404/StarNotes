.class public Lorg/apache/xerces/util/SoftReferenceSymbolTable;
.super Lorg/apache/xerces/util/SymbolTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;,
        Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/ReferenceQueue;

.field protected fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x65

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/apache/xerces/util/SymbolTable;-><init>(IF)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-ltz p1, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-lez v1, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    iput p2, p0, Lorg/apache/xerces/util/SymbolTable;->fLoadFactor:F

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    new-array v0, p1, [Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->a:Ljava/lang/ref/ReferenceQueue;

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

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result p2

    iget p3, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr p2, p3

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCollisionThreshold:I

    if-lt p3, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rebalance()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v0, v0, p2

    iget-object v1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p1, v0, p2, v1}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    iget-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object p3, v0, p2

    iget p2, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    return-object p1
.end method

.method private b([CIIII)Ljava/lang/String;
    .locals 9

    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result p4

    iget p5, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr p4, p5

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCollisionThreshold:I

    if-lt p5, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rebalance()V

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p5

    new-instance v8, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v5, v0, p4

    iget-object v7, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->a:Ljava/lang/ref/ReferenceQueue;

    move-object v0, v8

    move-object v1, p5

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;[CIILorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    iget-object p1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v8, p1, p4

    iget p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    return-object p5
.end method

.method private e(I)V
    .locals 8

    iget-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v1, v0

    new-array v2, p1, [Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    int-to-float v3, p1

    iget v4, p0, Lorg/apache/xerces/util/SymbolTable;->fLoadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    iput-object v2, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

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
    iget-object v4, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v5, v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v5

    rem-int/2addr v5, p1

    aget-object v7, v2, v5

    if-eqz v7, :cond_2

    iput-object v1, v7, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :cond_2
    iput v5, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    iput-object v7, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v1, v2, v5

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    iput v5, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    iput-object v6, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget v5, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    :goto_2
    iput-object v6, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v1, v4

    goto :goto_1
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->f()V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0, v2}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p0, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_1
    iget-object v1, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 8

    .line 2
    invoke-virtual {p0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->f()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int v6, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v0, v0, v6

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-nez v0, :cond_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->b([CIIII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v3, v3

    if-ne p3, v3, :cond_4

    move v3, v1

    :goto_1
    if-lt v3, p3, :cond_2

    iget-object p0, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    return-object p0

    :cond_2
    add-int v4, p2, v3

    aget-char v4, p1, v4

    iget-object v5, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    :goto_3
    iget-object v0, v0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method

.method public compact()V
    .locals 2

    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fLoadFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->e(I)V

    return-void
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object p0, p0, v0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v3, v3

    if-ne v1, v3, :cond_4

    :goto_1
    if-lt v0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v4, v4, v0

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method

.method public containsSymbol([CII)Z
    .locals 4

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object p0, p0, v0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v2, v2

    if-ne p3, v2, :cond_4

    :goto_1
    if-lt v0, p3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int v2, p2, v0

    aget-char v2, p1, v2

    iget-object v3, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v3, v3, v0

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->g(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V

    iget-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    iget v1, p0, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    shr-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->compact()V

    :cond_1
    return-void
.end method

.method public final g(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V
    .locals 3

    iget v0, p1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    if-ltz v0, :cond_2

    iget-object v1, p1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v2, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :cond_0
    iget-object p1, p1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz p1, :cond_1

    iput-object v1, p1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v1, p1, v0

    :goto_0
    iget p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    :cond_2
    return-void
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

    iget-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->e(I)V

    return-void
.end method

.method public rehash()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->e(I)V

    return-void
.end method
