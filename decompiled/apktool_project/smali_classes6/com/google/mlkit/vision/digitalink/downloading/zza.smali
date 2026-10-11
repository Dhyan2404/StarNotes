.class public final Lcom/google/mlkit/vision/digitalink/downloading/zza;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# instance fields
.field public final a:Lcom/google/mlkit/vision/digitalink/internal/zzc;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    move-object v0, v6

    move-object v2, v7

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->zzg(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->zzg(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->c:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzs:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzt:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->zzg(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;-><init>()V

    const-class v0, Lcom/google/mlkit/vision/digitalink/internal/zzc;

    invoke-virtual {p1, v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/digitalink/internal/zzc;

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->a:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    return-void
.end method

.method public static zzb()Lcom/google/mlkit/vision/digitalink/downloading/zza;
    .locals 2

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/vision/digitalink/downloading/zza;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/digitalink/downloading/zza;

    return-object v0
.end method


# virtual methods
.method public final zza(ZJ)V
    .locals 1

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->a:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    const/16 v0, 0x13a

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/internal/zzc;->zzc(I)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p2, p3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    return-void
.end method

.method public final zzc(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;J)V
    .locals 1

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->a:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    const/16 v0, 0x13a

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/internal/zzc;->zzc(I)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzm:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p3, p4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    return-void
.end method

.method public final zzd(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;J)V
    .locals 1

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->a:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    const/16 v0, 0x13a

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/internal/zzc;->zzc(I)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p2, p3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    return-void
.end method

.method public final zze(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/mlkit/common/model/DownloadConditions;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Ljava/util/List;J)V
    .locals 0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/mlkit/vision/digitalink/downloading/zza;->b:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    :cond_1
    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->a:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    const/16 p3, 0x13a

    invoke-virtual {p0, p3}, Lcom/google/mlkit/vision/digitalink/internal/zzc;->zzc(I)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p5, p6}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzb(Ljava/util/List;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    :cond_2
    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    return-void
.end method

.method public final zzf(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/mlkit/common/model/DownloadConditions;)V
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->a:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    const/16 p2, 0x13a

    invoke-virtual {p0, p2}, Lcom/google/mlkit/vision/digitalink/internal/zzc;->zzc(I)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    move-result-object p0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzM:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {p0, p2}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    return-void
.end method

.method public final zzg(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;J)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    :cond_1
    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->a:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    const/16 v0, 0x13a

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/internal/zzc;->zzc(I)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p3, p4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    return-void
.end method

.method public final zzh(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;J)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    :cond_1
    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zza;->a:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    const/16 v0, 0x13a

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/internal/zzc;->zzc(I)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0, p3, p4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    return-void
.end method
