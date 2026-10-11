.class public Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$a;
    }
.end annotation


# static fields
.field public static final g:I = 0x2

.field public static final h:I = 0x4

.field public static final i:I = 0x8

.field public static final j:I = 0x10

.field public static final k:I = 0x20

.field public static l:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter; = null

.field public static final m:I = 0x4000

.field public static final n:[I

.field public static final o:[I


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

.field public final e:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public volatile f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x1c

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/Character;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-class v7, Ljava/lang/Byte;

    aput-object v7, v1, v2

    const/4 v2, 0x5

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v2

    const/4 v2, 0x6

    const-class v7, Ljava/lang/Short;

    aput-object v7, v1, v2

    const/4 v2, 0x7

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v2

    const/16 v2, 0x8

    const-class v7, Ljava/lang/Integer;

    aput-object v7, v1, v2

    const/16 v2, 0x9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v2

    const/16 v2, 0xa

    const-class v7, Ljava/lang/Long;

    aput-object v7, v1, v2

    const/16 v2, 0xb

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v2

    const/16 v2, 0xc

    const-class v7, Ljava/lang/Float;

    aput-object v7, v1, v2

    const/16 v2, 0xd

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v2

    const/16 v2, 0xe

    const-class v7, Ljava/lang/Double;

    aput-object v7, v1, v2

    const/16 v2, 0xf

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v2

    const/16 v2, 0x10

    const-class v7, Ljava/math/BigInteger;

    aput-object v7, v1, v2

    const/16 v2, 0x11

    const-class v7, Ljava/math/BigDecimal;

    aput-object v7, v1, v2

    const/16 v2, 0x12

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v2

    const/16 v2, 0x13

    const-class v8, Ljava/util/Currency;

    aput-object v8, v1, v2

    const/16 v2, 0x14

    const-class v8, Ljava/util/Date;

    aput-object v8, v1, v2

    const/16 v2, 0x15

    const-class v8, Ljava/util/UUID;

    aput-object v8, v1, v2

    const/16 v2, 0x16

    const-class v8, Ljava/util/Locale;

    aput-object v8, v1, v2

    const/16 v2, 0x17

    aput-object v7, v1, v2

    const/16 v2, 0x18

    const-class v7, Ljava/lang/StackTraceElement;

    aput-object v7, v1, v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v7, 0x19

    aput-object v2, v1, v7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v7, 0x1a

    aput-object v2, v1, v7

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v7, 0x1b

    aput-object v2, v1, v7

    new-array v2, v0, [I

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    aput v7, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    sput-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->n:[I

    const/16 v0, 0x1f

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v4

    const-class v2, Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    array-length v1, v0

    sub-int/2addr v1, v5

    const-class v2, [I

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    array-length v1, v0

    sub-int/2addr v1, v6

    const-class v2, [J

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->o:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;-><init>(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->e:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 7
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->d:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 12
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->d:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->e:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic b(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->g(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic f(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJSONType1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private synthetic g(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 3

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v2, 0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "label"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string p3, "jsonDirect"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_2
    const-string p3, "name"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :sswitch_3
    const-string p3, "serialize"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string p3, "defaultValue"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string p3, "serialzeFeatures"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string p3, "unwrapped"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string p3, "ordinal"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string p3, "format"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_9
    const-string p3, "serializeUsing"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v0, 0x4000000000000L

    or-long/2addr p0, v0

    iput-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_1
    check-cast p1, Ljava/lang/Class;

    const-class p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    goto :goto_2

    :pswitch_2
    check-cast p1, [Ljava/lang/Enum;

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/Enum;)V

    goto :goto_2

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v0, 0x2000000000000L

    or-long/2addr p0, v0

    iput-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    iput-boolean v2, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    goto :goto_2

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    goto :goto_2

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    goto :goto_2

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    goto :goto_2

    :pswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->i(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x51c06e7c -> :sswitch_9
        -0x4ba00809 -> :sswitch_8
        -0x47f1458f -> :sswitch_7
        -0x3ade7834 -> :sswitch_6
        -0x3814e684 -> :sswitch_5
        -0x27497450 -> :sswitch_4
        -0x222e9920 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0xbd26f1 -> :sswitch_1
        0x61f7ef4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isNotReferenceDetect(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->o:[I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Enum;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPrimitiveOrEnum(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->n:[I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Enum;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static j(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    instance-of p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    iget-object p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->d:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_2

    return v0

    :cond_2
    iget-object p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->c:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    instance-of p0, p1, Lcom/sunia/HTREnginev2/dck;

    if-eqz p0, :cond_6

    check-cast p1, Lcom/sunia/HTREnginev2/dck;

    iget-object p0, p1, Lcom/sunia/HTREnginev2/dck;->a:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    :cond_6
    instance-of p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    invoke-virtual {p3, p1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    move v2, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/writer/FieldWriter;

    instance-of v4, v3, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    if-eqz v4, :cond_7

    check-cast v3, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    iget-object v3, v3, Lcom/alibaba/fastjson2/writer/FieldWriter;->p:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-static {p0, v3, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->j(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return v1
.end method


# virtual methods
.method public final c(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/Enum;)V
    .locals 5

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_d

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "WriteMapNullValue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "WriteClassName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "WriteNullBooleanAsFalse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "WriteNonStringValueAsString"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "WriteNullListAsEmpty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "NotWriteRootClassName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_6
    const-string v2, "WriteNullStringAsEmpty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "BrowserCompatible"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_8
    const-string v2, "WriteEnumUsingToString"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_9
    const-string v2, "WriteBigDecimalAsPlain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_a
    const-string v2, "UseISO8601DateFormat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_b
    const-string v2, "IgnoreErrorGetter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_c
    const-string v2, "WriteNullNumberAsZero"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    move v3, p0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto/16 :goto_2

    :pswitch_1
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_2
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_3
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_4
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_5
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_6
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_7
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_8
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_9
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_a
    const-string v1, "iso8601"

    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    goto :goto_2

    :pswitch_b
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_c
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x737c2857 -> :sswitch_c
        -0x6a158c1f -> :sswitch_b
        -0x1f6b42be -> :sswitch_a
        -0x14cc04b8 -> :sswitch_9
        -0x13fc7e70 -> :sswitch_8
        -0xca1b004 -> :sswitch_7
        -0x61b295c -> :sswitch_6
        -0x3c0c42b -> :sswitch_5
        0x3c26e3f7 -> :sswitch_4
        0x5a8cc575 -> :sswitch_3
        0x6bc5c64f -> :sswitch_2
        0x700b1b24 -> :sswitch_1
        0x7a300f8d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cleanup(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/Class;)V

    return-void
.end method

.method public cleanup(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-static {v3, v2, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->j(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-static {v2, v1, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->j(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public cleanupMixIn()V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final d(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    invoke-static {v4, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    :goto_1
    move-object v5, p1

    new-instance p1, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    iget-boolean p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    new-instance p0, Lcom/sunia/HTREnginev2/ick;

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sunia/HTREnginev2/ick;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p0, "java.sql.Time"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    const-string p0, "java.sql.Timestamp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-class p0, Ljava/sql/Clob;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/alibaba/fastjson2/util/JdbcSupport$ClobWriter;

    invoke-direct {p0}, Lcom/alibaba/fastjson2/util/JdbcSupport$ClobWriter;-><init>()V

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampWriter;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampWriter;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeWriter;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/util/JdbcSupport$TimeWriter;

    move-result-object p0

    return-object p0
.end method

.method public getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 10

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->e:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    const-class v2, Ljava/lang/Enum;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-ne v2, p2, :cond_1

    iget-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v0

    move-object v3, v2

    :goto_2
    array-length v5, v1

    const-string v6, "com.alibaba.fastjson.annotation.JSONType"

    const-class v7, Lcom/alibaba/fastjson2/annotation/JSONType;

    const/4 v8, 0x1

    if-ge v4, v5, :cond_6

    aget-object v2, v1, v4

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v2, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson2/annotation/JSONType;

    if-ne v7, v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "kotlin.Metadata"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v2

    goto :goto_3

    :cond_5
    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getKotlinConstructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getKotlinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v2, v7

    goto :goto_2

    :cond_6
    if-nez v2, :cond_9

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_9

    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->mixIn:Z

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    move v1, v0

    :goto_4
    array-length v4, p0

    if-ge v1, v4, :cond_9

    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/annotation/JSONType;

    if-ne v5, v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v3, v2

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object v2, v5

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_16

    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object p0

    array-length v1, p0

    if-eqz v1, :cond_a

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    :cond_a
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    :cond_b
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    :cond_c
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->serializeFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-result-object p0

    move v1, v0

    :goto_6
    array-length v3, p0

    if-ge v1, v3, :cond_d

    aget-object v3, p0, v1

    iget-wide v4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    iget-wide v6, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long v3, v4, v6

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->naming()Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_e

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    :cond_e
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_f

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    :cond_f
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_10

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    :cond_10
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->serializer()Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_11

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    :cond_11
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->serializeFilters()[Ljava/lang/Class;

    move-result-object p0

    array-length v1, p0

    if-eqz v1, :cond_12

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializeFilters:[Ljava/lang/Class;

    :cond_12
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->format()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    :cond_13
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->locale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_14

    new-instance v1, Ljava/util/Locale;

    aget-object v3, p0, v0

    aget-object p0, p0, v8

    invoke-direct {v1, v3, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    :cond_14
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->alphabetic()Z

    move-result p0

    if-nez p0, :cond_15

    iput-boolean v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->alphabetic:Z

    :cond_15
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->writeEnumAsJavaBean()Z

    move-result p0

    if-eqz p0, :cond_17

    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    goto :goto_7

    :cond_16
    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/udk;

    invoke-direct {v1, p1, v3}, Lcom/sunia/HTREnginev2/udk;-><init>(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    :cond_17
    :goto_7
    iget-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    if-eqz p0, :cond_1a

    array-length p0, p0

    if-eqz p0, :cond_1a

    iget-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1a

    :cond_18
    iget-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    array-length v1, p0

    :goto_8
    if-ge v0, v1, :cond_1a

    aget-object v2, p0, v0

    if-ne v2, p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    goto :goto_9

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    :goto_9
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    if-eq v1, p3, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 5
    iput-boolean p3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    .line 6
    :cond_1
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iput-boolean p3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 9
    :cond_2
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    const/4 p3, 0x0

    .line 10
    :goto_1
    array-length v1, p1

    if-ge p3, v1, :cond_5

    .line 11
    aget-object v1, p1, p3

    .line 12
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    if-nez v0, :cond_3

    .line 13
    const-class v0, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.alibaba.fastjson.annotation.JSONField"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->l(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    return-void

    .line 17
    :cond_6
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->h(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V

    .line 18
    invoke-interface {v0}, Lcom/alibaba/fastjson2/annotation/JSONField;->writeUsing()Ljava/lang/Class;

    move-result-object p0

    .line 19
    const-class p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 20
    iput-object p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 21
    :cond_7
    invoke-interface {v0}, Lcom/alibaba/fastjson2/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    iput-object p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 24
    :cond_8
    invoke-interface {v0}, Lcom/alibaba/fastjson2/annotation/JSONField;->jsonDirect()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 25
    iget-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v0, 0x4000000000000L

    or-long/2addr p0, v0

    iput-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 26
    :cond_9
    iget-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_a

    const-class p0, Ljava/lang/String;

    .line 27
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    if-nez p0, :cond_a

    .line 28
    const-class p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    iput-object p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    :cond_a
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 30
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p3, :cond_0

    .line 31
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 35
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 36
    invoke-static {v1, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 37
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 38
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    move v4, v0

    .line 39
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 40
    aget-object v5, v3, v4

    invoke-static {v5, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 41
    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 42
    :cond_4
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 43
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->k(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    .line 44
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 45
    invoke-static {p3, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getField(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 46
    iget-wide v3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v5, 0x10000000000000L

    or-long/2addr v3, v5

    iput-wide v3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 47
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 48
    :cond_5
    iget-boolean p3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    if-eqz p3, :cond_7

    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 49
    invoke-static {p4, p3, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 50
    :goto_2
    iget-object p4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    array-length v1, p4

    if-ge v0, v1, :cond_7

    .line 51
    aget-object p4, p4, v0

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 52
    iget-object p4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 53
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p4

    .line 54
    array-length v1, p4

    if-ge v0, v1, :cond_6

    .line 55
    aget-object p1, p4, v0

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->k(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public getMixIn(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0, v0, v0, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 9
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.protobuf.GeneratedMessageV3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p3, v1

    :cond_1
    if-eqz p3, :cond_2

    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    if-eqz p3, :cond_4

    .line 13
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-class v2, Ljava/util/Collection;

    .line 14
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriterModule(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p3, :cond_5

    .line 16
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_2

    .line 17
    :cond_5
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_2
    if-eqz p0, :cond_6

    move-object v0, p0

    :cond_6
    return-object v0

    .line 18
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.Uri$HierarchicalUri"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.net.Uri$StringUri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.net.Uri$OpaqueUri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    .line 20
    :cond_8
    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v0

    goto :goto_3

    .line 21
    :cond_9
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    :goto_3
    if-nez v0, :cond_c

    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->d:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    if-eqz p3, :cond_a

    .line 23
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    goto :goto_4

    :cond_a
    const-wide/16 v1, 0x0

    .line 24
    :goto_4
    invoke-virtual {v0, p2, v1, v2, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    if-eqz p3, :cond_b

    .line 25
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_5

    .line 26
    :cond_b
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_5
    if-eqz p0, :cond_c

    move-object v0, p0

    :cond_c
    return-object v0
.end method

.method public getObjectWriterFromCache(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_0
    return-object p0
.end method

.method public getObjectWriterModule(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/sunia/HTREnginev2/ldk;->a:Lcom/sunia/HTREnginev2/ldk;

    return-object v0

    :cond_0
    if-nez p2, :cond_2

    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object/from16 v3, p2

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->e(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v5

    if-eqz v5, :cond_3

    return-object v5

    :cond_3
    const-string v5, "java.util.regex.Pattern"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "net.sf.json.JSONNull"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "java.net.Inet6Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "java.net.Inet4Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "java.text.SimpleDateFormat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "java.net.InetSocketAddress"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    const-class v5, Ljava/util/Map;

    const-class v6, Ljava/util/ArrayList;

    const-class v7, Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    if-eq v10, v7, :cond_4

    if-ne v10, v6, :cond_6

    :cond_4
    array-length v1, v4

    if-ne v1, v9, :cond_5

    aget-object v1, v4, v8

    if-ne v1, v2, :cond_5

    sget-object v0, Lcom/sunia/HTREnginev2/zck;->a:Lcom/sunia/HTREnginev2/zck;

    return-object v0

    :cond_5
    move-object v1, v10

    :cond_6
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v0

    return-object v0

    :cond_7
    const-class v4, Ljava/util/LinkedList;

    if-ne v1, v4, :cond_8

    sget-object v0, Lcom/sunia/HTREnginev2/xck;->h:Lcom/sunia/HTREnginev2/xck;

    return-object v0

    :cond_8
    if-eq v1, v6, :cond_5b

    if-eq v1, v7, :cond_5b

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_a

    :cond_9
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v0, Lcom/sunia/HTREnginev2/dck;->c:Lcom/sunia/HTREnginev2/dck;

    return-object v0

    :cond_a
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v0

    return-object v0

    :cond_b
    const-class v3, Ljava/lang/Integer;

    if-ne v1, v3, :cond_c

    sget-object v0, Lcom/sunia/HTREnginev2/ock;->a:Lcom/sunia/HTREnginev2/ock;

    return-object v0

    :cond_c
    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v1, v3, :cond_d

    sget-object v0, Lcom/sunia/HTREnginev2/qbk;->b:Lcom/sunia/HTREnginev2/qbk;

    return-object v0

    :cond_d
    const-class v3, Ljava/lang/Byte;

    if-ne v1, v3, :cond_e

    sget-object v0, Lcom/sunia/HTREnginev2/uck;->a:Lcom/sunia/HTREnginev2/uck;

    return-object v0

    :cond_e
    const-class v3, Ljava/lang/Short;

    if-ne v1, v3, :cond_f

    sget-object v0, Lcom/sunia/HTREnginev2/mck;->a:Lcom/sunia/HTREnginev2/mck;

    return-object v0

    :cond_f
    const-class v3, Ljava/lang/Long;

    if-ne v1, v3, :cond_10

    sget-object v0, Lcom/sunia/HTREnginev2/rck;->b:Lcom/sunia/HTREnginev2/rck;

    return-object v0

    :cond_10
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v1, v3, :cond_11

    sget-object v0, Lcom/sunia/HTREnginev2/sbk;->b:Lcom/sunia/HTREnginev2/sbk;

    return-object v0

    :cond_11
    const-class v3, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v1, v3, :cond_12

    sget-object v0, Lcom/sunia/HTREnginev2/ubk;->b:Lcom/sunia/HTREnginev2/ubk;

    return-object v0

    :cond_12
    const-class v3, Ljava/lang/Float;

    if-ne v1, v3, :cond_13

    sget-object v0, Lcom/sunia/HTREnginev2/jck;->b:Lcom/sunia/HTREnginev2/jck;

    return-object v0

    :cond_13
    const-class v3, Ljava/lang/Double;

    if-ne v1, v3, :cond_14

    sget-object v0, Lcom/sunia/HTREnginev2/gck;->b:Lcom/sunia/HTREnginev2/gck;

    return-object v0

    :cond_14
    const-class v3, Ljava/math/BigInteger;

    if-ne v1, v3, :cond_15

    sget-object v0, Lcom/sunia/HTREnginev2/kbk;->b:Lcom/sunia/HTREnginev2/kbk;

    return-object v0

    :cond_15
    const-class v3, Ljava/math/BigDecimal;

    if-ne v1, v3, :cond_16

    sget-object v0, Lcom/sunia/HTREnginev2/vbk;->c:Lcom/sunia/HTREnginev2/vbk;

    return-object v0

    :cond_16
    const-class v3, Ljava/util/OptionalInt;

    if-ne v1, v3, :cond_17

    sget-object v0, Lcom/sunia/HTREnginev2/jdk;->a:Lcom/sunia/HTREnginev2/jdk;

    return-object v0

    :cond_17
    const-class v3, Ljava/util/OptionalLong;

    if-ne v1, v3, :cond_18

    sget-object v0, Lcom/sunia/HTREnginev2/kdk;->a:Lcom/sunia/HTREnginev2/kdk;

    return-object v0

    :cond_18
    const-class v3, Ljava/util/OptionalDouble;

    if-ne v1, v3, :cond_19

    sget-object v0, Lcom/sunia/HTREnginev2/idk;->a:Lcom/sunia/HTREnginev2/idk;

    return-object v0

    :cond_19
    const-class v3, Ljava/util/Optional;

    if-ne v1, v3, :cond_1a

    sget-object v0, Lcom/sunia/HTREnginev2/hdk;->e:Lcom/sunia/HTREnginev2/hdk;

    return-object v0

    :cond_1a
    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_1b

    sget-object v0, Lcom/sunia/HTREnginev2/ybk;->a:Lcom/sunia/HTREnginev2/ybk;

    return-object v0

    :cond_1b
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v1, v3, :cond_1c

    sget-object v0, Lcom/sunia/HTREnginev2/pbk;->a:Lcom/sunia/HTREnginev2/pbk;

    return-object v0

    :cond_1c
    const-class v3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne v1, v3, :cond_1d

    sget-object v0, Lcom/sunia/HTREnginev2/rbk;->a:Lcom/sunia/HTREnginev2/rbk;

    return-object v0

    :cond_1d
    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-ne v1, v3, :cond_1e

    sget-object v0, Lcom/sunia/HTREnginev2/tbk;->a:Lcom/sunia/HTREnginev2/tbk;

    return-object v0

    :cond_1e
    const-class v3, Ljava/lang/Character;

    if-ne v1, v3, :cond_1f

    sget-object v0, Lcom/sunia/HTREnginev2/bck;->a:Lcom/sunia/HTREnginev2/bck;

    return-object v0

    :cond_1f
    instance-of v3, v1, Ljava/lang/Class;

    const/4 v4, 0x0

    if-eqz v3, :cond_5a

    check-cast v1, Ljava/lang/Class;

    const-class v3, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_20

    new-instance v0, Lcom/sunia/HTREnginev2/ick;

    const/4 v11, 0x0

    const-class v12, Ljava/util/concurrent/TimeUnit;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/sunia/HTREnginev2/ick;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V

    return-object v0

    :cond_20
    const-class v3, Ljava/lang/Enum;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->d(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    if-eqz v3, :cond_21

    return-object v3

    :cond_21
    const-class v3, Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_22

    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v0

    :cond_22
    const-class v3, [Z

    if-ne v1, v3, :cond_23

    sget-object v0, Lcom/sunia/HTREnginev2/wbk;->b:Lcom/sunia/HTREnginev2/wbk;

    return-object v0

    :cond_23
    const-class v3, [C

    if-ne v1, v3, :cond_24

    sget-object v0, Lcom/sunia/HTREnginev2/ack;->b:Lcom/sunia/HTREnginev2/ack;

    return-object v0

    :cond_24
    const-class v3, Ljava/lang/StringBuffer;

    if-eq v1, v3, :cond_59

    const-class v3, Ljava/lang/StringBuilder;

    if-ne v1, v3, :cond_25

    goto/16 :goto_9

    :cond_25
    const-class v3, [B

    if-ne v1, v3, :cond_26

    sget-object v0, Lcom/sunia/HTREnginev2/wck;->b:Lcom/sunia/HTREnginev2/wck;

    return-object v0

    :cond_26
    const-class v3, [S

    if-ne v1, v3, :cond_27

    sget-object v0, Lcom/sunia/HTREnginev2/nck;->b:Lcom/sunia/HTREnginev2/nck;

    return-object v0

    :cond_27
    const-class v3, [I

    if-ne v1, v3, :cond_28

    sget-object v0, Lcom/sunia/HTREnginev2/qck;->b:Lcom/sunia/HTREnginev2/qck;

    return-object v0

    :cond_28
    const-class v3, [J

    if-ne v1, v3, :cond_29

    sget-object v0, Lcom/sunia/HTREnginev2/tck;->b:Lcom/sunia/HTREnginev2/tck;

    return-object v0

    :cond_29
    const-class v3, [F

    if-ne v1, v3, :cond_2a

    sget-object v0, Lcom/sunia/HTREnginev2/kck;->c:Lcom/sunia/HTREnginev2/kck;

    return-object v0

    :cond_2a
    const-class v3, [D

    if-ne v1, v3, :cond_2b

    sget-object v0, Lcom/sunia/HTREnginev2/hck;->c:Lcom/sunia/HTREnginev2/hck;

    return-object v0

    :cond_2b
    const-class v3, [Ljava/lang/Byte;

    if-ne v1, v3, :cond_2c

    sget-object v0, Lcom/sunia/HTREnginev2/vck;->a:Lcom/sunia/HTREnginev2/vck;

    return-object v0

    :cond_2c
    const-class v3, [Ljava/lang/Integer;

    if-ne v1, v3, :cond_2d

    sget-object v0, Lcom/sunia/HTREnginev2/pck;->a:Lcom/sunia/HTREnginev2/pck;

    return-object v0

    :cond_2d
    const-class v3, [Ljava/lang/Long;

    if-ne v1, v3, :cond_2e

    sget-object v0, Lcom/sunia/HTREnginev2/sck;->a:Lcom/sunia/HTREnginev2/sck;

    return-object v0

    :cond_2e
    const-class v3, [Ljava/lang/String;

    if-ne v3, v1, :cond_2f

    sget-object v0, Lcom/sunia/HTREnginev2/mdk;->c:Lcom/sunia/HTREnginev2/mdk;

    return-object v0

    :cond_2f
    const-class v3, [Ljava/math/BigDecimal;

    if-ne v3, v1, :cond_30

    sget-object v0, Lcom/sunia/HTREnginev2/obk;->a:Lcom/sunia/HTREnginev2/obk;

    return-object v0

    :cond_30
    const-class v3, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_33

    if-ne v1, v3, :cond_31

    sget-object v0, Lcom/sunia/HTREnginev2/ibk;->e:Lcom/sunia/HTREnginev2/ibk;

    return-object v0

    :cond_31
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_32

    new-instance v1, Lcom/sunia/HTREnginev2/jbk;

    invoke-direct {v1, v0, v4}, Lcom/sunia/HTREnginev2/jbk;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object v1

    :cond_32
    new-instance v1, Lcom/sunia/HTREnginev2/ibk;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ibk;-><init>(Ljava/lang/reflect/Type;)V

    return-object v1

    :cond_33
    const-class v3, Ljava/util/UUID;

    if-ne v1, v3, :cond_34

    sget-object v0, Lcom/sunia/HTREnginev2/odk;->a:Lcom/sunia/HTREnginev2/odk;

    return-object v0

    :cond_34
    const-class v3, Ljava/util/Locale;

    if-ne v1, v3, :cond_35

    sget-object v0, Lcom/sunia/HTREnginev2/ddk;->a:Lcom/sunia/HTREnginev2/ddk;

    return-object v0

    :cond_35
    const-class v3, Ljava/util/Currency;

    if-ne v1, v3, :cond_36

    sget-object v0, Lcom/sunia/HTREnginev2/eck;->b:Lcom/sunia/HTREnginev2/eck;

    return-object v0

    :cond_36
    const-class v3, Ljava/util/TimeZone;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_37

    sget-object v0, Lcom/sunia/HTREnginev2/ndk;->a:Lcom/sunia/HTREnginev2/ndk;

    return-object v0

    :cond_37
    const-class v3, Ljava/net/URI;

    if-eq v1, v3, :cond_58

    const-class v3, Ljava/net/URL;

    if-eq v1, v3, :cond_58

    const-class v3, Ljava/io/File;

    if-eq v1, v3, :cond_58

    const-class v3, Ljava/time/ZoneId;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_58

    const-class v3, Ljava/nio/charset/Charset;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto/16 :goto_8

    :cond_38
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->e(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    if-eqz v3, :cond_39

    return-object v3

    :cond_39
    new-instance v3, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v3}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    :cond_3a
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v0, :cond_3c

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_3b

    goto :goto_1

    :cond_3b
    sget-object v0, Lcom/sunia/HTREnginev2/fck;->b:Lcom/sunia/HTREnginev2/fck;

    return-object v0

    :cond_3c
    :goto_1
    new-instance v0, Lcom/sunia/HTREnginev2/fck;

    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/fck;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_3d
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v0, :cond_3f

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_3e

    goto :goto_2

    :cond_3e
    sget-object v0, Lcom/sunia/HTREnginev2/zbk;->b:Lcom/sunia/HTREnginev2/zbk;

    return-object v0

    :cond_3f
    :goto_2
    new-instance v0, Lcom/sunia/HTREnginev2/zbk;

    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/zbk;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_40
    const-class v0, Ljava/time/ZonedDateTime;

    if-ne v0, v1, :cond_43

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v0, :cond_42

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_41

    goto :goto_3

    :cond_41
    sget-object v0, Lcom/sunia/HTREnginev2/pdk;->c:Lcom/sunia/HTREnginev2/pdk;

    return-object v0

    :cond_42
    :goto_3
    new-instance v0, Lcom/sunia/HTREnginev2/pdk;

    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/pdk;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_43
    const-class v0, Ljava/time/OffsetDateTime;

    if-ne v0, v1, :cond_44

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/fdk;->a(Ljava/lang/String;Ljava/util/Locale;)Lcom/sunia/HTREnginev2/fdk;

    move-result-object v0

    return-object v0

    :cond_44
    const-class v0, Ljava/time/LocalDateTime;

    if-ne v0, v1, :cond_47

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v0, :cond_46

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_45

    goto :goto_4

    :cond_45
    sget-object v0, Lcom/sunia/HTREnginev2/bdk;->b:Lcom/sunia/HTREnginev2/bdk;

    return-object v0

    :cond_46
    :goto_4
    new-instance v0, Lcom/sunia/HTREnginev2/bdk;

    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/bdk;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_47
    const-class v0, Ljava/time/LocalDate;

    if-ne v0, v1, :cond_48

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/adk;->a(Ljava/lang/String;Ljava/util/Locale;)Lcom/sunia/HTREnginev2/adk;

    move-result-object v0

    return-object v0

    :cond_48
    const-class v0, Ljava/time/LocalTime;

    if-ne v0, v1, :cond_4b

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v0, :cond_4a

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_49

    goto :goto_5

    :cond_49
    sget-object v0, Lcom/sunia/HTREnginev2/cdk;->b:Lcom/sunia/HTREnginev2/cdk;

    return-object v0

    :cond_4a
    :goto_5
    new-instance v0, Lcom/sunia/HTREnginev2/cdk;

    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/cdk;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_4b
    const-class v0, Ljava/time/OffsetTime;

    if-ne v0, v1, :cond_4e

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v0, :cond_4d

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_4c

    goto :goto_6

    :cond_4c
    sget-object v0, Lcom/sunia/HTREnginev2/gdk;->b:Lcom/sunia/HTREnginev2/gdk;

    return-object v0

    :cond_4d
    :goto_6
    new-instance v0, Lcom/sunia/HTREnginev2/gdk;

    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/gdk;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_4e
    const-class v0, Ljava/time/Instant;

    if-ne v0, v1, :cond_51

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v0, :cond_50

    iget-object v0, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_4f

    goto :goto_7

    :cond_4f
    sget-object v0, Lcom/sunia/HTREnginev2/lck;->b:Lcom/sunia/HTREnginev2/lck;

    return-object v0

    :cond_50
    :goto_7
    new-instance v0, Lcom/sunia/HTREnginev2/lck;

    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/lck;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_51
    const-class v0, Ljava/time/Duration;

    if-ne v0, v1, :cond_52

    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v0

    :cond_52
    const-class v0, Ljava/lang/StackTraceElement;

    const/4 v3, 0x3

    const/4 v5, 0x2

    if-ne v0, v1, :cond_54

    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->l:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-nez v0, :cond_53

    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const-class v11, Ljava/lang/StackTraceElement;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    new-instance v4, Lcom/sunia/HTREnginev2/rdk;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/rdk;-><init>()V

    const-string v6, "fileName"

    invoke-static {v6, v2, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v4

    aput-object v4, v1, v8

    new-instance v4, Lcom/sunia/HTREnginev2/ydk;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/ydk;-><init>()V

    const-string v6, "lineNumber"

    invoke-static {v6, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v4

    aput-object v4, v1, v9

    new-instance v4, Lcom/sunia/HTREnginev2/zdk;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/zdk;-><init>()V

    const-string v6, "className"

    invoke-static {v6, v2, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v4

    aput-object v4, v1, v5

    new-instance v4, Lcom/sunia/HTREnginev2/aek;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/aek;-><init>()V

    const-string v5, "methodName"

    invoke-static {v5, v2, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->l:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    :cond_53
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->l:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    return-object v0

    :cond_54
    const-class v0, Ljava/lang/Class;

    if-ne v0, v1, :cond_55

    sget-object v0, Lcom/sunia/HTREnginev2/cck;->a:Lcom/sunia/HTREnginev2/cck;

    return-object v0

    :cond_55
    const-class v6, Ljava/lang/reflect/Method;

    const-string v7, "name"

    const-string v10, "declaringClass"

    if-ne v6, v1, :cond_56

    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const-class v12, Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    new-instance v4, Lcom/sunia/HTREnginev2/bek;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/bek;-><init>()V

    invoke-static {v10, v0, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    aput-object v0, v3, v8

    new-instance v0, Lcom/sunia/HTREnginev2/cek;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cek;-><init>()V

    invoke-static {v7, v2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    aput-object v0, v3, v9

    new-instance v0, Lcom/sunia/HTREnginev2/dek;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dek;-><init>()V

    const-string v2, "parameterTypes"

    const-class v4, [Ljava/lang/Class;

    invoke-static {v2, v4, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v1

    :cond_56
    const-class v6, Ljava/lang/reflect/Field;

    if-ne v6, v1, :cond_57

    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const-class v12, Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    new-array v3, v5, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    new-instance v4, Lcom/sunia/HTREnginev2/eek;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/eek;-><init>()V

    invoke-static {v10, v0, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    aput-object v0, v3, v8

    new-instance v0, Lcom/sunia/HTREnginev2/sdk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk;-><init>()V

    invoke-static {v7, v2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v1

    :cond_57
    const-class v0, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5a

    new-array v1, v3, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    new-instance v2, Lcom/sunia/HTREnginev2/tdk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/tdk;-><init>()V

    const-string v3, "actualTypeArguments"

    const-class v4, [Ljava/lang/reflect/Type;

    invoke-static {v3, v4, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v2

    aput-object v2, v1, v8

    new-instance v2, Lcom/sunia/HTREnginev2/wdk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/wdk;-><init>()V

    const-string v3, "ownerType"

    const-class v4, Ljava/lang/reflect/Type;

    invoke-static {v3, v4, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Lcom/sunia/HTREnginev2/xdk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/xdk;-><init>()V

    const-string v3, "rawType"

    invoke-static {v3, v4, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->objectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    return-object v0

    :cond_58
    :goto_8
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v0

    :cond_59
    :goto_9
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v0

    :cond_5a
    return-object v4

    :cond_5b
    :goto_a
    sget-object v0, Lcom/sunia/HTREnginev2/xck;->h:Lcom/sunia/HTREnginev2/xck;

    return-object v0

    :cond_5c
    sget-object v0, Lcom/sunia/HTREnginev2/qdk;->a:Lcom/sunia/HTREnginev2/qdk;

    return-object v0
.end method

.method public final h(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V
    .locals 6

    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    :cond_0
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    :cond_1
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->i(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    :cond_2
    iget-boolean p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    if-nez p0, :cond_3

    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->serialize()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    :cond_3
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v2, 0x2000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    :cond_4
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->serializeFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-object v1, p0, v0

    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long v1, v2, v4

    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->ordinal()I

    move-result p0

    if-eqz p0, :cond_6

    iput p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    :cond_6
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->value()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v2, 0x1000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    :cond_7
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->jsonDirect()Z

    move-result p0

    if-eqz p0, :cond_8

    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v2, 0x4000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    :cond_8
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object p0

    const-class p2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_9

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    :cond_9
    return-void
.end method

.method public final i(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x54

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const-string p2, "\'T\'"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "T"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final k(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-object v1, p2, v0

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->h(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.beans.Transient"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.alibaba.fastjson.annotation.JSONField"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->l(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    iput-boolean v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->isTransient:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final l(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/vdk;

    invoke-direct {v1, p0, p2, p1}, Lcom/sunia/HTREnginev2/vdk;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public mixIn(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 3
    sget-object v0, Lcom/sunia/HTREnginev2/ock;->a:Lcom/sunia/HTREnginev2/ock;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    goto/16 :goto_5

    .line 5
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    goto/16 :goto_5

    .line 6
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_b

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_5

    .line 8
    sget-object v0, Lcom/sunia/HTREnginev2/vbk;->c:Lcom/sunia/HTREnginev2/vbk;

    if-ne p2, v0, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    goto :goto_5

    .line 10
    :cond_5
    :goto_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    goto :goto_5

    .line 11
    :cond_6
    const-class v0, Ljava/util/Date;

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_8

    .line 12
    sget-object v0, Lcom/sunia/HTREnginev2/fck;->b:Lcom/sunia/HTREnginev2/fck;

    if-ne p2, v0, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    goto :goto_5

    .line 14
    :cond_8
    :goto_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, -0x11

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    goto :goto_5

    .line 15
    :cond_9
    const-class v0, Ljava/lang/Enum;

    if-ne p1, v0, :cond_e

    if-nez p2, :cond_a

    .line 16
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    goto :goto_5

    .line 17
    :cond_a
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    goto :goto_5

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    .line 18
    sget-object v0, Lcom/sunia/HTREnginev2/rck;->b:Lcom/sunia/HTREnginev2/rck;

    if-ne p2, v0, :cond_c

    goto :goto_4

    .line 19
    :cond_c
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    goto :goto_5

    .line 20
    :cond_d
    :goto_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    :cond_e
    :goto_5
    if-nez p2, :cond_10

    if-eqz p3, :cond_f

    .line 21
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p0

    .line 22
    :cond_f
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p0

    :cond_10
    if-eqz p3, :cond_11

    .line 23
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p0

    .line 24
    :cond_11
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p0
.end method

.method public registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public unregister(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p0
.end method

.method public unregister(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
