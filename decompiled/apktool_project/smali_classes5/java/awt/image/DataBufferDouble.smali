.class public final Ljava/awt/image/DataBufferDouble;
.super Ljava/awt/image/DataBuffer;
.source "SourceFile"


# instance fields
.field bankdata:[[D

.field data:[D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    sget-object v0, Lsun/java2d/StateTrackable$State;->STABLE:Lsun/java2d/StateTrackable$State;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;II)V

    .line 2
    new-array p1, p1, [D

    iput-object p1, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    const/4 v0, 0x1

    new-array v0, v0, [[D

    .line 3
    iput-object v0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    const/4 p0, 0x0

    aput-object p1, v0, p0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 4
    sget-object v0, Lsun/java2d/StateTrackable$State;->STABLE:Lsun/java2d/StateTrackable$State;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;III)V

    .line 5
    new-array v0, p2, [[D

    iput-object v0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 6
    iget-object v2, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    new-array v3, p1, [D

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    aget-object p1, p1, v0

    iput-object p1, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    return-void
.end method

.method public constructor <init>([DI)V
    .locals 2

    .line 8
    sget-object v0, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p2}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;II)V

    .line 9
    iput-object p1, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    const/4 p2, 0x1

    new-array p2, p2, [[D

    .line 10
    iput-object p2, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    const/4 p0, 0x0

    aput-object p1, p2, p0

    return-void
.end method

.method public constructor <init>([DII)V
    .locals 6

    .line 11
    sget-object v1, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    const/4 v2, 0x5

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;IIII)V

    .line 12
    iput-object p1, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    const/4 p2, 0x1

    new-array p2, p2, [[D

    .line 13
    iput-object p2, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    const/4 p0, 0x0

    aput-object p1, p2, p0

    return-void
.end method

.method public constructor <init>([[DI)V
    .locals 3

    .line 14
    sget-object v0, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    array-length v1, p1

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2, p2, v1}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;III)V

    .line 15
    invoke-virtual {p1}, [[D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    const/4 p2, 0x0

    .line 16
    aget-object p1, p1, p2

    iput-object p1, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    return-void
.end method

.method public constructor <init>([[DI[I)V
    .locals 6

    .line 17
    sget-object v1, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    const/4 v2, 0x5

    array-length v4, p1

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;III[I)V

    .line 18
    invoke-virtual {p1}, [[D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    const/4 p2, 0x0

    .line 19
    aget-object p1, p1, p2

    iput-object p1, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    return-void
.end method


# virtual methods
.method public getBankData()[[D
    .locals 1

    iget-object v0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lsun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object p0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    invoke-virtual {p0}, [[D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[D

    return-object p0
.end method

.method public getData()[D
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lsun/java2d/StateTrackableDelegate;->setUntrackable()V

    .line 2
    iget-object p0, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    return-object p0
.end method

.method public getData(I)[D
    .locals 1

    .line 3
    iget-object v0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lsun/java2d/StateTrackableDelegate;->setUntrackable()V

    .line 4
    iget-object p0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getElem(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    iget p0, p0, Ljava/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, p0

    aget-wide p0, v0, p1

    double-to-int p0, p0

    return p0
.end method

.method public getElem(II)I
    .locals 1

    .line 2
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    aget-object v0, v0, p1

    iget-object p0, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    aget p0, p0, p1

    add-int/2addr p2, p0

    aget-wide p0, v0, p2

    double-to-int p0, p0

    return p0
.end method

.method public getElemDouble(I)D
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    iget p0, p0, Ljava/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, p0

    aget-wide p0, v0, p1

    return-wide p0
.end method

.method public getElemDouble(II)D
    .locals 1

    .line 2
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    aget-object v0, v0, p1

    iget-object p0, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    aget p0, p0, p1

    add-int/2addr p2, p0

    aget-wide p0, v0, p2

    return-wide p0
.end method

.method public getElemFloat(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    iget p0, p0, Ljava/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, p0

    aget-wide p0, v0, p1

    double-to-float p0, p0

    return p0
.end method

.method public getElemFloat(II)F
    .locals 1

    .line 2
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    aget-object v0, v0, p1

    iget-object p0, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    aget p0, p0, p1

    add-int/2addr p2, p0

    aget-wide p0, v0, p2

    double-to-float p0, p0

    return p0
.end method

.method public setElem(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    iget v1, p0, Ljava/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    int-to-double v1, p2

    aput-wide v1, v0, p1

    .line 2
    iget-object p0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElem(III)V
    .locals 3

    .line 3
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    aget-object v0, v0, p1

    iget-object v1, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    int-to-double v1, p3

    aput-wide v1, v0, p2

    .line 4
    iget-object p0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElemDouble(ID)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    iget v1, p0, Ljava/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    aput-wide p2, v0, p1

    .line 2
    iget-object p0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElemDouble(IID)V
    .locals 2

    .line 3
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    aget-object v0, v0, p1

    iget-object v1, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    aput-wide p3, v0, p2

    .line 4
    iget-object p0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElemFloat(IF)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->data:[D

    iget v1, p0, Ljava/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    float-to-double v1, p2

    aput-wide v1, v0, p1

    .line 2
    iget-object p0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElemFloat(IIF)V
    .locals 3

    .line 3
    iget-object v0, p0, Ljava/awt/image/DataBufferDouble;->bankdata:[[D

    aget-object v0, v0, p1

    iget-object v1, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    float-to-double v1, p3

    aput-wide v1, v0, p2

    .line 4
    iget-object p0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method
