.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;

.field public final synthetic zzb:Lcom/google/mlkit/common/model/RemoteModel;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqf;->zzb:Lcom/google/mlkit/common/model/RemoteModel;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqf;->zzb:Lcom/google/mlkit/common/model/RemoteModel;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzc(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
