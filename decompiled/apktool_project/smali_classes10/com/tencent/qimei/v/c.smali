.class public Lcom/tencent/qimei/v/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "qAucMjh7lsNepLGw"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/qimei/sdk/S/DataFormatter;
    .locals 7

    new-instance v0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;-><init>()V

    const-class v1, Lcom/tencent/qimei/sdk/S/DataFormatter;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Lcom/tencent/qimei/sdk/S/DataFormatter;

    new-instance v4, Lcom/tencent/qimei/f/b;

    invoke-direct {v4}, Lcom/tencent/qimei/f/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "spread_data"

    :try_start_1
    new-instance v6, Lcom/tencent/qimei/v/b;

    invoke-direct {v6, p0, v3}, Lcom/tencent/qimei/v/b;-><init>(Lcom/tencent/qimei/v/c;[Lcom/tencent/qimei/sdk/S/DataFormatter;)V

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v4, v5, v6, p0}, Lcom/tencent/qimei/f/b;->a(Ljava/lang/String;Lcom/tencent/qimei/f/a;I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "SpreadQM"

    const-string v5, "readFromCache blockRead result %b"

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v6, 0x0

    aput-object p0, v2, v6

    invoke-static {v4, v5, v2}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object p0, v3, v6

    if-eqz p0, :cond_0

    move-object v0, p0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/DataFormatter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qimei/sdk/S/DataFormatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    new-instance p0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {p0}, Lcom/tencent/qimei/sdk/S/DataFormatter;-><init>()V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/DataFormatter;
    .locals 2

    .line 2
    new-instance v0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/tencent/qimei/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/qimei/v/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public a(Lcom/tencent/qimei/sdk/S/DataFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    const-string p0, ""

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/qimei/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public a(Lcom/tencent/qimei/sdk/S/DataFormatter;)V
    .locals 5
    .param p1    # Lcom/tencent/qimei/sdk/S/DataFormatter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/tencent/qimei/sdk/S/DataFormatter;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qimei/v/c;->a()Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object v1

    new-instance v2, Lcom/tencent/qimei/f/b;

    invoke-direct {v2}, Lcom/tencent/qimei/f/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "spread_data"

    :try_start_1
    new-instance v4, Lcom/tencent/qimei/v/a;

    invoke-direct {v4, p0, v1, p1}, Lcom/tencent/qimei/v/a;-><init>(Lcom/tencent/qimei/v/c;Lcom/tencent/qimei/sdk/S/DataFormatter;Lcom/tencent/qimei/sdk/S/DataFormatter;)V

    const/4 p0, 0x3

    .line 6
    invoke-virtual {v2, v3, v4, p0}, Lcom/tencent/qimei/f/b;->a(Ljava/lang/String;Lcom/tencent/qimei/f/a;I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "SpreadQM"

    const-string v1, "writeToCache blockWrite result %b"

    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1, v1, v2}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
