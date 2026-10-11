.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblm;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbie;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblo;

.field private final zzf:Z

.field private volatile zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbie;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblm;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblo;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbln;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblo;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbie;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzf:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkk;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhy;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzf:Z

    if-eqz v0, :cond_2

    instance-of p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbia;

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzd()Ljava/lang/reflect/Type;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhx;->zza()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method
