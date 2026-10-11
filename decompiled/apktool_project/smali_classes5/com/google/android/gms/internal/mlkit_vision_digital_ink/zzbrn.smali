.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;


# instance fields
.field volatile zzb:Ljava/lang/Thread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
