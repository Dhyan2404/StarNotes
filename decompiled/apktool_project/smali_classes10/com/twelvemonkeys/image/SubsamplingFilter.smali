.class public Lcom/twelvemonkeys/image/SubsamplingFilter;
.super Ljava/awt/image/ReplicateScaleFilter;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Ljava/awt/image/ReplicateScaleFilter;-><init>(II)V

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    iput p1, p0, Lcom/twelvemonkeys/image/SubsamplingFilter;->e:I

    iput p2, p0, Lcom/twelvemonkeys/image/SubsamplingFilter;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Subsampling factors must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public setDimensions(II)V
    .locals 2

    iget v0, p0, Lcom/twelvemonkeys/image/SubsamplingFilter;->e:I

    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    iput v1, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    iget v0, p0, Lcom/twelvemonkeys/image/SubsamplingFilter;->f:I

    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    iput v1, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    invoke-super {p0, p1, p2}, Ljava/awt/image/ReplicateScaleFilter;->setDimensions(II)V

    return-void
.end method
