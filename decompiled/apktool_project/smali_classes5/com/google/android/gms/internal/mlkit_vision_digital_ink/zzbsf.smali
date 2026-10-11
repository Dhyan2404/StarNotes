.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;->zzal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzd:[B

    array-length v1, p1

    invoke-static {p1, v0, v0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzH([BIIZ)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtd;

    const/16 v2, 0x1000

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtd;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtc;)V

    move-object p1, v1

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzz(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    throw p1
.end method

.method public zzb([BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final synthetic zzc(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    return-object p0
.end method

.method public final synthetic zzd(Ljava/io/InputStream;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    return-object p0
.end method

.method public final synthetic zze([BLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zzb([BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    return-object p0
.end method

.method public final synthetic zzf([BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zzb([BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsf;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    return-object p0
.end method
