.class public Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I = 0x20

.field public static final c:I = 0x4

.field public static final d:I = 0x200

.field public static final e:I = 0x400

.field public static final f:I = 0x2

.field public static final g:I = 0x400

.field public static final h:I = 0x10

.field public static final i:I = 0x40

.field public static final j:I = 0x80

.field public static final k:I = 0x100

.field public static final l:I = 0x800

.field public static final m:I = 0x1

.field public static final n:I = -0x1ff8


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p1, -0x1ff8

    if-nez v0, :cond_0

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Some unused flags are non-zero"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasAllCodeFlags()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasArchiveFileCounts()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasCPNumberCounts()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasClassFlagsHi()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasCodeFlagsHi()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFieldFlagsHi()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFileModtime()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFileOptions()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFileSizeHi()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasMethodFlagsHi()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSpecialFormats()Z
    .locals 1

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldDeflate()Z
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->a:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
