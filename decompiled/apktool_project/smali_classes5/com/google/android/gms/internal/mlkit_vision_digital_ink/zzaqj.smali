.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqj;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqj;->zzc:I

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;->zzw(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;I)V

    return-void
.end method
