.class public Lcom/tencent/qimei/y/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/y/c;


# static fields
.field public static volatile a:Lcom/tencent/qimei/y/d;


# instance fields
.field public b:Lcom/tencent/qimei/y/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/tencent/qimei/y/d;
    .locals 2

    sget-object v0, Lcom/tencent/qimei/y/d;->a:Lcom/tencent/qimei/y/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qimei/y/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/y/d;->a:Lcom/tencent/qimei/y/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qimei/y/d;

    invoke-direct {v1}, Lcom/tencent/qimei/y/d;-><init>()V

    sput-object v1, Lcom/tencent/qimei/y/d;->a:Lcom/tencent/qimei/y/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qimei/y/d;->a:Lcom/tencent/qimei/y/d;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tencent/qimei/y/c;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/tencent/qimei/x/b;->a()Lcom/tencent/qimei/x/b;

    move-result-object v0

    const-string v1, "SdkInfo"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/x/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/z/a;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/qimei/y/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/qimei/y/c;

    iput-object v0, p0, Lcom/tencent/qimei/y/d;->b:Lcom/tencent/qimei/y/c;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized c()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qimei/y/d;->a()Lcom/tencent/qimei/y/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/tencent/qimei/y/c;->c()Landroid/content/Context;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qimei/y/d;->a()Lcom/tencent/qimei/y/c;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/tencent/qimei/y/c;->getSdkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qimei/y/d;->a()Lcom/tencent/qimei/y/c;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/tencent/qimei/y/c;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
