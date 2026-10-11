.class public final Lorg/apache/commons/compress/compressors/lz77support/Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    }
.end annotation


# static fields
.field public static final TRUE_MIN_BACK_REFERENCE_LENGTH:I = 0x3


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(IIIIIIIZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->a:I

    .line 4
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->b:I

    .line 5
    iput p3, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->c:I

    .line 6
    iput p4, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->d:I

    .line 7
    iput p5, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->e:I

    .line 8
    iput p6, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->f:I

    .line 9
    iput p7, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->g:I

    .line 10
    iput-boolean p8, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->i:Z

    .line 11
    iput p9, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->h:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIIZILorg/apache/commons/compress/compressors/lz77support/Parameters$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;-><init>(IIIIIIIZI)V

    return-void
.end method

.method public static synthetic a(I)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->b(I)Z

    move-result p0

    return p0
.end method

.method public static b(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static builder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;-><init>(ILorg/apache/commons/compress/compressors/lz77support/Parameters$a;)V

    return-object v0
.end method


# virtual methods
.method public getLazyMatching()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->i:Z

    return p0
.end method

.method public getLazyMatchingThreshold()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->h:I

    return p0
.end method

.method public getMaxBackReferenceLength()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->c:I

    return p0
.end method

.method public getMaxCandidates()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->g:I

    return p0
.end method

.method public getMaxLiteralLength()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->e:I

    return p0
.end method

.method public getMaxOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->d:I

    return p0
.end method

.method public getMinBackReferenceLength()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->b:I

    return p0
.end method

.method public getNiceBackReferenceLength()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->f:I

    return p0
.end method

.method public getWindowSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->a:I

    return p0
.end method
