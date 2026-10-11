.class public Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;


# instance fields
.field protected volatile zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

.field private volatile zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;->zzak()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;->zzak()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsw;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsw;->zza:[B

    array-length p0, p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzM()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzH()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
