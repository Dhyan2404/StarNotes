.class public Lsun/java2d/pipe/RegionIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field curIndex:I

.field numXbands:I

.field region:Lsun/java2d/pipe/Region;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/pipe/RegionIterator;->region:Lsun/java2d/pipe/Region;

    return-void
.end method


# virtual methods
.method public copyStateFrom(Lsun/java2d/pipe/RegionIterator;)V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/RegionIterator;->region:Lsun/java2d/pipe/Region;

    iget-object v1, p1, Lsun/java2d/pipe/RegionIterator;->region:Lsun/java2d/pipe/Region;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lsun/java2d/pipe/RegionIterator;->curIndex:I

    iput v0, p0, Lsun/java2d/pipe/RegionIterator;->curIndex:I

    iget p1, p1, Lsun/java2d/pipe/RegionIterator;->numXbands:I

    iput p1, p0, Lsun/java2d/pipe/RegionIterator;->numXbands:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "region mismatch"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createCopy()Lsun/java2d/pipe/RegionIterator;
    .locals 2

    new-instance v0, Lsun/java2d/pipe/RegionIterator;

    iget-object v1, p0, Lsun/java2d/pipe/RegionIterator;->region:Lsun/java2d/pipe/Region;

    invoke-direct {v0, v1}, Lsun/java2d/pipe/RegionIterator;-><init>(Lsun/java2d/pipe/Region;)V

    iget v1, p0, Lsun/java2d/pipe/RegionIterator;->curIndex:I

    iput v1, v0, Lsun/java2d/pipe/RegionIterator;->curIndex:I

    iget p0, p0, Lsun/java2d/pipe/RegionIterator;->numXbands:I

    iput p0, v0, Lsun/java2d/pipe/RegionIterator;->numXbands:I

    return-object v0
.end method

.method public nextXBand([I)Z
    .locals 5

    iget v0, p0, Lsun/java2d/pipe/RegionIterator;->numXbands:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lsun/java2d/pipe/RegionIterator;->numXbands:I

    iget-object v0, p0, Lsun/java2d/pipe/RegionIterator;->region:Lsun/java2d/pipe/Region;

    iget-object v0, v0, Lsun/java2d/pipe/Region;->bands:[I

    iget v3, p0, Lsun/java2d/pipe/RegionIterator;->curIndex:I

    add-int/lit8 v4, v3, 0x1

    aget v3, v0, v3

    aput v3, p1, v1

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lsun/java2d/pipe/RegionIterator;->curIndex:I

    aget p0, v0, v4

    const/4 v0, 0x2

    aput p0, p1, v0

    return v2
.end method

.method public nextYRange([I)Z
    .locals 5

    iget v0, p0, Lsun/java2d/pipe/RegionIterator;->curIndex:I

    iget v1, p0, Lsun/java2d/pipe/RegionIterator;->numXbands:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lsun/java2d/pipe/RegionIterator;->curIndex:I

    const/4 v1, 0x0

    iput v1, p0, Lsun/java2d/pipe/RegionIterator;->numXbands:I

    iget-object v2, p0, Lsun/java2d/pipe/RegionIterator;->region:Lsun/java2d/pipe/Region;

    iget v3, v2, Lsun/java2d/pipe/Region;->endIndex:I

    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    iget-object v1, v2, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    const/4 v3, 0x1

    aput v0, p1, v3

    add-int/lit8 v0, v2, 0x1

    aget v2, v1, v2

    const/4 v4, 0x3

    aput v2, p1, v4

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lsun/java2d/pipe/RegionIterator;->curIndex:I

    aget p1, v1, v0

    iput p1, p0, Lsun/java2d/pipe/RegionIterator;->numXbands:I

    return v3
.end method
