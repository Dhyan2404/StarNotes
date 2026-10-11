.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zza:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zzb:Ljava/util/List;

    return-void
.end method

.method public static zzb(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Abstract classes can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zza:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzd()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zza:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhv;

    if-eqz v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjh;

    invoke-direct {p1, p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhv;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zza:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhv;

    if-nez v1, :cond_15

    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_1
    const-class v1, Ljava/util/EnumMap;

    if-ne p1, v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjm;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zzb:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkj;->zze(Ljava/util/List;Ljava/lang/Class;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    :catch_0
    move-object v6, v2

    goto :goto_2

    :cond_4
    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v5, :cond_6

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbki;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbki;

    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbki;->zza(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    if-ne v1, v6, :cond_6

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to invoke no-args constructor of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjn;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjn;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    if-ne v1, v5, :cond_7

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnj;->zze(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjo;

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjo;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    goto :goto_2

    :cond_7
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjp;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjp;-><init>(Ljava/lang/reflect/Constructor;)V

    :goto_2
    if-nez v6, :cond_14

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbix;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbix;-><init>()V

    goto/16 :goto_3

    :cond_8
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiy;-><init>()V

    goto/16 :goto_3

    :cond_9
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiz;-><init>()V

    goto :goto_3

    :cond_a
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbja;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbja;-><init>()V

    goto :goto_3

    :cond_b
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-class v2, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjb;-><init>()V

    goto :goto_3

    :cond_c
    const-class v2, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjc;-><init>()V

    goto :goto_3

    :cond_d
    const-class v2, Ljava/util/SortedMap;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjd;-><init>()V

    goto :goto_3

    :cond_e
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_f

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbje;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbje;-><init>()V

    goto :goto_3

    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjf;-><init>()V

    :cond_10
    :goto_3
    if-eqz v2, :cond_11

    return-object v2

    :cond_11
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zzb(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjj;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Ljava/lang/String;)V

    return-object p1

    :cond_12
    if-ne v1, v5, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Ljava/lang/Class;)V

    return-object v0

    :cond_13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Ljava/lang/String;)V

    return-object v0

    :cond_14
    return-object v6

    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbji;

    invoke-direct {p1, p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbji;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhv;Ljava/lang/reflect/Type;)V

    return-object p1
.end method
