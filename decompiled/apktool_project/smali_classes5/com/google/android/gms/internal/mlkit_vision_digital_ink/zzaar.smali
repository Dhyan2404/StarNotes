.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaar;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaar;->zzb:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaar;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaar;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaar;->zzb:Ljava/util/List;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaar;->zzc:I

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;->zzd(Ljava/util/List;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
