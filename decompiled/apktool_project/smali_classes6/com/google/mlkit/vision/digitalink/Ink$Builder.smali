.class public Lcom/google/mlkit/vision/digitalink/Ink$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/digitalink/Ink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/digitalink/Ink$Builder;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/digitalink/Ink$Builder;->b:Z

    return-void
.end method


# virtual methods
.method public addStroke(Lcom/google/mlkit/vision/digitalink/Ink$Stroke;)Lcom/google/mlkit/vision/digitalink/Ink$Builder;
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/Ink$Stroke;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/Ink$Builder;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/mlkit/vision/digitalink/Ink$Builder;->b:Z

    return-object p0
.end method

.method public build()Lcom/google/mlkit/vision/digitalink/Ink;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/vision/digitalink/b;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/Ink$Builder;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/mlkit/vision/digitalink/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/mlkit/vision/digitalink/Ink$Builder;->b:Z

    return p0
.end method
