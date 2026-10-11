.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zba:I

.field private final zbb:I


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x7fff

    if-ge p1, v2, :cond_0

    if-ltz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkj;->zbc(Z)V

    if-ge p2, v2, :cond_1

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkj;->zbc(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zba:I

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zbb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zba:I

    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zba:I

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zbb:I

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zbb:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zba:I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zbb:I

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zba:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zbb:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zba()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zbb:I

    return p0
.end method

.method public final zbb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zba:I

    return p0
.end method
