.class public final Lcom/sunia/HTREnginev2/iop;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/mlkit/vision/digitalink/zzk;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboi;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboi;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbof; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbog; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboi;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboi;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/digitalink/internal/zzn;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/iop;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/mlkit/vision/digitalink/internal/zzn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sunia/HTREnginev2/iop;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboi;->zze()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboi;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbok;->zza(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    throw v2

    :cond_1
    invoke-static {v0}, Lcom/google/mlkit/vision/digitalink/internal/zzn;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sunia/HTREnginev2/iop;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/mlkit/vision/digitalink/internal/zzn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/iop;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboi;->zzd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboi;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboj;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    iput-object p2, p0, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "x"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafu;->zzb(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iop;->f:Ljava/lang/String;

    return-void

    :cond_3
    iput-object v2, p0, Lcom/sunia/HTREnginev2/iop;->f:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Lcom/google/mlkit/common/MlKitException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid language code in BCP 47 language tag \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method public static bridge synthetic a(Lcom/sunia/HTREnginev2/iop;Lcom/sunia/HTREnginev2/iop;)I
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iop;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/sunia/HTREnginev2/iop;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/sunia/HTREnginev2/iop;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/iop;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/iop;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, p1, Lcom/sunia/HTREnginev2/iop;->b:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lcom/sunia/HTREnginev2/iop;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/iop;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v4, p1, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    if-eqz v4, :cond_5

    :cond_4
    if-eqz v3, :cond_7

    iget-object v4, p1, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    add-int/lit8 v0, v0, 0x4

    :cond_6
    :goto_2
    move v2, v0

    goto :goto_3

    :cond_7
    iget-object v3, p1, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto :goto_4

    :goto_3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/iop;->f:Ljava/lang/String;

    if-nez p0, :cond_9

    iget-object v0, p1, Lcom/sunia/HTREnginev2/iop;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    :cond_9
    if-eqz p0, :cond_b

    iget-object p1, p1, Lcom/sunia/HTREnginev2/iop;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    add-int/2addr v2, v1

    :cond_b
    :goto_4
    return v2
.end method

.method public static bridge synthetic b(Lcom/sunia/HTREnginev2/iop;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iop;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sunia/HTREnginev2/iop;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iop;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sunia/HTREnginev2/iop;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sunia/HTREnginev2/iop;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iop;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/sunia/HTREnginev2/iop;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/sunia/HTREnginev2/iop;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iop;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/sunia/HTREnginev2/iop;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iop;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/sunia/HTREnginev2/iop;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iop;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/sunia/HTREnginev2/iop;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iop;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/sunia/HTREnginev2/iop;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iop;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/iop;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 8

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iop;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/iop;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/iop;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/iop;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/iop;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/sunia/HTREnginev2/iop;->f:Ljava/lang/String;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
