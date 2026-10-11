.class public final Ljava/awt/image/DataBufferUShort;
.super Ljava/awt/image/DataBuffer;
.source "SourceFile"


# instance fields
.field bankdata:[[S

.field data:[S


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    sget-object v0, Lsun/java2d/StateTrackable$State;->STABLE:Lsun/java2d/StateTrackable$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;II)V

    .line 2
    new-array p1, p1, [S

    iput-object p1, p0, Ljava/awt/image/DataBufferUShort;->data:[S

    new-array v0, v1, [[S

    .line 3
    iput-object v0, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    const/4 p0, 0x0

    aput-object p1, v0, p0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 4
    sget-object v0, Lsun/java2d/StateTrackable$State;->STABLE:Lsun/java2d/StateTrackable$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;III)V

    .line 5
    new-array v0, p2, [[S

    iput-object v0, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 6
    iget-object v2, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    new-array v3, p1, [S

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    aget-object p1, p1, v0

    iput-object p1, p0, Ljava/awt/image/DataBufferUShort;->data:[S

    return-void
.end method

.method public constructor <init>([SI)V
    .locals 2

    .line 8
    sget-object v0, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;II)V

    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Ljava/awt/image/DataBufferUShort;->data:[S

    new-array p2, v1, [[S

    .line 10
    iput-object p2, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    const/4 p0, 0x0

    aput-object p1, p2, p0

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "dataArray is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([SII)V
    .locals 6

    .line 12
    sget-object v1, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;IIII)V

    if-eqz p1, :cond_1

    add-int/2addr p2, p3

    .line 13
    array-length p3, p1

    if-gt p2, p3, :cond_0

    .line 14
    iput-object p1, p0, Ljava/awt/image/DataBufferUShort;->data:[S

    const/4 p2, 0x1

    new-array p2, p2, [[S

    .line 15
    iput-object p2, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    const/4 p0, 0x0

    aput-object p1, p2, p0

    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of dataArray is less  than size+offset."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "dataArray is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([[SI)V
    .locals 3

    .line 18
    sget-object v0, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, p2, v1}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;III)V

    const/4 p2, 0x0

    move v0, p2

    .line 19
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 20
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dataArray["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_1
    invoke-virtual {p1}, [[S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    .line 23
    aget-object p1, p1, p2

    iput-object p1, p0, Ljava/awt/image/DataBufferUShort;->data:[S

    return-void
.end method

.method public constructor <init>([[SI[I)V
    .locals 6

    .line 24
    sget-object v1, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    const/4 v2, 0x1

    array-length v4, p1

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;III[I)V

    const/4 v0, 0x0

    move v1, v0

    .line 25
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 26
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 27
    aget v3, p3, v1

    add-int/2addr v3, p2

    array-length v2, v2

    if-gt v3, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Length of dataArray["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] is less than size+offsets["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dataArray["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_2
    invoke-virtual {p1}, [[S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    .line 31
    aget-object p1, p1, v0

    iput-object p1, p0, Ljava/awt/image/DataBufferUShort;->data:[S

    return-void
.end method


# virtual methods
.method public getBankData()[[S
    .locals 1

    iget-object v0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lsun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object p0, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    invoke-virtual {p0}, [[S->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    return-object p0
.end method

.method public getData()[S
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lsun/java2d/StateTrackableDelegate;->setUntrackable()V

    .line 2
    iget-object p0, p0, Ljava/awt/image/DataBufferUShort;->data:[S

    return-object p0
.end method

.method public getData(I)[S
    .locals 1

    .line 3
    iget-object v0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lsun/java2d/StateTrackableDelegate;->setUntrackable()V

    .line 4
    iget-object p0, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getElem(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBufferUShort;->data:[S

    iget p0, p0, Ljava/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, p0

    aget-short p0, v0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public getElem(II)I
    .locals 1

    .line 2
    iget-object v0, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    aget-object v0, v0, p1

    iget-object p0, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    aget p0, p0, p1

    add-int/2addr p2, p0

    aget-short p0, v0, p2

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public setElem(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/awt/image/DataBufferUShort;->data:[S

    iget v1, p0, Ljava/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    const v1, 0xffff

    and-int/2addr p2, v1

    int-to-short p2, p2

    aput-short p2, v0, p1

    .line 2
    iget-object p0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElem(III)V
    .locals 2

    .line 3
    iget-object v0, p0, Ljava/awt/image/DataBufferUShort;->bankdata:[[S

    aget-object v0, v0, p1

    iget-object v1, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    const p1, 0xffff

    and-int/2addr p1, p3

    int-to-short p1, p1

    aput-short p1, v0, p2

    .line 4
    iget-object p0, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method
