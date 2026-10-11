.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafl;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzc(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzd(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zze(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    return p0
.end method

.method public final zzf(Ljava/lang/CharSequence;I)I
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-string p1, "index"

    const/4 p2, 0x0

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzb(IILjava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final zzg(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method
