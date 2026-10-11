.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznv;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    sget p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method
