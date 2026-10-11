.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;

.field public final synthetic zzb:Lcom/google/mlkit/common/model/RemoteModel;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;Lcom/google/mlkit/common/model/RemoteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpw;->zzb:Lcom/google/mlkit/common/model/RemoteModel;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpw;->zzb:Lcom/google/mlkit/common/model/RemoteModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzn(Lcom/google/mlkit/common/model/RemoteModel;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
