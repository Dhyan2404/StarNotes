.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
