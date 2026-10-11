.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbla;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbla;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbla;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblq;

    invoke-direct {p1, p2, p4, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblq;

    invoke-direct {p1, p2, p6, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn()V

    const/4 p0, 0x0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj()V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzq()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzq()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbju;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbju;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbju;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm()V

    :goto_2
    move-object p0, v1

    :goto_3
    return-object p0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method
