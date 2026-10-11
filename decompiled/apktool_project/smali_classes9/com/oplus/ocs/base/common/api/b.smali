.class public Lcom/oplus/ocs/base/common/api/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/oplus/ocs/base/common/api/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/oplus/ocs/base/common/api/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/oplus/ocs/base/common/api/b;->a:Lcom/oplus/ocs/base/common/api/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/oplus/ocs/base/common/api/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/oplus/ocs/base/common/api/b;->a:Lcom/oplus/ocs/base/common/api/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/oplus/ocs/base/common/api/b;

    invoke-direct {v1}, Lcom/oplus/ocs/base/common/api/b;-><init>()V

    sput-object v1, Lcom/oplus/ocs/base/common/api/b;->a:Lcom/oplus/ocs/base/common/api/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/ocs/base/common/api/b;->a:Lcom/oplus/ocs/base/common/api/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/InternalClient;Lcom/oplus/ocs/base/IAuthenticationListener;)Lcom/oplus/ocs/base/common/api/e;
    .locals 1

    const-string v0, "com.oplus.ocs"

    .line 11
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/ServiceCheck;->check(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lcom/oplus/ocs/base/common/api/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/ocs/base/common/api/h;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/InternalClient;Lcom/oplus/ocs/base/IAuthenticationListener;)V

    return-object v0

    :cond_0
    const-string v0, "com.coloros.ocs.opencapabilityservice"

    .line 13
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/ServiceCheck;->check(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Lcom/oplus/ocs/base/common/api/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/ocs/base/common/api/f;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/InternalClient;Lcom/oplus/ocs/base/IAuthenticationListener;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/ocs/base/common/api/c;Lcom/oplus/ocs/base/common/api/k;)Lcom/oplus/ocs/base/common/api/e;
    .locals 1

    const-string v0, "com.oplus.ocs"

    .line 7
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/ServiceCheck;->check(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/oplus/ocs/base/common/api/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/ocs/base/common/api/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/ocs/base/common/api/c;Lcom/oplus/ocs/base/common/api/k;)V

    return-object v0

    :cond_0
    const-string v0, "com.coloros.ocs.opencapabilityservice"

    .line 9
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/ServiceCheck;->check(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lcom/oplus/ocs/base/common/api/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/ocs/base/common/api/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/ocs/base/common/api/c;Lcom/oplus/ocs/base/common/api/k;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
