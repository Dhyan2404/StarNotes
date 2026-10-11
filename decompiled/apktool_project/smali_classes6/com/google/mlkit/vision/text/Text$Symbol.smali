.class public Lcom/google/mlkit/vision/text/Text$Symbol;
.super Lcom/google/mlkit/vision/text/Text$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/text/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Symbol"
.end annotation


# instance fields
.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;->zzc()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;->zze()Ljava/util/List;

    move-result-object v3

    const-string v4, ""

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/text/Text$a;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;->zzb()F

    move-result p2

    iput p2, p0, Lcom/google/mlkit/vision/text/Text$Symbol;->e:F

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;->zza()F

    move-result p1

    iput p1, p0, Lcom/google/mlkit/vision/text/Text$Symbol;->f:F

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/text/Text$Symbol;->f:F

    return p0
.end method

.method public getConfidence()F
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/text/Text$Symbol;->e:F

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/Text$a;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
