.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;->zzx(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;)V

    return-void
.end method
