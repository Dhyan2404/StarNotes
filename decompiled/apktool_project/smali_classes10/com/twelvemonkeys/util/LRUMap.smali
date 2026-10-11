.class public Lcom/twelvemonkeys/util/LRUMap;
.super Lcom/twelvemonkeys/util/LinkedMap;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/util/ExpiringMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twelvemonkeys/util/LinkedMap<",
        "TK;TV;>;",
        "Lcom/twelvemonkeys/util/ExpiringMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private maxSize:I

.field private trimFactor:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/twelvemonkeys/util/LinkedMap;-><init>(Ljava/util/Map;Z)V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/twelvemonkeys/util/LRUMap;->maxSize:I

    const v0, 0x3c23d70a    # 0.01f

    .line 3
    iput v0, p0, Lcom/twelvemonkeys/util/LRUMap;->trimFactor:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/twelvemonkeys/util/LinkedMap;-><init>(Ljava/util/Map;Z)V

    const/16 v0, 0x3e8

    .line 5
    iput v0, p0, Lcom/twelvemonkeys/util/LRUMap;->maxSize:I

    const v0, 0x3c23d70a    # 0.01f

    .line 6
    iput v0, p0, Lcom/twelvemonkeys/util/LRUMap;->trimFactor:F

    .line 7
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/LRUMap;->setMaxSize(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/util/LinkedMap;-><init>(Ljava/util/Map;Z)V

    const/16 p1, 0x3e8

    .line 9
    iput p1, p0, Lcom/twelvemonkeys/util/LRUMap;->maxSize:I

    const p1, 0x3c23d70a    # 0.01f

    .line 10
    iput p1, p0, Lcom/twelvemonkeys/util/LRUMap;->trimFactor:F

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/util/LinkedMap;-><init>(Ljava/util/Map;Z)V

    const/16 p1, 0x3e8

    .line 12
    iput p1, p0, Lcom/twelvemonkeys/util/LRUMap;->maxSize:I

    const p1, 0x3c23d70a    # 0.01f

    .line 13
    iput p1, p0, Lcom/twelvemonkeys/util/LRUMap;->trimFactor:F

    .line 14
    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/util/LRUMap;->setMaxSize(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/twelvemonkeys/util/LinkedMap;-><init>(Ljava/util/Map;Ljava/util/Map;Z)V

    const/16 p1, 0x3e8

    .line 16
    iput p1, p0, Lcom/twelvemonkeys/util/LRUMap;->maxSize:I

    const p1, 0x3c23d70a    # 0.01f

    .line 17
    iput p1, p0, Lcom/twelvemonkeys/util/LRUMap;->trimFactor:F

    .line 18
    invoke-virtual {p0, p3}, Lcom/twelvemonkeys/util/LRUMap;->setMaxSize(I)V

    return-void
.end method


# virtual methods
.method public getMaxSize()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/util/LRUMap;->maxSize:I

    return p0
.end method

.method public getTrimFactor()F
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/util/LRUMap;->trimFactor:F

    return p0
.end method

.method public processRemoved(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LinkedMap;->size()I

    move-result p1

    iget v0, p0, Lcom/twelvemonkeys/util/LRUMap;->maxSize:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LRUMap;->removeLRU()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->removeEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/LRUMap;->processRemoved(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public removeLRU()V
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LinkedMap;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/twelvemonkeys/util/LRUMap;->trimFactor:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v0, v0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/util/LRUMap;->removeEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    iput p1, p0, Lcom/twelvemonkeys/util/LRUMap;->maxSize:I

    :goto_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LinkedMap;->size()I

    move-result p1

    iget v0, p0, Lcom/twelvemonkeys/util/LRUMap;->maxSize:I

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/LRUMap;->removeLRU()V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max size must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTrimFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/twelvemonkeys/util/LRUMap;->trimFactor:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "trim factor must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
