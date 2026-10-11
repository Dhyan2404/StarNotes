.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznt;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznt;

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

    check-cast p1, Ljava/io/IOException;

    sget p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zza:I

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Failed to update days since last maintenance"

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object p0

    return-object p0
.end method
