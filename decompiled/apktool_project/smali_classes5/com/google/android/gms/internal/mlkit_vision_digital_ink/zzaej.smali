.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaej;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaej;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaej;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, " -> "

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaej;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
