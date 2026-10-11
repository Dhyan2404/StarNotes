.class public Lcom/tencent/cos/xml/utils/GsonSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static gsonInstance:Lcom/google/gson/Gson;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/gson/Gson;
    .locals 3

    const-class v0, Lcom/tencent/cos/xml/utils/GsonSingleton;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/cos/xml/utils/GsonSingleton;->gsonInstance:Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v2, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v1, v2}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    sput-object v1, Lcom/tencent/cos/xml/utils/GsonSingleton;->gsonInstance:Lcom/google/gson/Gson;

    :cond_0
    sget-object v1, Lcom/tencent/cos/xml/utils/GsonSingleton;->gsonInstance:Lcom/google/gson/Gson;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
