.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Comparator;

.field private static final zzb:Ljava/util/Comparator;

.field private static final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzans;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzans;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zza:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzant;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzant;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zzb:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;

    return-object v0
.end method

.method public static bridge synthetic zzb()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zza:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;->hashCode()I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoa;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzany;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
