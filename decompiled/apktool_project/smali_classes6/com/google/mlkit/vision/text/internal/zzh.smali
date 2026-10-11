.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;


# instance fields
.field public final synthetic zza:Landroid/graphics/Matrix;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzh;->zza:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    sget v0, Lcom/sunia/HTREnginev2/inp;->c:I

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/afp;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;)Ljava/util/List;

    move-result-object v4

    new-instance v0, Lcom/google/mlkit/vision/text/Text$Line;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zze:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzy;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zze:Ljava/lang/String;

    :goto_0
    move-object v2, v1

    invoke-static {v4}, Lcom/sunia/HTREnginev2/afp;->a(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzg:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzy;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "und"

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzg:Ljava/lang/String;

    :goto_1
    move-object v5, v1

    iget-object v6, p0, Lcom/google/mlkit/vision/text/internal/zzh;->zza:Landroid/graphics/Matrix;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zza:[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzr;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/google/mlkit/vision/text/internal/zzj;

    invoke-direct {v1, v6}, Lcom/google/mlkit/vision/text/internal/zzj;-><init>(Landroid/graphics/Matrix;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/List;

    move-result-object v7

    iget v8, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzf:F

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    iget v9, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zze:F

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/mlkit/vision/text/Text$Line;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Landroid/graphics/Matrix;Ljava/util/List;FF)V

    return-object v0
.end method
