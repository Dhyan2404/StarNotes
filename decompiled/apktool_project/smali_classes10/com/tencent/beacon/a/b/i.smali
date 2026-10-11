.class public Lcom/tencent/beacon/a/b/i;
.super Lcom/tencent/beacon/a/b/h;
.source "SourceFile"


# static fields
.field private static volatile e:Lcom/tencent/beacon/a/b/i;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/beacon/a/b/h;-><init>()V

    return-void
.end method

.method public static e()Lcom/tencent/beacon/a/b/i;
    .locals 2

    sget-object v0, Lcom/tencent/beacon/a/b/i;->e:Lcom/tencent/beacon/a/b/i;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/beacon/a/b/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/beacon/a/b/i;->e:Lcom/tencent/beacon/a/b/i;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/beacon/a/b/i;

    invoke-direct {v1}, Lcom/tencent/beacon/a/b/i;-><init>()V

    sput-object v1, Lcom/tencent/beacon/a/b/i;->e:Lcom/tencent/beacon/a/b/i;

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
    sget-object v0, Lcom/tencent/beacon/a/b/i;->e:Lcom/tencent/beacon/a/b/i;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "03300051017"

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "9462881773"

    return-object p0
.end method
