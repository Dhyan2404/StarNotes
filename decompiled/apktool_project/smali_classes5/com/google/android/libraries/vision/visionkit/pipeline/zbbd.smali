.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:J

.field public c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zba([B)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->a:[B

    return-object p0
.end method

.method public final zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    return-object p0
.end method

.method public final zbc(J)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->b:J

    return-object p0
.end method

.method public final zbd()Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;
    .locals 8

    new-instance v7, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;

    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->a:[B

    iget-wide v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->b:J

    iget-object v4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    iget v5, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->d:I

    iget v6, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->e:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;-><init>([BJLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;II)V

    return-object v7
.end method

.method public final zbe(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->d:I

    return-object p0
.end method

.method public final zbf(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->e:I

    return-object p0
.end method
