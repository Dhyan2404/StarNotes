.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, ""

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzk;
        }
    .end annotation

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "blobstore"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zze(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zzc:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "expiryDateSecs"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzc(Landroid/net/Uri;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;
    .locals 1

    const-string v0, "*.lease"

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".lease"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zzc:J

    return-object p0
.end method
