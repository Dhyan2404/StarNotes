.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field public static INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

.field public static JSON_ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

.field public static final m:Ljava/lang/Class;

.field public static final n:Ljava/lang/Class;

.field public static final o:Ljava/lang/Class;

.field public static final p:Ljava/lang/Class;

.field public static final q:Ljava/lang/Class;

.field public static final r:Ljava/lang/Class;

.field public static final s:Ljava/lang/Class;

.field public static final t:Ljava/lang/Class;


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Class;

.field public final d:J

.field public final e:Ljava/lang/reflect/Type;

.field public final f:Ljava/lang/Class;

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:Ljava/util/function/Function;

.field public j:Ljava/lang/Object;

.field public k:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field public volatile l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->m:Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->n:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->o:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->p:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->q:Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->r:Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->s:Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->t:Ljava/lang/Class;

    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    const-class v2, Ljava/util/ArrayList;

    const-class v3, Ljava/util/ArrayList;

    const-class v4, Ljava/util/ArrayList;

    const-wide/16 v5, 0x41

    const-class v7, Ljava/lang/Object;

    const-class v8, Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Object"

    const-wide v11, 0x7463656a624fL

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;Ljava/lang/String;J)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    const-class v14, Lcom/alibaba/fastjson2/JSONArray;

    const-class v15, Lcom/alibaba/fastjson2/JSONArray;

    const-class v16, Lcom/alibaba/fastjson2/JSONArray;

    const-wide v17, 0x7b6c46ca33cd9078L    # 3.3638134088297784E286

    const-class v19, Ljava/lang/Object;

    const-class v20, Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v22, "Object"

    const-wide v23, 0x7463656a624fL

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;Ljava/lang/String;J)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->JSON_ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6

    .line 1
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    .line 2
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;Ljava/lang/String;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->a:Ljava/lang/reflect/Type;

    .line 15
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->b:Ljava/lang/Class;

    .line 16
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    .line 17
    iput-wide p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->d:J

    .line 18
    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    .line 19
    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->f:Ljava/lang/Class;

    .line 20
    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i:Ljava/util/function/Function;

    .line 21
    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->g:Ljava/lang/String;

    .line 22
    iput-wide p10, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->h:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->a:Ljava/lang/reflect/Type;

    .line 5
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->b:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    .line 7
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->d:J

    .line 8
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    .line 9
    invoke-static {p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->f:Ljava/lang/Class;

    .line 10
    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i:Ljava/util/function/Function;

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->g:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 12
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->h:J

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->v(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->x(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 11

    if-ne p1, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    :cond_0
    move-object v1, p0

    instance-of p0, v1, Ljava/lang/reflect/ParameterizedType;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const-class v0, Ljava/lang/Object;

    if-eqz p0, :cond_2

    move-object p0, v1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v3, p0

    if-ne v3, p3, :cond_1

    aget-object v0, p0, p2

    :cond_1
    move-object v4, v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v3, p0

    if-ne v3, p3, :cond_1

    aget-object p0, p0, p2

    move-object v4, p0

    goto :goto_0

    :cond_3
    move-object v4, v0

    move-object v2, v1

    :goto_0
    if-nez p1, :cond_4

    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    move-object v2, p0

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    const-class p0, Ljava/lang/Iterable;

    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const-class v6, Ljava/util/ArrayList;

    if-eq v2, p0, :cond_17

    const-class p0, Ljava/util/Collection;

    if-eq v2, p0, :cond_17

    const-class p0, Ljava/util/List;

    if-eq v2, p0, :cond_17

    const-class p0, Ljava/util/AbstractCollection;

    if-eq v2, p0, :cond_17

    const-class p0, Ljava/util/AbstractList;

    if-ne v2, p0, :cond_5

    goto/16 :goto_9

    :cond_5
    const-class p0, Ljava/util/Queue;

    if-eq v2, p0, :cond_16

    const-class p0, Ljava/util/Deque;

    if-eq v2, p0, :cond_16

    const-class p0, Ljava/util/AbstractSequentialList;

    if-ne v2, p0, :cond_6

    goto/16 :goto_8

    :cond_6
    const-class p0, Ljava/util/Set;

    const-class v7, Ljava/util/HashSet;

    if-eq v2, p0, :cond_15

    const-class p0, Ljava/util/AbstractSet;

    if-ne v2, p0, :cond_7

    goto/16 :goto_6

    :cond_7
    const-class p0, Ljava/util/EnumSet;

    if-ne v2, p0, :cond_8

    new-instance p0, Lcom/sunia/HTREnginev2/k8k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/k8k;-><init>()V

    goto/16 :goto_7

    :cond_8
    const-class p0, Ljava/util/NavigableSet;

    const-class v8, Ljava/util/TreeSet;

    if-eq v2, p0, :cond_14

    const-class p0, Ljava/util/SortedSet;

    if-ne v2, p0, :cond_9

    goto/16 :goto_4

    :cond_9
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->o:Ljava/lang/Class;

    if-ne v2, p0, :cond_a

    new-instance p0, Lcom/sunia/HTREnginev2/v8k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/v8k;-><init>()V

    goto/16 :goto_a

    :cond_a
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->p:Ljava/lang/Class;

    if-ne v2, p0, :cond_b

    new-instance p0, Lcom/sunia/HTREnginev2/w8k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/w8k;-><init>()V

    goto/16 :goto_a

    :cond_b
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->q:Ljava/lang/Class;

    if-ne v2, p0, :cond_c

    new-instance v6, Lcom/sunia/HTREnginev2/x8k;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/x8k;-><init>()V

    move-object v10, v6

    move-object v6, p0

    move-object p0, v10

    goto/16 :goto_a

    :cond_c
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->r:Ljava/lang/Class;

    if-ne v2, p0, :cond_d

    new-instance p0, Lcom/sunia/HTREnginev2/y8k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/y8k;-><init>()V

    goto/16 :goto_a

    :cond_d
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->s:Ljava/lang/Class;

    if-ne v2, p0, :cond_e

    new-instance p0, Lcom/sunia/HTREnginev2/z8k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z8k;-><init>()V

    goto/16 :goto_a

    :cond_e
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->t:Ljava/lang/Class;

    if-ne v2, p0, :cond_f

    new-instance p0, Lcom/sunia/HTREnginev2/a9k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/a9k;-><init>()V

    const-class v6, Ljava/util/LinkedHashSet;

    goto/16 :goto_a

    :cond_f
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_2
    move p0, v3

    goto :goto_3

    :sswitch_0
    const-string v9, "java.util.Collections$SynchronizedRandomAccessList"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_2

    :cond_10
    move p0, p1

    goto :goto_3

    :sswitch_1
    const-string v9, "java.util.Collections$SynchronizedCollection"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_2

    :cond_11
    move p0, v0

    goto :goto_3

    :sswitch_2
    const-string v9, "java.util.Collections$SynchronizedSet"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_2

    :cond_12
    move p0, p3

    goto :goto_3

    :sswitch_3
    const-string v9, "java.util.Collections$SynchronizedSortedSet"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_2

    :cond_13
    move p0, p2

    :goto_3
    packed-switch p0, :pswitch_data_0

    move-object v6, v2

    goto :goto_9

    :pswitch_0
    new-instance p0, Lcom/sunia/HTREnginev2/b9k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/b9k;-><init>()V

    goto :goto_a

    :pswitch_1
    new-instance p0, Lcom/sunia/HTREnginev2/c9k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/c9k;-><init>()V

    goto :goto_a

    :pswitch_2
    new-instance p0, Lcom/sunia/HTREnginev2/l8k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/l8k;-><init>()V

    goto :goto_7

    :pswitch_3
    new-instance p0, Lcom/sunia/HTREnginev2/u8k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/u8k;-><init>()V

    goto :goto_5

    :cond_14
    :goto_4
    move-object p0, v5

    :goto_5
    move-object v6, v8

    goto :goto_a

    :cond_15
    :goto_6
    move-object p0, v5

    :goto_7
    move-object v6, v7

    goto :goto_a

    :cond_16
    :goto_8
    const-class p0, Ljava/util/LinkedList;

    move-object v6, p0

    :cond_17
    :goto_9
    move-object p0, v5

    :goto_a
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_b
    move p2, v3

    goto :goto_c

    :sswitch_4
    const-string p2, "kotlin.collections.EmptySet"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_b

    :cond_18
    move p2, p1

    goto :goto_c

    :sswitch_5
    const-string p1, "java.util.Collections$EmptyList"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_b

    :cond_19
    move p2, v0

    goto :goto_c

    :sswitch_6
    const-string p1, "java.util.Collections$EmptySet"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_b

    :cond_1a
    move p2, p3

    goto :goto_c

    :sswitch_7
    const-string p1, "kotlin.collections.EmptyList"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_b

    :cond_1b
    :goto_c
    packed-switch p2, :pswitch_data_1

    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->m:Ljava/lang/Class;

    if-eq v1, p1, :cond_1f

    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->n:Ljava/lang/Class;

    if-ne v1, p1, :cond_1c

    goto :goto_d

    :cond_1c
    const-class p1, Ljava/lang/String;

    if-ne v4, p1, :cond_1d

    if-nez p0, :cond_1d

    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    invoke-direct {p0, v2, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0

    :cond_1d
    const-class p1, Ljava/lang/Long;

    if-ne v4, p1, :cond_1e

    if-nez p0, :cond_1e

    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    invoke-direct {p0, v2, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0

    :cond_1e
    new-instance p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    move-object v0, p1

    move-object v3, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    return-object p1

    :cond_1f
    :goto_d
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    check-cast v1, Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    check-cast v1, Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0

    :pswitch_6
    move-object p0, v1

    check-cast p0, Ljava/lang/Class;

    :try_start_0
    const-string p1, "INSTANCE"

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p2

    if-nez p2, :cond_20

    invoke-virtual {p1, p3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_20
    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to get singleton of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7a823dfe -> :sswitch_3
        -0x6007a441 -> :sswitch_2
        -0x30d4835f -> :sswitch_1
        -0xcb38ef8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6c36e6db -> :sswitch_7
        -0x18a7e41c -> :sswitch_6
        0x3a8415c -> :sswitch_5
        0x1548a6fb -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static synthetic p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 3

    .line 42
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    const-class p2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_0

    .line 43
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 44
    :cond_0
    const-class p2, Ljava/util/LinkedList;

    if-ne p1, p2, :cond_1

    .line 45
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0

    .line 46
    :cond_1
    const-class p2, Ljava/util/HashSet;

    if-ne p1, p2, :cond_2

    .line 47
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 48
    :cond_2
    const-class p2, Ljava/util/LinkedHashSet;

    if-ne p1, p2, :cond_3

    .line 49
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0

    .line 50
    :cond_3
    const-class p2, Ljava/util/TreeSet;

    if-ne p1, p2, :cond_4

    .line 51
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0

    .line 52
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->j:Ljava/lang/Object;

    if-eqz p2, :cond_5

    return-object p2

    :cond_5
    if-eqz p1, :cond_9

    .line 53
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->l:Z

    const-string p2, "create list error, type "

    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 55
    :catch_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->l:Z

    .line 56
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 57
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->l:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 58
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 59
    :catch_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->l:Z

    .line 60
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    :cond_7
    if-nez p1, :cond_8

    goto :goto_1

    .line 61
    :cond_8
    throw p1

    .line 62
    :cond_9
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->b:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    if-ne v0, v1, :cond_1

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i:Ljava/util/function/Function;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    .line 6
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 13
    const-class v6, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v5, v6, :cond_4

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_6

    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->f:Ljava/lang/Class;

    if-eq v6, v5, :cond_6

    .line 14
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v5, :cond_5

    .line 15
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 16
    :cond_5
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-interface {v5, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 17
    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    if-eq v5, v6, :cond_11

    .line 18
    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 19
    invoke-interface {v6, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 20
    :cond_7
    instance-of v6, v2, Ljava/util/Map;

    if-eqz v6, :cond_9

    .line 21
    check-cast v2, Ljava/util/Map;

    .line 22
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v5, :cond_8

    .line 23
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 24
    :cond_8
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-interface {v5, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 25
    :cond_9
    instance-of v6, v2, Ljava/util/Collection;

    if-eqz v6, :cond_b

    .line 26
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v5, :cond_a

    .line 27
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 28
    :cond_a
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 29
    :cond_b
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->f:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_2

    .line 30
    :cond_c
    const-class v6, Ljava/lang/Enum;

    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->f:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const-string v7, " to "

    const-string v8, "can not convert from "

    if-eqz v6, :cond_10

    .line 31
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v6, :cond_d

    .line 32
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 33
    :cond_d
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    instance-of v9, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    if-eqz v9, :cond_e

    .line 34
    check-cast v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;->getEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_2

    .line 35
    :cond_e
    instance-of v9, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;

    if-eqz v9, :cond_f

    .line 36
    check-cast v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->getEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_2

    .line 37
    :cond_f
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_11
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 40
    :cond_12
    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i:Ljava/util/function/Function;

    if-eqz p0, :cond_13

    .line 41
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v1
.end method

.method public getBuildFunction()Ljava/util/function/Function;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i:Ljava/util/function/Function;

    return-object p0
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    return-object v9

    :cond_0
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->b:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i:Ljava/util/function/Function;

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    const-class v4, Ljava/util/LinkedHashSet;

    const-class v5, Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    instance-of v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->c:Ljava/lang/Class;

    iget-object v1, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i:Ljava/util/function/Function;

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    move-object v3, v1

    :goto_0
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->r:Ljava/lang/Class;

    if-ne v3, v1, :cond_2

    new-instance v2, Lcom/sunia/HTREnginev2/m8k;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/m8k;-><init>()V

    :goto_1
    move-object v3, v5

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->s:Ljava/lang/Class;

    if-ne v3, v1, :cond_3

    new-instance v2, Lcom/sunia/HTREnginev2/n8k;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/n8k;-><init>()V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->t:Ljava/lang/Class;

    if-ne v3, v1, :cond_4

    new-instance v2, Lcom/sunia/HTREnginev2/o8k;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/o8k;-><init>()V

    move-object v3, v4

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->o:Ljava/lang/Class;

    if-ne v3, v1, :cond_5

    new-instance v2, Lcom/sunia/HTREnginev2/p8k;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/p8k;-><init>()V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->p:Ljava/lang/Class;

    if-ne v3, v1, :cond_6

    new-instance v2, Lcom/sunia/HTREnginev2/q8k;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/q8k;-><init>()V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_7

    iget-object v1, v7, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_7
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->q:Ljava/lang/Class;

    const-string v11, ".."

    const/4 v6, 0x0

    if-ne v3, v1, :cond_b

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move v13, v6

    :goto_3
    if-ge v13, v10, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v1, v12

    goto :goto_4

    :cond_8
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v1

    invoke-virtual {v7, v12, v13, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    move-object v1, v9

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    aput-object v1, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_a
    return-object v12

    :cond_b
    if-ne v3, v5, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    if-lez v10, :cond_c

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_5

    :cond_c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_d
    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v3, v1, :cond_f

    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    if-lez v10, :cond_e

    invoke-direct {v1, v10}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    goto :goto_5

    :cond_e
    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_5

    :cond_f
    const-class v1, Ljava/util/HashSet;

    if-ne v3, v1, :cond_10

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_5
    move-object v12, v1

    move-object v13, v2

    goto/16 :goto_6

    :cond_10
    if-ne v3, v4, :cond_11

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_5

    :cond_11
    const-class v1, Ljava/util/TreeSet;

    if-ne v3, v1, :cond_12

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_5

    :cond_12
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->m:Ljava/lang/Class;

    if-ne v3, v1, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_5

    :cond_13
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->n:Ljava/lang/Class;

    if-ne v3, v1, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_14
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->p:Ljava/lang/Class;

    if-ne v3, v1, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/r8k;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/r8k;-><init>()V

    goto :goto_5

    :cond_15
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->s:Ljava/lang/Class;

    if-ne v3, v1, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/s8k;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/s8k;-><init>()V

    goto :goto_5

    :cond_16
    if-eqz v3, :cond_17

    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/t8k;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/t8k;-><init>()V

    goto :goto_5

    :cond_17
    if-eqz v3, :cond_18

    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->a:Ljava/lang/reflect/Type;

    if-eq v3, v1, :cond_18

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create instance error "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_18
    iget-object v1, v7, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long v4, v4, p4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto/16 :goto_5

    :goto_6
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    if-eqz v8, :cond_19

    if-eq v8, v3, :cond_19

    instance-of v3, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_19

    move-object v3, v8

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    aget-object v2, v3, v6

    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    if-eq v2, v3, :cond_19

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    :cond_19
    move-object v8, v1

    move-object v14, v2

    move v15, v6

    :goto_7
    if-ge v15, v10, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v1, v12

    goto :goto_8

    :cond_1a
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v1

    invoke-virtual {v7, v12, v15, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    instance-of v1, v12, Ljava/util/List;

    if-eqz v1, :cond_1d

    move-object v1, v9

    goto :goto_8

    :cond_1b
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->f:Ljava/lang/Class;

    iget-wide v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->h:J

    move-object/from16 v1, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_1c
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    :goto_8
    invoke-interface {v12, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_1e
    if-eqz v13, :cond_1f

    invoke-interface {v13, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1f
    return-object v12
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9

    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_0
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_3
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long p3, v2, p4

    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->createInstance(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p4

    const/16 p5, 0x22

    const-class v2, Ljava/lang/String;

    if-ne p4, p5, :cond_7

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->f:Ljava/lang/Class;

    if-ne p4, v2, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object v1

    :cond_5
    iget-object p4, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p4, v2, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    :cond_6
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/16 p5, 0x5b

    const/4 v0, 0x0

    if-ne p4, p5, :cond_10

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->a:Ljava/lang/reflect/Type;

    if-eq p2, v1, :cond_8

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_8

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    array-length v1, p2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    aget-object p5, p2, v0

    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    if-eq p5, p2, :cond_8

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p4

    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i:Ljava/util/function/Function;

    if-eqz p0, :cond_9

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p3

    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p2

    const/16 v1, 0x2c

    if-eq p2, v1, :cond_f

    if-ne p5, v2, :cond_b

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_b
    if-eqz p4, :cond_e

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object p2

    const-string v1, ".."

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object p2, p0

    goto :goto_2

    :cond_c
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p2

    invoke-virtual {p1, p3, v0, p2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_3

    :cond_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/16 v7, 0x0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    :goto_2
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TODO : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "illegal input error"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->f:Ljava/lang/Class;

    const-class p4, Ljava/lang/Object;

    if-eq p2, p4, :cond_11

    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez p5, :cond_12

    :cond_11
    if-ne p2, p4, :cond_14

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result p2

    if-eqz p2, :cond_14

    :cond_12
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->k:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->e:Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i:Ljava/util/function/Function;

    if-eqz p0, :cond_13

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/util/Collection;

    :cond_13
    return-object p3

    :cond_14
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
