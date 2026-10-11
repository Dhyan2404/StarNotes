.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:J

.field public final c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>([BJLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->a:[B

    iput-wide p2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->b:J

    iput-object p4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    iput p5, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->d:I

    iput p6, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->e:I

    return-void
.end method


# virtual methods
.method public final zba()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->b:J

    return-wide v0
.end method

.method public final zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    return-object p0
.end method

.method public final zbc()[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->a:[B

    return-object p0
.end method

.method public final zbd()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->d:I

    return p0
.end method

.method public final zbe()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->e:I

    return p0
.end method
