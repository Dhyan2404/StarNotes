.class public final Lcom/sunia/HTREnginev2/a7k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field public final a:[Ljava/lang/reflect/Type;

.field public final b:[Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/util/MultiType;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/util/MultiType;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/util/MultiType;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/util/MultiType;->getType(I)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/sunia/HTREnginev2/a7k;->a:[Ljava/lang/reflect/Type;

    new-array p1, v0, [Lcom/alibaba/fastjson2/reader/ObjectReader;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a7k;->b:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/JSONReader;I)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a7k;->b:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a7k;->a:[Ljava/lang/reflect/Type;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a7k;->b:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    aput-object v0, p0, p2

    :cond_0
    return-object v0
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a7k;->a:[Ljava/lang/reflect/Type;

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p2

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    return-object v0

    :cond_0
    iget-object p3, p0, Lcom/sunia/HTREnginev2/a7k;->a:[Ljava/lang/reflect/Type;

    array-length p3, p3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, p3

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v2

    invoke-virtual {p1, p3, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask([Ljava/lang/Object;ILcom/alibaba/fastjson2/JSONPath;)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/sunia/HTREnginev2/a7k;->a(Lcom/alibaba/fastjson2/JSONReader;I)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    iget-object v2, p0, Lcom/sunia/HTREnginev2/a7k;->a:[Ljava/lang/reflect/Type;

    aget-object v5, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p1

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sunia/HTREnginev2/a7k;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    return-object p3

    :cond_1
    iget-object p2, p0, Lcom/sunia/HTREnginev2/a7k;->a:[Ljava/lang/reflect/Type;

    array-length p2, p2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p2

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p2

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask([Ljava/lang/Object;ILcom/alibaba/fastjson2/JSONPath;)V

    move-object v1, p3

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/a7k;->a(Lcom/alibaba/fastjson2/JSONReader;I)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    iget-object v1, p0, Lcom/sunia/HTREnginev2/a7k;->a:[Ljava/lang/reflect/Type;

    aget-object v4, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    aput-object v1, p2, v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "TODO"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
