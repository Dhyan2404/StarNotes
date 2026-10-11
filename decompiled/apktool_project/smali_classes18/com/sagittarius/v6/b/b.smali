.class public Lcom/sagittarius/v6/b/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 2

    const/16 v1, 0x19

    const-class v0, Lcom/sagittarius/v6/b/b;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sagittarius/v6/b/b;

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/sagittarius/v6/b/b;->a()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-le v0, v1, :cond_4

    :cond_2
    :try_start_2
    invoke-static {p0, p1}, Lcom/sagittarius/v6/b/e;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-class v0, Lcom/sagittarius/v6/b/b;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {p0, p1}, Lcom/sagittarius/v6/b/d;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :goto_1
    const-class v0, Lcom/sagittarius/v6/b/b;

    monitor-exit v0

    goto :goto_0

    :cond_4
    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    :try_start_5
    invoke-static {p0, p1}, Lcom/sagittarius/v6/b/d;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {p0, p1}, Lcom/sagittarius/v6/b/c;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    const-class v1, Lcom/sagittarius/v6/b/b;

    monitor-exit v1

    throw v0

    :cond_5
    :try_start_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    invoke-static {p0, p1}, Lcom/sagittarius/v6/b/c;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1
.end method
