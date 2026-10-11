.class public Lcom/tencent/qimei/t/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/t/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Lcom/tencent/qimei/sdk/Qimei;

.field public h:Z

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/t/a;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qimei/t/a;->d:Z

    iput-boolean v0, p0, Lcom/tencent/qimei/t/a;->e:Z

    iput v0, p0, Lcom/tencent/qimei/t/a;->f:I

    iput-object p1, p0, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/t/a;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/t/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/t/a;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/t/a;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/t/a;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/t/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public declared-synchronized a()Z
    .locals 10

    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qimei/t/a;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qimei/t/a;->d:Z

    goto :goto_4

    .line 4
    :cond_0
    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/y/d;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v7, "a_i_t"

    invoke-virtual {v0, v7}, Lcom/tencent/qimei/l/g;->c(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v7, "a_i_t"

    invoke-virtual {v0, v7, v5, v6}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;J)V

    goto :goto_2

    :cond_2
    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    iput-boolean v1, p0, Lcom/tencent/qimei/t/a;->h:Z

    .line 6
    :goto_4
    iput-boolean v0, p0, Lcom/tencent/qimei/t/a;->d:Z

    .line 7
    iget-boolean v0, p0, Lcom/tencent/qimei/t/a;->i:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tencent/qimei/t/a;->f:I

    goto/16 :goto_8

    .line 8
    :cond_4
    const-class v0, Lcom/tencent/qimei/t/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    const-string v5, "cm_"

    invoke-static {v5}, Lcom/tencent/qimei/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/tencent/qimei/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/m/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/tencent/qimei/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    goto :goto_5

    :cond_6
    move-wide v6, v3

    .line 11
    :goto_5
    iget-object v0, p0, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v8, "m_f_m_t"

    invoke-virtual {v0, v8}, Lcom/tencent/qimei/l/g;->c(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v0, v8, v3

    if-nez v0, :cond_8

    cmp-long v0, v6, v3

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    .line 12
    :cond_7
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :catch_1
    :try_start_4
    iget-object v0, p0, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v6, "m_f_m_t"

    invoke-virtual {v0, v6, v3, v4}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;J)V

    goto :goto_6

    :cond_8
    cmp-long v0, v6, v3

    if-nez v0, :cond_9

    const/4 v0, 0x2

    goto :goto_7

    :cond_9
    cmp-long v0, v6, v8

    if-gez v0, :cond_a

    const/4 v0, 0x3

    goto :goto_7

    :cond_a
    if-lez v0, :cond_b

    const/4 v0, 0x4

    goto :goto_7

    :cond_b
    :goto_6
    move v0, v2

    :goto_7
    if-lez v0, :cond_d

    .line 14
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 15
    :cond_c
    iget-object v3, p0, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v3

    const-string v4, "m_f_m_t"

    invoke-virtual {v3, v4}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;)V

    :cond_d
    iput-boolean v1, p0, Lcom/tencent/qimei/t/a;->i:Z

    .line 16
    :goto_8
    iput v0, p0, Lcom/tencent/qimei/t/a;->f:I

    iget-boolean v3, p0, Lcom/tencent/qimei/t/a;->d:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/tencent/qimei/t/a;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_f

    :cond_e
    if-lez v0, :cond_f

    goto :goto_9

    :cond_f
    move v1, v2

    :goto_9
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
