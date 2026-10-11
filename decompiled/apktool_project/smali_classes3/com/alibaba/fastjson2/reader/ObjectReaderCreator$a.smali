.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/lang/Class;

.field public final f:Ljava/lang/reflect/Type;

.field public final g:Ljava/lang/String;

.field public final h:[Ljava/lang/String;

.field public final i:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final j:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field public final synthetic m:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/util/Map;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Lcom/alibaba/fastjson2/codec/FieldInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ">;",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->m:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->e:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->f:Ljava/lang/reflect/Type;

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->h:[Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->i:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->l:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Ljava/lang/reflect/Method;

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-wide v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->i:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-wide v5, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    or-long/2addr v2, v5

    iput-wide v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v2, v4, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->l:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->e:Ljava/lang/Class;

    invoke-virtual {v2, v1, v3, v15}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-boolean v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v1, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v14, 0x0

    if-nez v1, :cond_9

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "set"

    invoke-virtual {v1, v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->g:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    if-nez v5, :cond_2

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->e:Ljava/lang/Class;

    invoke-static {v5, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->g:Ljava/lang/String;

    invoke-static {v15, v14, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v14

    :goto_1
    if-ne v1, v3, :cond_4

    const/16 v6, 0x61

    if-lt v5, v6, :cond_4

    const/16 v6, 0x7a

    if-le v5, v6, :cond_5

    :cond_4
    if-le v1, v2, :cond_8

    const/16 v6, 0x41

    if-lt v5, v6, :cond_8

    const/16 v7, 0x5a

    if-gt v5, v7, :cond_8

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_8

    if-gt v5, v7, :cond_8

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    if-ne v1, v3, :cond_6

    aget-char v6, v5, v14

    add-int/lit8 v6, v6, -0x20

    int-to-char v6, v6

    aput-char v6, v5, v14

    goto :goto_2

    :cond_6
    aget-char v6, v5, v14

    add-int/lit8 v6, v6, 0x20

    int-to-char v6, v6

    aput-char v6, v5, v14

    :goto_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    iget-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->e:Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    if-ne v1, v3, :cond_8

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v4

    :cond_9
    :goto_3
    move-object v13, v1

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->h:[Ljava/lang/String;

    if-eqz v1, :cond_c

    array-length v1, v1

    if-lez v1, :cond_c

    move v1, v14

    :goto_4
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->h:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_b

    aget-object v4, v4, v1

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput v1, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    move v1, v3

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    move v1, v14

    :goto_5
    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget v4, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    if-nez v4, :cond_c

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->h:[Ljava/lang/String;

    array-length v4, v4

    iput v4, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    :cond_c
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v4, v1

    if-nez v4, :cond_f

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->m:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->e:Ljava/lang/Class;

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->f:Ljava/lang/reflect/Type;

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget v5, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    iget-wide v6, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v8, 0x100000000000000L

    or-long/2addr v6, v8

    iget-object v8, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    iget-object v9, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    iget-object v10, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/codec/FieldInfo;->getInitReader()Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v14

    move-object v4, v13

    move-object/from16 v16, v13

    move-object v13, v15

    invoke-virtual/range {v1 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    move-object/from16 v13, v16

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/reader/FieldReader;

    if-nez v2, :cond_d

    iget-object v0, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->compareTo(Lcom/alibaba/fastjson2/reader/FieldReader;)I

    move-result v2

    if-lez v2, :cond_e

    iget-object v0, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_6
    return-void

    :cond_f
    if-ne v4, v2, :cond_10

    aget-object v4, v1, v3

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v2, v1, v3

    invoke-virtual {v15, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v9, Lcom/sunia/HTREnginev2/iag;

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget v5, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    iget-wide v6, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v8, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    move-object v1, v9

    move-object v3, v4

    move v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-object v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/sunia/HTREnginev2/iag;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Method;)V

    iget-object v0, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    iget-object v1, v9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_10
    aget-object v12, v1, v14

    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_12

    const-class v1, Ljava/lang/String;

    if-eq v12, v1, :cond_12

    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    :cond_11
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v14

    goto :goto_8

    :cond_12
    :goto_7
    move-object v1, v12

    :goto_8
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_14

    const-class v2, Ljava/util/Collection;

    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->e:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    move v4, v14

    :goto_9
    array-length v5, v2

    if-ge v4, v5, :cond_14

    aget-object v5, v2, v4

    invoke-static {v5, v15}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    array-length v6, v5

    if-ne v6, v3, :cond_13

    aget-object v5, v5, v14

    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_13

    move-object v1, v5

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_14
    move-object v11, v1

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->l:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-static {v1, v11, v12, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->e(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/FieldInfo;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v16

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->m:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->e:Ljava/lang/Class;

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->f:Ljava/lang/reflect/Type;

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget v5, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    iget-wide v6, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v8, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    iget-object v9, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    iget-object v10, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    move-object v4, v13

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v13, v15

    move/from16 v20, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v1 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    move-object/from16 v14, v19

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/reader/FieldReader;

    if-nez v2, :cond_15

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    invoke-interface {v2, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_15
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->compareTo(Lcom/alibaba/fastjson2/reader/FieldReader;)I

    move-result v2

    if-lez v2, :cond_16

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    invoke-interface {v2, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_a
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-object v13, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    if-eqz v13, :cond_19

    array-length v12, v13

    move/from16 v11, v20

    :goto_b
    if-ge v11, v12, :cond_19

    aget-object v10, v13, v11

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_c

    :cond_17
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/FieldReader;

    if-nez v1, :cond_18

    iget-object v9, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->k:Ljava/util/Map;

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->m:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->e:Ljava/lang/Class;

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->f:Ljava/lang/reflect/Type;

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$a;->j:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget v5, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    iget-wide v6, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v8, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    iget-object v0, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    iget-object v4, v4, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    move-object/from16 v19, v4

    move-object v4, v10

    move-object/from16 v21, v9

    move-object v9, v0

    move-object v0, v10

    move-object/from16 v10, v19

    move/from16 v20, v11

    move-object/from16 v11, v17

    move/from16 v19, v12

    move-object/from16 v12, v18

    move-object/from16 v22, v13

    move-object v13, v15

    move-object/from16 v23, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v1 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_18
    :goto_c
    move/from16 v20, v11

    move/from16 v19, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    :goto_d
    add-int/lit8 v11, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v12, v19

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    goto :goto_b

    :cond_19
    return-void
.end method
