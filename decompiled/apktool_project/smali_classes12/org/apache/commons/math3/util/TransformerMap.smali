.class public Lorg/apache/commons/math3/util/TransformerMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/util/NumberTransformer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3fe9605bd703368aL


# instance fields
.field private defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/math3/util/NumberTransformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    iput-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    new-instance v0, Lorg/apache/commons/math3/util/DefaultTransformer;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/DefaultTransformer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    return-void
.end method


# virtual methods
.method public classes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsClass(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsTransformer(Lorg/apache/commons/math3/util/NumberTransformer;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/util/TransformerMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lorg/apache/commons/math3/util/TransformerMap;

    iget-object v1, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    iget-object v3, p1, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, p1, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/util/NumberTransformer;

    iget-object v4, p1, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_4
    return v0

    :cond_5
    return v2
.end method

.method public getTransformer(Ljava/lang/Class;)Lorg/apache/commons/math3/util/NumberTransformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/math3/util/NumberTransformer;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/util/NumberTransformer;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/NumberTransformer;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public putTransformer(Ljava/lang/Class;Lorg/apache/commons/math3/util/NumberTransformer;)Lorg/apache/commons/math3/util/NumberTransformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/math3/util/NumberTransformer;",
            ")",
            "Lorg/apache/commons/math3/util/NumberTransformer;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/util/NumberTransformer;

    return-object p0
.end method

.method public removeTransformer(Ljava/lang/Class;)Lorg/apache/commons/math3/util/NumberTransformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/math3/util/NumberTransformer;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/util/NumberTransformer;

    return-object p0
.end method

.method public transform(Ljava/lang/Object;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/TransformerMap;->getTransformer(Ljava/lang/Class;)Lorg/apache/commons/math3/util/NumberTransformer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/util/NumberTransformer;->transform(Ljava/lang/Object;)D

    move-result-wide p0

    goto :goto_1

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/util/NumberTransformer;->transform(Ljava/lang/Object;)D

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public transformers()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/util/NumberTransformer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
