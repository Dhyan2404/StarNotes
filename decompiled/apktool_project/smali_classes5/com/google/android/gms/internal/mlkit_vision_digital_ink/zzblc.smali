.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbil;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;

    move-result-object p0

    return-object p0
.end method

.method private static zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblb;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 p0, 0x8

    if-ne v1, p0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn()V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting number, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; at path "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbim;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Number;

    move-result-object p0

    :goto_0
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
