.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmi;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmi;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
