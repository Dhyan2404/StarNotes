.class public abstract Ljava/awt/image/DataBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_BYTE:I = 0x0

.field public static final TYPE_DOUBLE:I = 0x5

.field public static final TYPE_FLOAT:I = 0x4

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_SHORT:I = 0x2

.field public static final TYPE_UNDEFINED:I = 0x20

.field public static final TYPE_USHORT:I = 0x1

.field private static final dataTypeSize:[I


# instance fields
.field protected banks:I

.field protected dataType:I

.field protected offset:I

.field protected offsets:[I

.field protected size:I

.field theTrackable:Lsun/java2d/StateTrackableDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/awt/image/DataBuffer;->dataTypeSize:[I

    new-instance v0, Ljava/awt/image/DataBuffer$1;

    invoke-direct {v0}, Ljava/awt/image/DataBuffer$1;-><init>()V

    invoke-static {v0}, Lsun/awt/image/SunWritableRaster;->setDataStealer(Lsun/awt/image/SunWritableRaster$DataStealer;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x10
        0x10
        0x20
        0x20
        0x40
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    sget-object v0, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    invoke-direct {p0, v0, p1, p2}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;II)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 9
    sget-object v0, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;III)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    .line 17
    sget-object v1, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;IIII)V

    return-void
.end method

.method public constructor <init>(III[I)V
    .locals 6

    .line 26
    sget-object v1, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/DataBuffer;-><init>(Lsun/java2d/StateTrackable$State;III[I)V

    return-void
.end method

.method public constructor <init>(Lsun/java2d/StateTrackable$State;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lsun/java2d/StateTrackableDelegate;->createInstance(Lsun/java2d/StateTrackable$State;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    .line 4
    iput p2, p0, Ljava/awt/image/DataBuffer;->dataType:I

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Ljava/awt/image/DataBuffer;->banks:I

    .line 6
    iput p3, p0, Ljava/awt/image/DataBuffer;->size:I

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Ljava/awt/image/DataBuffer;->offset:I

    new-array p1, p1, [I

    .line 8
    iput-object p1, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    return-void
.end method

.method public constructor <init>(Lsun/java2d/StateTrackable$State;III)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lsun/java2d/StateTrackableDelegate;->createInstance(Lsun/java2d/StateTrackable$State;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    .line 12
    iput p2, p0, Ljava/awt/image/DataBuffer;->dataType:I

    .line 13
    iput p4, p0, Ljava/awt/image/DataBuffer;->banks:I

    .line 14
    iput p3, p0, Ljava/awt/image/DataBuffer;->size:I

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Ljava/awt/image/DataBuffer;->offset:I

    .line 16
    new-array p1, p4, [I

    iput-object p1, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    return-void
.end method

.method public constructor <init>(Lsun/java2d/StateTrackable$State;IIII)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lsun/java2d/StateTrackableDelegate;->createInstance(Lsun/java2d/StateTrackable$State;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    .line 20
    iput p2, p0, Ljava/awt/image/DataBuffer;->dataType:I

    .line 21
    iput p4, p0, Ljava/awt/image/DataBuffer;->banks:I

    .line 22
    iput p3, p0, Ljava/awt/image/DataBuffer;->size:I

    .line 23
    iput p5, p0, Ljava/awt/image/DataBuffer;->offset:I

    .line 24
    new-array p1, p4, [I

    iput-object p1, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    .line 25
    iget-object p2, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    aput p5, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lsun/java2d/StateTrackable$State;III[I)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    array-length v0, p5

    if-ne p4, v0, :cond_0

    .line 29
    invoke-static {p1}, Lsun/java2d/StateTrackableDelegate;->createInstance(Lsun/java2d/StateTrackable$State;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/image/DataBuffer;->theTrackable:Lsun/java2d/StateTrackableDelegate;

    .line 30
    iput p2, p0, Ljava/awt/image/DataBuffer;->dataType:I

    .line 31
    iput p4, p0, Ljava/awt/image/DataBuffer;->banks:I

    .line 32
    iput p3, p0, Ljava/awt/image/DataBuffer;->size:I

    const/4 p1, 0x0

    .line 33
    aget p1, p5, p1

    iput p1, p0, Ljava/awt/image/DataBuffer;->offset:I

    .line 34
    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Number of banks does not match number of bank offsets"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDataTypeSize(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    sget-object v0, Ljava/awt/image/DataBuffer;->dataTypeSize:[I

    aget p0, v0, p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIntArray(Ljava/lang/Object;)[I
    .locals 4

    instance-of v0, p0, [I

    if-eqz v0, :cond_0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    instance-of v1, p0, [S

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p0, [S

    array-length v0, p0

    new-array v0, v0, [I

    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_2

    aget-short v1, p0, v2

    const v3, 0xffff

    and-int/2addr v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    instance-of v1, p0, [B

    if-eqz v1, :cond_4

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [I

    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_4

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getDataType()I
    .locals 0

    iget p0, p0, Ljava/awt/image/DataBuffer;->dataType:I

    return p0
.end method

.method public getElem(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result p0

    return p0
.end method

.method public abstract getElem(II)I
.end method

.method public getElemDouble(I)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/awt/image/DataBuffer;->getElem(I)I

    move-result p0

    int-to-double p0, p0

    return-wide p0
.end method

.method public getElemDouble(II)D
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result p0

    int-to-double p0, p0

    return-wide p0
.end method

.method public getElemFloat(I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/awt/image/DataBuffer;->getElem(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getElemFloat(II)F
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getNumBanks()I
    .locals 0

    iget p0, p0, Ljava/awt/image/DataBuffer;->banks:I

    return p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Ljava/awt/image/DataBuffer;->offset:I

    return p0
.end method

.method public getOffsets()[I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/DataBuffer;->offsets:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Ljava/awt/image/DataBuffer;->size:I

    return p0
.end method

.method public setElem(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Ljava/awt/image/DataBuffer;->setElem(III)V

    return-void
.end method

.method public abstract setElem(III)V
.end method

.method public setElemDouble(ID)V
    .locals 0

    double-to-int p2, p2

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/awt/image/DataBuffer;->setElem(II)V

    return-void
.end method

.method public setElemDouble(IID)V
    .locals 0

    double-to-int p3, p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/image/DataBuffer;->setElem(III)V

    return-void
.end method

.method public setElemFloat(IF)V
    .locals 0

    float-to-int p2, p2

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/awt/image/DataBuffer;->setElem(II)V

    return-void
.end method

.method public setElemFloat(IIF)V
    .locals 0

    float-to-int p3, p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/image/DataBuffer;->setElem(III)V

    return-void
.end method
