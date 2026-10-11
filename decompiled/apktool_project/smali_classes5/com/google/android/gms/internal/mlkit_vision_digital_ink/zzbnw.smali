.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Class;

.field private final zzb:Ljava/lang/reflect/Type;

.field private final zzc:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 5
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiw;->zzc(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb:Ljava/lang/reflect/Type;

    const/4 p0, 0x0

    .line 8
    throw p0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TypeToken must be created with a type argument: new TypeToken<...>() {}; When using code shrinkers (ProGuard, R8, ...) make sure that generic signatures are preserved."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must only create direct subclasses of TypeToken"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiw;->zzc(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb:Ljava/lang/reflect/Type;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiw;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zza:Ljava/lang/Class;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc:I

    return-void
.end method

.method public static zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb:Ljava/lang/reflect/Type;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiw;->zzg(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

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

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiw;->zzb(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zza:Ljava/lang/Class;

    return-object p0
.end method

.method public final zzd()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb:Ljava/lang/reflect/Type;

    return-object p0
.end method
