.class public final synthetic Lcom/google/mlkit/vision/digitalink/internal/zzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/digitalink/internal/zzg;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/digitalink/internal/zzg;

    invoke-direct {v0}, Lcom/google/mlkit/vision/digitalink/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/digitalink/internal/zzg;->zza:Lcom/google/mlkit/vision/digitalink/internal/zzg;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/mlkit/vision/digitalink/internal/zzc;

    const-string p1, "digital-ink-recognition"

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbps;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;)V

    return-object p0
.end method
