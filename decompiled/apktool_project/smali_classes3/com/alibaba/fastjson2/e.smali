.class public final Lcom/alibaba/fastjson2/e;
.super Lcom/alibaba/fastjson2/c;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/fastjson2/c;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/alibaba/fastjson2/e;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/JSONPath$a;)V
    .locals 8

    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$a;->b:Lcom/alibaba/fastjson2/JSONPath$a;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$a;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$a;->g:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    instance-of v1, v0, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Enum;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_3
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_2

    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_1
    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONPath$a;->g:Ljava/lang/Object;

    return-void

    :cond_6
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_e

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    if-ne v1, v4, :cond_9

    check-cast v3, Ljava/util/Collection;

    move-object v2, v3

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :cond_a
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_b
    if-nez v2, :cond_c

    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :cond_c
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    iput-object v2, p1, Lcom/alibaba/fastjson2/JSONPath$a;->g:Ljava/lang/Object;

    return-void

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONPath$a;->a:Lcom/alibaba/fastjson2/JSONPath;

    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONPath;->b:Lcom/alibaba/fastjson2/JSONWriter$Context;

    if-eqz v3, :cond_f

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    goto :goto_3

    :cond_f
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    :goto_3
    instance-of v4, v3, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz v4, :cond_11

    iget-wide v1, p0, Lcom/alibaba/fastjson2/e;->b:J

    invoke-interface {v3, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONPath$a;->g:Ljava/lang/Object;

    :cond_10
    return-void

    :cond_11
    instance-of p0, v0, Ljava/lang/Number;

    if-nez p0, :cond_13

    instance-of p0, v0, Ljava/lang/Boolean;

    if-eqz p0, :cond_12

    goto :goto_4

    :cond_12
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_4
    iput-object v2, p1, Lcom/alibaba/fastjson2/JSONPath$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Lcom/alibaba/fastjson2/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/e;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/e;->b:J

    iget-wide v4, p1, Lcom/alibaba/fastjson2/e;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/e;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/e;->a:Ljava/lang/String;

    return-object p0
.end method
