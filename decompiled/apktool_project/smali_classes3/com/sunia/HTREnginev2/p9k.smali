.class public Lcom/sunia/HTREnginev2/p9k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/reflect/Type;

.field public final d:Ljava/lang/reflect/Type;

.field public final e:Ljava/lang/Class;

.field public final f:J

.field public final g:Ljava/util/function/Function;

.field public final h:Ljava/lang/reflect/Constructor;

.field public i:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field public j:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    move-object p3, v1

    :cond_0
    iput-object p1, p0, Lcom/sunia/HTREnginev2/p9k;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/p9k;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/p9k;->c:Ljava/lang/reflect/Type;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    invoke-static {p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p9k;->e:Ljava/lang/Class;

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/p9k;->f:J

    iput-object p7, p0, Lcom/sunia/HTREnginev2/p9k;->g:Ljava/util/function/Function;

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object p4, p1, p3

    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result p5

    invoke-static {p5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p5

    if-nez p5, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object v1, p4

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/sunia/HTREnginev2/p9k;->h:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/sunia/HTREnginev2/p9k;->b:Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_1

    .line 39
    :try_start_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/p9k;->h:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/p9k;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "create map error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 43
    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 2
    iget-object v1, p0, Lcom/sunia/HTREnginev2/p9k;->b:Ljava/lang/Class;

    const-class v2, Ljava/util/Map;

    if-eq v1, v2, :cond_1

    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/sunia/HTREnginev2/p9k;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 9
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->c:Ljava/lang/reflect/Type;

    if-eqz v4, :cond_3

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 11
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v2, :cond_11

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 13
    iget-object v5, p0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    const-class v6, Ljava/lang/Object;

    if-ne v5, v6, :cond_4

    goto/16 :goto_6

    .line 14
    :cond_4
    const-class v5, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v4, v5, :cond_f

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_5

    goto/16 :goto_5

    .line 15
    :cond_5
    const-class v5, Lcom/alibaba/fastjson2/JSONArray;

    if-eq v4, v5, :cond_6

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONArray1x()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_8

    :cond_6
    iget-object v5, p0, Lcom/sunia/HTREnginev2/p9k;->e:Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    if-ne v5, v6, :cond_8

    .line 16
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v4, :cond_7

    .line 17
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    iput-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 18
    :cond_7
    :try_start_0
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-object v5, v2

    check-cast v5, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 19
    :cond_8
    iget-object v5, p0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 20
    invoke-interface {v5, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    .line 21
    :cond_9
    instance-of v5, v2, Ljava/util/Map;

    if-eqz v5, :cond_b

    .line 22
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    .line 23
    iget-object v5, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v5, :cond_a

    .line 24
    iget-object v5, p0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    iput-object v5, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 25
    :cond_a
    :try_start_1
    iget-object v5, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-interface {v5, v4, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 26
    :cond_b
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_d

    .line 27
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v4, :cond_c

    .line 28
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    iput-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 29
    :cond_c
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    .line 30
    :cond_d
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_6

    .line 31
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can not convert from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_f
    :goto_5
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v4, :cond_10

    .line 33
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    iput-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 34
    :cond_10
    :try_start_2
    iget-object v4, p0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-object v5, v2

    check-cast v5, Lcom/alibaba/fastjson2/JSONObject;

    invoke-interface {v4, v5, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    :catch_0
    :cond_11
    :goto_6
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 36
    :cond_12
    iget-object p0, p0, Lcom/sunia/HTREnginev2/p9k;->g:Ljava/util/function/Function;

    if-eqz p0, :cond_13

    .line 37
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v1
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p9k;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v0, Lcom/sunia/HTREnginev2/p9k;->g:Ljava/util/function/Function;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v1

    const/16 v2, -0x6e

    const/4 v9, 0x0

    if-ne v1, v2, :cond_0

    iget-object v2, v0, Lcom/sunia/HTREnginev2/p9k;->a:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    iget-wide v5, v0, Lcom/sunia/HTREnginev2/p9k;->f:J

    or-long v5, v5, p4

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Ljava/util/function/Function;

    move-result-object v8

    instance-of v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/sunia/HTREnginev2/p9k;

    if-nez v2, :cond_1

    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v9

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v2

    const/16 v3, -0x51

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    return-object v9

    :cond_2
    const/16 v3, -0x5a

    if-ne v2, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :cond_3
    iget-object v10, v7, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long v11, p4, v2

    if-eqz v1, :cond_4

    invoke-interface {v1, v11, v12}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_0
    move-object v13, v1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->b:Ljava/lang/Class;

    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_5
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :goto_1
    const/4 v14, 0x0

    move v15, v14

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v1

    const/16 v2, -0x5b

    if-ne v1, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    if-eqz v8, :cond_6

    invoke-interface {v8, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v13

    :cond_7
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->c:Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/fastjson2/util/ReferenceKey;

    invoke-direct {v2, v15}, Lcom/alibaba/fastjson2/util/ReferenceKey;-><init>(I)V

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v1

    invoke-virtual {v7, v13, v2, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->j:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->c:Ljava/lang/reflect/Type;

    if-eqz v1, :cond_a

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->j:Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_a
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->j:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_c
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v13, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_d
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v1

    invoke-virtual {v7, v13, v5, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    instance-of v1, v13, Ljava/util/concurrent/ConcurrentMap;

    if-nez v1, :cond_15

    invoke-interface {v13, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v13, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_f
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    const-wide/16 v16, 0x0

    if-ne v1, v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 p2, v5

    goto :goto_6

    :cond_10
    iget-object v2, v0, Lcom/sunia/HTREnginev2/p9k;->e:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 p2, v5

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_11

    if-eq v1, v0, :cond_11

    iget-object v3, v0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_11
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_13

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v11

    cmp-long v1, v1, v16

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_5

    :cond_12
    move v1, v14

    :goto_5
    iget-object v2, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_13
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_14

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v11

    cmp-long v2, v2, v16

    if-eqz v2, :cond_14

    goto :goto_7

    :cond_14
    move-object/from16 v2, p2

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v11

    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'{\', but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v12

    :goto_0
    iget-object v13, v7, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v13, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long v14, v2, v8

    iget-object v2, v0, Lcom/sunia/HTREnginev2/p9k;->b:Ljava/lang/Class;

    const-class v3, Ljava/util/HashMap;

    if-ne v2, v3, :cond_4

    invoke-virtual {v13}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectSupplier()Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v3, v0, Lcom/sunia/HTREnginev2/p9k;->a:Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getInnerMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v3, v11

    :goto_1
    move/from16 v16, v1

    move-object v5, v2

    move-object v6, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v14, v15}, Lcom/sunia/HTREnginev2/p9k;->createInstance(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move/from16 v16, v1

    move-object v5, v2

    move-object v6, v11

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_b

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1

    const-string v2, "illegal json"

    const/16 v4, 0x3a

    const-wide/16 v17, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v10, v5

    move-object v12, v11

    move-object v11, v6

    goto/16 :goto_6

    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->c:Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v1

    if-nez v16, :cond_8

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v10, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v14

    cmp-long v3, v10, v17

    if-eqz v3, :cond_8

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getTypeKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    iget-object v4, v0, Lcom/sunia/HTREnginev2/p9k;->a:Ljava/lang/Class;

    move-object/from16 v1, p1

    move-object v10, v5

    move-object v11, v6

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_16

    instance-of v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    if-eqz v2, :cond_16

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    iget-object v3, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->d:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface {v1, v8, v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_3
    move-object v5, v1

    goto/16 :goto_a

    :cond_8
    move-object v10, v5

    move-object v11, v6

    if-nez v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    move-object v12, v1

    goto/16 :goto_6

    :cond_b
    move-object v10, v5

    move-object v11, v6

    if-nez v16, :cond_e

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_e

    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->c:Ljava/lang/reflect/Type;

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_c

    const-class v2, Ljava/lang/Enum;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getTypeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    iget-object v4, v0, Lcom/sunia/HTREnginev2/p9k;->a:Ljava/lang/Class;

    move-object/from16 v1, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_16

    instance-of v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    if-eqz v2, :cond_16

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    iget-object v3, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->d:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface {v1, v8, v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_3

    :cond_d
    iget-object v2, v0, Lcom/sunia/HTREnginev2/p9k;->c:Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_e
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->j:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v1, :cond_f

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v2, p1

    move v6, v4

    move-object v4, v5

    move v12, v6

    move-wide/from16 v5, v19

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_f
    move v12, v4

    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    :goto_5
    if-nez v16, :cond_10

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v14

    cmp-long v2, v2, v17

    if-eqz v2, :cond_10

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getTypeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    goto/16 :goto_4

    :goto_6
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_12

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v14

    cmp-long v1, v1, v17

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    :goto_7
    iget-object v2, v13, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_12
    iget-object v1, v0, Lcom/sunia/HTREnginev2/p9k;->i:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/p9k;->d:Ljava/lang/reflect/Type;

    const-wide/16 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v14

    cmp-long v2, v2, v17

    if-eqz v2, :cond_13

    goto :goto_9

    :cond_13
    if-eqz v11, :cond_14

    invoke-interface {v11, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    :cond_14
    invoke-interface {v10, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_8
    if-eqz v2, :cond_16

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v14

    cmp-long v3, v3, v17

    if-eqz v3, :cond_16

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_15

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_15
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v1

    invoke-interface {v10, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_9
    move-object v5, v10

    :goto_a
    add-int/lit8 v16, v16, 0x1

    move-object v6, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_17
    :goto_b
    move-object v10, v5

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    iget-object v0, v0, Lcom/sunia/HTREnginev2/p9k;->g:Ljava/util/function/Function;

    if-eqz v0, :cond_18

    invoke-interface {v0, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_18
    return-object v10
.end method
