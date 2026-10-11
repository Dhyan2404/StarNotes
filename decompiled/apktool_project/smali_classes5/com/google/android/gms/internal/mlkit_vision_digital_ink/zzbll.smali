.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbip;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;

.field private final zze:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zze:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic zzb(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkj;->zza(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnj;->zzd(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;Ljava/lang/Class;ZZ)Ljava/util/Map;
    .locals 40

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v13

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzd()Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v17, p2

    move-object/from16 v12, p3

    move/from16 v0, p4

    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v12, v1, :cond_18

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    const/4 v10, 0x1

    const/4 v9, 0x0

    move-object/from16 v8, p3

    if-eq v12, v8, :cond_3

    array-length v1, v11

    if-lez v1, :cond_3

    iget-object v0, v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zze:Ljava/util/List;

    invoke-static {v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkj;->zze(Ljava/util/List;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move/from16 v18, v10

    goto :goto_1

    :cond_1
    move/from16 v18, v9

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReflectionAccessFilter does not permit using reflection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (supertype of "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Register a TypeAdapter for this type or adjust the access filter."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move/from16 v18, v0

    :goto_1
    array-length v7, v11

    move v6, v9

    :goto_2
    if-ge v6, v7, :cond_17

    aget-object v5, v11, v6

    invoke-direct {v15, v5, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzd(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    invoke-direct {v15, v5, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzd(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    if-nez v0, :cond_5

    if-nez v1, :cond_4

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v36, v9

    move/from16 v37, v10

    move-object/from16 v27, v11

    move-object/from16 p2, v12

    move-object v0, v13

    goto/16 :goto_f

    :cond_4
    move v1, v10

    :cond_5
    const-class v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbir;

    const/16 v19, 0x0

    if-eqz p5, :cond_a

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v20, v9

    goto :goto_4

    :cond_6
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnj;->zzg(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v18, :cond_7

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnj;->zzh(Ljava/lang/reflect/AccessibleObject;)V

    :cond_7
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnj;->zzd(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@SerializedName on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_3
    move/from16 v20, v1

    move-object/from16 v21, v3

    goto :goto_5

    :cond_a
    move/from16 v20, v1

    :goto_4
    move-object/from16 v21, v19

    :goto_5
    if-nez v18, :cond_b

    if-nez v21, :cond_b

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnj;->zzh(Ljava/lang/reflect/AccessibleObject;)V

    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzd()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiw;->zze(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v22

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbir;

    if-nez v1, :cond_c

    iget-object v1, v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;->zzc(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_6
    move-object v4, v1

    goto :goto_7

    :cond_c
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbir;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbir;->zzb()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-nez v3, :cond_d

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_6

    :cond_d
    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move v2, v9

    move-object/from16 v1, v19

    :goto_8
    if-ge v2, v3, :cond_15

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v13

    move-object/from16 v13, v23

    check-cast v13, Ljava/lang/String;

    if-eqz v2, :cond_e

    move/from16 v23, v9

    goto :goto_9

    :cond_e
    move/from16 v23, v10

    :goto_9
    and-int v23, v23, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/Class;

    if-eqz v10, :cond_f

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v25, 0x1

    goto :goto_a

    :cond_f
    const/16 v25, 0x0

    :goto_a
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v26, 0x1

    goto :goto_b

    :cond_10
    const/16 v26, 0x0

    :goto_b
    const-class v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiq;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiq;

    if-eqz v9, :cond_11

    iget-object v10, v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    invoke-static {v10, v14, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbky;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object v9

    goto :goto_c

    :cond_11
    move-object/from16 v9, v19

    :goto_c
    if-eqz v9, :cond_12

    const/4 v10, 0x1

    goto :goto_d

    :cond_12
    const/4 v10, 0x0

    :goto_d
    if-nez v9, :cond_13

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;

    move-result-object v9

    :cond_13
    move-object/from16 v27, v9

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v0

    move-object v0, v9

    move-object v15, v1

    move-object/from16 v1, p0

    move/from16 v30, v2

    move-object v2, v13

    move/from16 v31, v3

    move-object/from16 v3, v28

    move-object/from16 v28, v4

    move/from16 v4, v23

    move-object/from16 v32, v5

    move/from16 v5, v20

    move/from16 v33, v6

    move/from16 v6, v18

    move/from16 v34, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v32

    move-object/from16 v35, v15

    const/16 v36, 0x0

    move-object v15, v9

    move v9, v10

    const/16 v37, 0x1

    move-object/from16 v10, v27

    move-object/from16 v27, v11

    move-object/from16 v11, p1

    move-object/from16 p2, v12

    move-object/from16 v12, v29

    move-object/from16 v39, v13

    move-object/from16 v38, v24

    move/from16 v13, v25

    move/from16 v14, v26

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;ZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;

    if-nez v35, :cond_14

    goto :goto_e

    :cond_14
    move-object/from16 v1, v35

    :goto_e
    add-int/lit8 v2, v30, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v8, p3

    move-object v13, v0

    move/from16 v0, v23

    move-object/from16 v11, v27

    move-object/from16 v4, v28

    move/from16 v3, v31

    move-object/from16 v5, v32

    move/from16 v6, v33

    move/from16 v7, v34

    move/from16 v9, v36

    move/from16 v10, v37

    goto/16 :goto_8

    :cond_15
    move-object/from16 v35, v1

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v36, v9

    move/from16 v37, v10

    move-object/from16 v27, v11

    move-object/from16 p2, v12

    move-object v0, v13

    if-nez v35, :cond_16

    :goto_f
    add-int/lit8 v6, v33, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v8, p3

    move-object v13, v0

    move-object/from16 v11, v27

    move/from16 v7, v34

    move/from16 v9, v36

    move/from16 v10, v37

    goto/16 :goto_2

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v35

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;->zzi:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " declares multiple JSON fields named "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 p2, v12

    move-object v0, v13

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzd()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbiw;->zze(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzb(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v0, v18

    goto/16 :goto_0

    :cond_18
    move-object v0, v13

    return-object v0
.end method

.method private final zzd(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;->zzc(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjs;->zzd(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 10

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zzc()Ljava/lang/Class;

    move-result-object v6

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zze:Ljava/util/List;

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkj;->zze(Ljava/util/List;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnj;->zzi(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblk;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;Ljava/lang/Class;ZZ)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v8, v6, p0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblk;-><init>(Ljava/lang/Class;Ljava/util/Map;Z)V

    return-object v8

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblj;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbll;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;Ljava/lang/Class;ZZ)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v9, v8, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;Ljava/util/Map;)V

    return-object v9

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReflectionAccessFilter does not permit using reflection for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Register a TypeAdapter for this type or adjust the access filter."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;-><init>(Ljava/lang/String;)V

    throw p0
.end method
