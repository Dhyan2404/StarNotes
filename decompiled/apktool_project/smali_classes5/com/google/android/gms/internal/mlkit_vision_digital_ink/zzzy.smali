.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzy;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zza()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;->zzr(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzye;->zze(Ljava/io/OutputStream;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;

    return-object p0
.end method
