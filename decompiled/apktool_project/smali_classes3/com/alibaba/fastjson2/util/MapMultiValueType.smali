.class public final Lcom/alibaba/fastjson2/util/MapMultiValueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Map;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field public final mapType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->e:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->mapType:Ljava/lang/Class;

    .line 4
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->e:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->mapType:Ljava/lang/Class;

    .line 8
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/util/MapMultiValueType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/util/MapMultiValueType;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson2/util/MapMultiValueType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "TT;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/util/MapMultiValueType;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/util/MapMultiValueType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/util/MapMultiValueType;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map;)Lcom/alibaba/fastjson2/util/MapMultiValueType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/util/MapMultiValueType;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public getType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0
.end method
