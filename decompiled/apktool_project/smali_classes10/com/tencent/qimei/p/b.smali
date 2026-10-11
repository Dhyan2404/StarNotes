.class public Lcom/tencent/qimei/p/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tencent/qimei/p/b;


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qimei/p/b;->b:Z

    return-void
.end method

.method public static a()Lcom/tencent/qimei/p/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/qimei/p/b;->a:Lcom/tencent/qimei/p/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qimei/p/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/p/b;->a:Lcom/tencent/qimei/p/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qimei/p/b;

    invoke-direct {v1}, Lcom/tencent/qimei/p/b;-><init>()V

    sput-object v1, Lcom/tencent/qimei/p/b;->a:Lcom/tencent/qimei/p/b;

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
    sget-object v0, Lcom/tencent/qimei/p/b;->a:Lcom/tencent/qimei/p/b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/qimei/ac/b;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/tencent/qimei/o/d;->a(Ljava/lang/String;)Lcom/tencent/qimei/o/d;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v2

    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object v3

    new-instance v4, Lcom/tencent/qimei/y/a;

    invoke-direct {v4, p1}, Lcom/tencent/qimei/y/a;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Lcom/tencent/qimei/codez/FalconSdk;->getInstance()Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v6

    .line 6
    iget-object v6, v6, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    .line 7
    iget-object v6, v6, Lcom/tencent/qimei/ac/b;->n:Ljava/lang/String;

    .line 8
    invoke-interface {v5, v6}, Lcom/tencent/qimei/codez/IFalconSdk;->setSoPath(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :try_start_4
    sget-object v6, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_APP_KEY:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v6}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v5

    sget-object v6, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_Q16:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v6}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tencent/qimei/y/a;->g()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v5

    sget-object v6, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_Q36:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v6}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tencent/qimei/y/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v5

    sget-object v6, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_CHANNEL_ID:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v6}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v4}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v7, :cond_1

    :try_start_5
    const-string v7, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :cond_1
    :try_start_6
    invoke-virtual {v4}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/qimei/y/b;->b()Ljava/lang/String;

    move-result-object v7

    .line 10
    :goto_0
    invoke-interface {v5, v6, v7}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v5

    sget-object v6, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_USER_ID_PARAM:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v6}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v4}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v7, :cond_2

    :try_start_7
    const-string v4, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :cond_2
    :try_start_8
    invoke-virtual {v4}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/qimei/y/b;->d()Ljava/lang/String;

    move-result-object v4

    .line 12
    :goto_1
    invoke-interface {v5, v6, v4}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v4

    sget-object v5, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_EI:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v5}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/qimei/o/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v4

    sget-object v5, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_SI:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v5}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/qimei/o/d;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v4

    sget-object v5, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_MC:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v5}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/qimei/o/d;->f()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v4

    sget-object v5, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_CD:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v5}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/qimei/o/d;->g()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v4

    sget-object v5, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_NET_WORK_TYPE:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v5}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tencent/qimei/e/c;->m()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v4

    sget-object v5, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_AD:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v5}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/qimei/o/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v4

    sget-object v5, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_LOCAL_IP:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v5}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tencent/qimei/e/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v2

    sget-object v4, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_APP_VERSION:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v4}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/qimei/e/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v2

    sget-object v4, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_QM_VERSION:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v4}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/qimei/y/d;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v2

    sget-object v4, Lcom/tencent/qimei/codez/shell/UserInfoType;->TYPE_OD:Lcom/tencent/qimei/codez/shell/UserInfoType;

    invoke-virtual {v4}, Lcom/tencent/qimei/codez/shell/UserInfoType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/qimei/o/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/tencent/qimei/codez/IFalconSdk;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/qimei/y/d;->c()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tencent/qimei/codez/IFalconSdk;->init(Landroid/content/Context;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 13
    :try_start_9
    sget-boolean v2, Lcom/tencent/qimei/m/b;->a:Z

    if-eqz v2, :cond_3

    .line 14
    invoke-static {v0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    move v0, v1

    :goto_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qimei/p/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "SDK_INIT"

    const-string v3, "Falcon %s init(appKey: %s)\uff0cr:%b"

    invoke-static {v1, v3, v2}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 15
    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    .line 17
    invoke-virtual {v1}, Lcom/tencent/qimei/ac/b;->l()I

    move-result v1

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    new-instance v1, Lcom/tencent/qimei/p/a;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qimei/p/a;-><init>(Lcom/tencent/qimei/p/b;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/qimei/d/a;->a(JLjava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_4
    monitor-exit p0

    return v0

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/qimei/codez/FalconSdk;->getInstance()Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/qimei/codez/IFalconSdk;->getVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/qimei/ac/b;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/qimei/p/b;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/qimei/codez/FalconSdk;->getInstance()Lcom/tencent/qimei/codez/IFalconSdk;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qimei/codez/IFalconSdk;->report()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qimei/p/b;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    iput-boolean v1, p0, Lcom/tencent/qimei/p/b;->b:Z

    .line 4
    sget-boolean v3, Lcom/tencent/qimei/m/b;->a:Z

    if-eqz v3, :cond_2

    .line 5
    invoke-static {v0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    iget-boolean p1, p0, Lcom/tencent/qimei/p/b;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "REPORT"

    const-string v1, "Falcon report(appKey: %s)\uff0cr:%b"

    invoke-static {p1, v1, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/tencent/qimei/p/b;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
