.class public Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/digitalink/Ink$Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/mlkit/vision/digitalink/zzm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/google/mlkit/vision/digitalink/Ink$Point;)Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/Ink$Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    return-object p0
.end method

.method public build()Lcom/google/mlkit/vision/digitalink/Ink$Stroke;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/vision/digitalink/d;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/mlkit/vision/digitalink/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method
