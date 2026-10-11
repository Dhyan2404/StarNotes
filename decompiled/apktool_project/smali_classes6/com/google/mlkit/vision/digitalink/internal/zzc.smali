.class public final Lcom/google/mlkit/vision/digitalink/internal/zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Random;


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/digitalink/internal/zzc;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzc;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/mlkit/vision/digitalink/internal/zzc;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzc;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/util/Random;
    .locals 1

    sget-object v0, Lcom/google/mlkit/vision/digitalink/internal/zzc;->b:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public final zzc(I)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    .locals 2

    new-instance p1, Lcom/google/mlkit/vision/digitalink/internal/zzb;

    const/16 v0, 0x13a

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;-><init>(Lcom/google/mlkit/vision/digitalink/internal/zzc;ILcom/google/mlkit/vision/digitalink/internal/zza;)V

    return-object p1
.end method
