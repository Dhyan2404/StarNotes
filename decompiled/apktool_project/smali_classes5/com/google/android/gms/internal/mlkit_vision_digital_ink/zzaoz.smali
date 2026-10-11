.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

.field private static final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaow;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaow;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaov;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaov;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;

    return-object v0
.end method


# virtual methods
.method public abstract zza([BLjava/lang/CharSequence;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaox;
        }
    .end annotation
.end method

.method public abstract zzc(I)I
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;
.end method

.method public zze(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzg(Ljava/lang/CharSequence;)[B
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zze(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zzc(I)I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoz;->zza([BLjava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p0, [B

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaox; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
