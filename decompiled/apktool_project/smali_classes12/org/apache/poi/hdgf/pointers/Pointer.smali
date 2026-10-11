.class public abstract Lorg/apache/poi/hdgf/pointers/Pointer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address:I

.field private format:S

.field private length:I

.field private offset:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destinationCompressed()Z
.end method

.method public abstract destinationHasChunks()Z
.end method

.method public abstract destinationHasPointers()Z
.end method

.method public abstract destinationHasStrings()Z
.end method

.method public getAddress()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->address:I

    return p0
.end method

.method public getFormat()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->format:S

    return p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->length:I

    return p0
.end method

.method public abstract getNumPointers(I[B)I
.end method

.method public abstract getNumPointersOffset([B)I
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->offset:I

    return p0
.end method

.method public abstract getPostNumPointersSkip()I
.end method

.method public abstract getSizeInBytes()I
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->type:I

    return p0
.end method

.method public isFormatBetween(II)Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->format:S

    if-gt p1, p0, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAddress(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->address:I

    return-void
.end method

.method public setFormat(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->format:S

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->length:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->offset:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hdgf/pointers/Pointer;->type:I

    return-void
.end method
