.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
.source "SourceFile"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zza:I

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzb:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzd(II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;->zzj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zza:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzb:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zzd(II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzi(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zza:I

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzd(II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;->zzj()I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zza:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zzm()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzn()[Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;->zzn()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
