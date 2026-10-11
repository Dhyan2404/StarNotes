.class public abstract Lcom/google/mlkit/vision/text/pipeline/zbo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/os/RemoteException;)Lcom/google/mlkit/vision/text/pipeline/zbo;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rcp;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/rcp;-><init>(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;)V

    return-object v0
.end method


# virtual methods
.method public abstract zba()I
.end method

.method public abstract zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
.end method

.method public final zbd()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbc()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
