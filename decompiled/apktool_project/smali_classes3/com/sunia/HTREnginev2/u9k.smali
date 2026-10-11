.class public Lcom/sunia/HTREnginev2/u9k;
.super Lcom/sunia/HTREnginev2/bak;
.source "SourceFile"


# static fields
.field public static final f:Lcom/sunia/HTREnginev2/u9k;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Locale;

.field public final c:Ljava/lang/reflect/Type;

.field public final d:Ljava/lang/Class;

.field public e:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/u9k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/sunia/HTREnginev2/u9k;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sunia/HTREnginev2/u9k;->f:Lcom/sunia/HTREnginev2/u9k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    const-class v0, Ljava/util/Optional;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/bak;-><init>(Ljava/lang/Class;)V

    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sunia/HTREnginev2/u9k;->c:Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u9k;->d:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u9k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/u9k;->b:Ljava/util/Locale;

    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)Lcom/sunia/HTREnginev2/u9k;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/sunia/HTREnginev2/u9k;->f:Lcom/sunia/HTREnginev2/u9k;

    return-object p0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/u9k;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/u9k;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    iget-object p2, p0, Lcom/sunia/HTREnginev2/u9k;->c:Ljava/lang/reflect/Type;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_0
    iget-object p4, p0, Lcom/sunia/HTREnginev2/u9k;->e:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/sunia/HTREnginev2/u9k;->a:Ljava/lang/String;

    if-eqz p4, :cond_1

    iget-object p5, p0, Lcom/sunia/HTREnginev2/u9k;->d:Ljava/lang/Class;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9k;->b:Ljava/util/Locale;

    invoke-static {p2, p5, p4, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sunia/HTREnginev2/u9k;->c:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u9k;->e:Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/sunia/HTREnginev2/u9k;->e:Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9k;->e:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/u9k;->c:Ljava/lang/reflect/Type;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_4

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    iget-object p2, p0, Lcom/sunia/HTREnginev2/u9k;->c:Ljava/lang/reflect/Type;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_0
    iget-object p4, p0, Lcom/sunia/HTREnginev2/u9k;->e:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/sunia/HTREnginev2/u9k;->a:Ljava/lang/String;

    if-eqz p4, :cond_1

    iget-object p5, p0, Lcom/sunia/HTREnginev2/u9k;->d:Ljava/lang/Class;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9k;->b:Ljava/util/Locale;

    invoke-static {p2, p5, p4, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sunia/HTREnginev2/u9k;->c:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u9k;->e:Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/sunia/HTREnginev2/u9k;->e:Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/u9k;->e:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/u9k;->c:Ljava/lang/reflect/Type;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_4

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
