.class public abstract Ljava/awt/image/LookupTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field numComponents:I

.field numEntries:I

.field offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    iput p2, p0, Ljava/awt/image/LookupTable;->numComponents:I

    iput p1, p0, Ljava/awt/image/LookupTable;->offset:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of components must  be at least 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offset must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getNumComponents()I
    .locals 0

    iget p0, p0, Ljava/awt/image/LookupTable;->numComponents:I

    return p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Ljava/awt/image/LookupTable;->offset:I

    return p0
.end method

.method public abstract lookupPixel([I[I)[I
.end method
