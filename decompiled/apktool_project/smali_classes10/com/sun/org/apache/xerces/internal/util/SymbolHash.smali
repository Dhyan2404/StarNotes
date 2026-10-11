.class public Lcom/sun/org/apache/xerces/internal/util/SymbolHash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;
    }
.end annotation


# instance fields
.field protected fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

.field protected fNum:I

.field protected fTableSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fTableSize:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    .line 7
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fTableSize:I

    .line 8
    new-array p1, p1, [Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fTableSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fTableSize:I

    rem-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->search(Ljava/lang/Object;I)Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    return p0
.end method

.method public getValues([Ljava/lang/Object;I)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fTableSize:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    aget-object v2, v2, v0

    :goto_1
    if-eqz v2, :cond_0

    add-int v3, p2, v1

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    return p0
.end method

.method public makeClone()Lcom/sun/org/apache/xerces/internal/util/SymbolHash;
    .locals 4

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fTableSize:I

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;-><init>(I)V

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fTableSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;->makeClone()Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fTableSize:I

    rem-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->search(Ljava/lang/Object;I)Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object p2, v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    aget-object v2, v2, v0

    invoke-direct {v1, p1, p2, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    aput-object v1, p1, v0

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fNum:I

    :goto_0
    return-void
.end method

.method public search(Ljava/lang/Object;I)Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash;->fBuckets:[Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    aget-object p0, p0, p2

    :goto_0
    if-eqz p0, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/SymbolHash$Entry;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
