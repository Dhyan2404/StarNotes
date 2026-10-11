.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zba(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;->zbe()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;->zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;)V

    :cond_1
    return-object p0
.end method
