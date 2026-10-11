.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaby;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaby;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;-><init>()V

    return-void
.end method

.method public static bridge synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaby;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacr;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzg()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p5

    invoke-static {p5, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacy;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacy;

    move-result-object v3

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zza()Landroid/net/Uri;

    move-result-object p5

    invoke-static {p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;

    move-result-object v7

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabc;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;)V

    return-object p0
.end method
