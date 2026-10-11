.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpf;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpe;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpg;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpg;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method


# virtual methods
.method public final zba(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpi;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpf;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zbn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zbi()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpg;->zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpg;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpk;)V

    return-object p0
.end method
