.class public final Lcom/sunia/HTREnginev2/hae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/lang/Object;",
        ">;TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/reflect/Constructor;

.field public final f:I

.field public final g:Ljava/util/function/Function;

.field public final h:Ljava/util/function/BiFunction;

.field public final i:[Ljava/lang/Class;

.field public final j:Z

.field public final k:[J

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;[J>;"
        }
    .end annotation
.end field

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/util/List;Ljava/lang/reflect/Constructor;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;",
            "Ljava/lang/reflect/Constructor;",
            "Ljava/util/function/Function;",
            "Ljava/util/function/BiFunction;",
            "Ljava/lang/reflect/Constructor;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, v0, Lcom/sunia/HTREnginev2/hae;->j:Z

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/sunia/HTREnginev2/hae;->g:Ljava/util/function/Function;

    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/sunia/HTREnginev2/hae;->h:Ljava/util/function/BiFunction;

    if-eqz v5, :cond_1

    move-object/from16 v5, p5

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    iput-object v5, v0, Lcom/sunia/HTREnginev2/hae;->e:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v5

    iput v5, v0, Lcom/sunia/HTREnginev2/hae;->f:I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    iput-object v5, v0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    array-length v5, v5

    new-array v5, v5, [J

    iput-object v5, v0, Lcom/sunia/HTREnginev2/hae;->k:[J

    move v5, v3

    :goto_2
    iget-object v6, v0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    array-length v6, v6

    if-ge v5, v6, :cond_4

    array-length v6, v2

    if-ge v5, v6, :cond_2

    aget-object v6, v2, v5

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    iget-object v7, v0, Lcom/sunia/HTREnginev2/hae;->k:[J

    invoke-static {v6}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_9

    new-instance v2, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Lcom/sunia/HTREnginev2/hae;->l:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Lcom/sunia/HTREnginev2/hae;->m:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Lcom/sunia/HTREnginev2/hae;->o:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Lcom/sunia/HTREnginev2/hae;->n:Ljava/util/Map;

    move v2, v3

    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->lookupParameterNames(Ljava/lang/reflect/Constructor;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    new-instance v14, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct {v14}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    sget-object v15, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v16

    move v11, v3

    :goto_5
    array-length v6, v13

    if-ge v2, v6, :cond_6

    array-length v6, v12

    if-ge v11, v6, :cond_6

    invoke-virtual {v14}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    move-object v6, v15

    move-object v7, v14

    move-object v9, v5

    move v10, v11

    move/from16 v17, v11

    move-object/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;I[[Ljava/lang/annotation/Annotation;)V

    iget-object v6, v14, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-eqz v6, :cond_5

    aput-object v6, v12, v17

    :cond_5
    add-int/lit8 v11, v17, 0x1

    goto :goto_5

    :cond_6
    array-length v6, v12

    new-array v6, v6, [J

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    array-length v9, v12

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(I)V

    move v9, v3

    :goto_6
    array-length v10, v12

    if-ge v9, v10, :cond_8

    aget-object v10, v12, v9

    if-nez v10, :cond_7

    const-wide/16 v10, 0x0

    goto :goto_7

    :cond_7
    invoke-static {v10}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v10

    :goto_7
    aput-wide v10, v6, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    iget-object v9, v0, Lcom/sunia/HTREnginev2/hae;->l:Ljava/util/Map;

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hae;->m:Ljava/util/Map;

    invoke-interface {v5, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hae;->n:Ljava/util/Map;

    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/sunia/HTREnginev2/hae;->o:Ljava/util/Map;

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_9
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/hae;->k:[J

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    const-string v2, "invoke constructor error, "

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hae;->l:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/hae;->l:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/sunia/HTREnginev2/hae;->n:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hae;->o:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    array-length v1, v4

    new-array v1, v1, [Ljava/lang/Object;

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-wide v5, v4, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aget-object v6, p0, v0

    if-nez v5, :cond_2

    invoke-static {v6}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    :cond_2
    aput-object v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    iget-object v1, p0, Lcom/sunia/HTREnginev2/hae;->g:Ljava/util/function/Function;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    array-length v1, v1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hae;->k:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    aget-object v0, v1, v0

    if-nez p1, :cond_5

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object p1

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/hae;->g:Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object v1, p0, Lcom/sunia/HTREnginev2/hae;->h:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    array-length v1, v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hae;->k:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    aget-object v0, v2, v0

    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-static {v1, v0, v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object v1

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/hae;->k:[J

    aget-wide v2, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    aget-object v0, v0, v4

    if-nez p1, :cond_a

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object p1

    :cond_b
    :goto_5
    iget-object p0, p0, Lcom/sunia/HTREnginev2/hae;->h:Ljava/util/function/BiFunction;

    invoke-interface {p0, v1, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    iget-object v1, p0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    array-length v1, v1

    iget v3, p0, Lcom/sunia/HTREnginev2/hae;->f:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/sunia/HTREnginev2/hae;->j:Z

    if-eqz v5, :cond_11

    move v5, v0

    move v6, v5

    :goto_6
    if-ge v5, v1, :cond_16

    iget-object v7, p0, Lcom/sunia/HTREnginev2/hae;->k:[J

    aget-wide v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_d

    aput-object v7, v3, v5

    goto :goto_7

    :cond_d
    shl-int v7, v4, v5

    or-int/2addr v6, v7

    iget-object v7, p0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {v7}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v5

    :cond_e
    :goto_7
    add-int/lit8 v7, v5, 0x1

    rem-int/lit8 v8, v7, 0x20

    if-eqz v8, :cond_f

    if-ne v7, v1, :cond_10

    :cond_f
    div-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    move v6, v0

    :cond_10
    move v5, v7

    goto :goto_6

    :cond_11
    :goto_8
    if-ge v0, v1, :cond_16

    iget-object v4, p0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/sunia/HTREnginev2/hae;->k:[J

    aget-wide v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_12

    invoke-static {v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_9

    :cond_12
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-static {v5, v4, v6}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_9

    :cond_13
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_14

    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    iget-object v4, p0, Lcom/sunia/HTREnginev2/hae;->e:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v6, v4

    iget-object v7, p0, Lcom/sunia/HTREnginev2/hae;->i:[Ljava/lang/Class;

    array-length v7, v7

    if-ne v6, v7, :cond_15

    aget-object v4, v4, v0

    invoke-static {v5, v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    :cond_15
    :goto_9
    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    :try_start_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/hae;->e:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hae;->e:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/hae;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
