.class public final Lxcrash/XCrash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxcrash/XCrash$InitParameters;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Lxcrash/ILogger;

.field public static nativeLibDir:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/tze;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/tze;-><init>()V

    sput-object v0, Lxcrash/XCrash;->e:Lxcrash/ILogger;

    const/4 v0, 0x0

    sput-object v0, Lxcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Lxcrash/ILogger;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->e:Lxcrash/ILogger;

    return-object v0
.end method

.method public static getLogDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lxcrash/XCrash;->init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I
    .locals 33

    const-class v1, Lxcrash/XCrash;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-boolean v0, Lxcrash/XCrash;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit v1

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 4
    :try_start_1
    sput-boolean v0, Lxcrash/XCrash;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    .line 5
    monitor-exit v1

    const/4 v0, -0x1

    return v0

    .line 6
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v5, v3

    goto :goto_0

    :cond_2
    move-object/from16 v5, p0

    :goto_0
    if-nez p1, :cond_3

    .line 7
    new-instance v3, Lxcrash/XCrash$InitParameters;

    invoke-direct {v3}, Lxcrash/XCrash$InitParameters;-><init>()V

    goto :goto_1

    :cond_3
    move-object/from16 v3, p1

    .line 8
    :goto_1
    iget-object v4, v3, Lxcrash/XCrash$InitParameters;->d:Lxcrash/ILogger;

    if-eqz v4, :cond_4

    .line 9
    sput-object v4, Lxcrash/XCrash;->e:Lxcrash/ILogger;

    .line 10
    :cond_4
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 11
    sput-object v4, Lxcrash/XCrash;->b:Ljava/lang/String;

    .line 12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "unknown"

    .line 13
    sput-object v6, Lxcrash/XCrash;->b:Ljava/lang/String;

    .line 14
    :cond_5
    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 15
    invoke-static {v5}, Lxcrash/Util;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    .line 16
    :cond_6
    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    sput-object v6, Lxcrash/XCrash;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sput-object v6, Lxcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    .line 18
    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/tombstones"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    .line 20
    :cond_7
    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    sput-object v6, Lxcrash/XCrash;->d:Ljava/lang/String;

    .line 21
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 22
    iget-boolean v6, v3, Lxcrash/XCrash$InitParameters;->h:Z

    if-nez v6, :cond_9

    iget-boolean v6, v3, Lxcrash/XCrash$InitParameters;->H:Z

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    move-object v9, v4

    goto :goto_3

    .line 23
    :cond_9
    :goto_2
    invoke-static {v5, v8}, Lxcrash/Util;->p(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 24
    iget-boolean v7, v3, Lxcrash/XCrash$InitParameters;->H:Z

    if-eqz v7, :cond_b

    .line 25
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 26
    :cond_a
    iput-boolean v2, v3, Lxcrash/XCrash$InitParameters;->H:Z

    :cond_b
    move-object v9, v6

    .line 27
    :goto_3
    invoke-static {}, Lcom/sunia/HTREnginev2/ygg;->l()Lcom/sunia/HTREnginev2/ygg;

    move-result-object v10

    iget-object v11, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget v12, v3, Lxcrash/XCrash$InitParameters;->j:I

    iget v13, v3, Lxcrash/XCrash$InitParameters;->v:I

    iget v14, v3, Lxcrash/XCrash$InitParameters;->K:I

    iget v15, v3, Lxcrash/XCrash$InitParameters;->f:I

    iget v4, v3, Lxcrash/XCrash$InitParameters;->g:I

    iget v6, v3, Lxcrash/XCrash$InitParameters;->c:I

    move/from16 v16, v4

    move/from16 v17, v6

    invoke-virtual/range {v10 .. v17}, Lcom/sunia/HTREnginev2/ygg;->n(Ljava/lang/String;IIIIII)V

    .line 28
    iget-boolean v4, v3, Lxcrash/XCrash$InitParameters;->h:Z

    if-nez v4, :cond_c

    iget-boolean v4, v3, Lxcrash/XCrash$InitParameters;->t:Z

    if-nez v4, :cond_c

    iget-boolean v4, v3, Lxcrash/XCrash$InitParameters;->H:Z

    if-eqz v4, :cond_d

    .line 29
    :cond_c
    instance-of v4, v5, Landroid/app/Application;

    if-eqz v4, :cond_d

    .line 30
    invoke-static {}, Lcom/sunia/HTREnginev2/q6;->d()Lcom/sunia/HTREnginev2/q6;

    move-result-object v4

    move-object v6, v5

    check-cast v6, Landroid/app/Application;

    invoke-virtual {v4, v6}, Lcom/sunia/HTREnginev2/q6;->e(Landroid/app/Application;)V

    .line 31
    :cond_d
    iget-boolean v4, v3, Lxcrash/XCrash$InitParameters;->h:Z

    if-eqz v4, :cond_e

    .line 32
    invoke-static {}, Lxcrash/a;->c()Lxcrash/a;

    move-result-object v7

    sget-object v10, Lxcrash/XCrash;->b:Ljava/lang/String;

    iget-object v11, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    iget-object v12, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget-boolean v13, v3, Lxcrash/XCrash$InitParameters;->i:Z

    iget v14, v3, Lxcrash/XCrash$InitParameters;->k:I

    iget v15, v3, Lxcrash/XCrash$InitParameters;->l:I

    iget v4, v3, Lxcrash/XCrash$InitParameters;->m:I

    iget-boolean v6, v3, Lxcrash/XCrash$InitParameters;->n:Z

    iget-boolean v0, v3, Lxcrash/XCrash$InitParameters;->o:Z

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->p:Z

    move-object/from16 p0, v5

    iget v5, v3, Lxcrash/XCrash$InitParameters;->q:I

    move/from16 v20, v5

    iget-object v5, v3, Lxcrash/XCrash$InitParameters;->r:[Ljava/lang/String;

    move-object/from16 v21, v5

    iget-object v5, v3, Lxcrash/XCrash$InitParameters;->s:Lxcrash/ICrashCallback;

    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v22, v5

    invoke-virtual/range {v7 .. v22}, Lxcrash/a;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZZI[Ljava/lang/String;Lxcrash/ICrashCallback;)V

    goto :goto_4

    :cond_e
    move-object/from16 p0, v5

    .line 33
    :goto_4
    iget-boolean v0, v3, Lxcrash/XCrash$InitParameters;->H:Z

    .line 34
    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->t:Z

    if-nez v2, :cond_10

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 35
    :cond_10
    :goto_5
    invoke-static {}, Lxcrash/NativeHandler;->a()Lxcrash/NativeHandler;

    move-result-object v4

    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->e:Lxcrash/ILibLoader;

    sget-object v7, Lxcrash/XCrash;->b:Ljava/lang/String;

    iget-object v8, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    iget-object v9, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget-boolean v10, v3, Lxcrash/XCrash$InitParameters;->t:Z

    iget-boolean v11, v3, Lxcrash/XCrash$InitParameters;->u:Z

    iget v12, v3, Lxcrash/XCrash$InitParameters;->w:I

    iget v13, v3, Lxcrash/XCrash$InitParameters;->x:I

    iget v14, v3, Lxcrash/XCrash$InitParameters;->y:I

    iget-boolean v15, v3, Lxcrash/XCrash$InitParameters;->z:Z

    iget-boolean v0, v3, Lxcrash/XCrash$InitParameters;->A:Z

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->B:Z

    iget-boolean v5, v3, Lxcrash/XCrash$InitParameters;->C:Z

    move/from16 v17, v2

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->D:Z

    move/from16 v19, v2

    iget v2, v3, Lxcrash/XCrash$InitParameters;->E:I

    move/from16 v20, v2

    iget-object v2, v3, Lxcrash/XCrash$InitParameters;->F:[Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v3, Lxcrash/XCrash$InitParameters;->G:Lxcrash/ICrashCallback;

    move/from16 v16, v5

    iget-boolean v5, v3, Lxcrash/XCrash$InitParameters;->H:Z

    if-eqz v5, :cond_11

    const/16 v23, 0x1

    goto :goto_6

    :cond_11
    const/16 v23, 0x0

    :goto_6
    iget-boolean v5, v3, Lxcrash/XCrash$InitParameters;->I:Z

    move-object/from16 v22, v2

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->J:Z

    move/from16 v25, v2

    iget v2, v3, Lxcrash/XCrash$InitParameters;->L:I

    move/from16 v26, v2

    iget v2, v3, Lxcrash/XCrash$InitParameters;->M:I

    move/from16 v27, v2

    iget v2, v3, Lxcrash/XCrash$InitParameters;->N:I

    move/from16 v28, v2

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->O:Z

    move/from16 v29, v2

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->P:Z

    move/from16 v30, v2

    iget-object v2, v3, Lxcrash/XCrash$InitParameters;->Q:Lxcrash/ICrashCallback;

    iget-object v3, v3, Lxcrash/XCrash$InitParameters;->R:Lxcrash/ICrashCallback;

    move/from16 v24, v5

    move/from16 v18, v16

    move-object/from16 v5, p0

    move/from16 v16, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    invoke-virtual/range {v4 .. v32}, Lxcrash/NativeHandler;->c(Landroid/content/Context;Lxcrash/ILibLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;Lxcrash/ICrashCallback;ZZZIIIZZLxcrash/ICrashCallback;Lxcrash/ICrashCallback;)I

    move-result v2

    .line 36
    :goto_7
    invoke-static {}, Lcom/sunia/HTREnginev2/ygg;->l()Lcom/sunia/HTREnginev2/ygg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/ygg;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static testJavaCrash(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance p0, Lxcrash/XCrash$a;

    invoke-direct {p0}, Lxcrash/XCrash$a;-><init>()V

    const-string v0, "xcrash_test_java_thread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "test java exception"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static testNativeCrash(Z)V
    .locals 1

    invoke-static {}, Lxcrash/NativeHandler;->a()Lxcrash/NativeHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxcrash/NativeHandler;->e(Z)V

    return-void
.end method
