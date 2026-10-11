.class public Lcom/miui/penengine/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/penengine/a/b$c;,
        Lcom/miui/penengine/a/b$b;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "stylus_pencil_engine_version"

.field public static final B:Ljava/lang/String; = "com.xiaomi.touchservice"

.field public static final C:Ljava/lang/String; = "/system_ext/framework/xiaomi-pencilengine-pad.jar"

.field public static final D:Ljava/lang/String; = "com.xiaomi.touchservice.pencilengine.PencilEngineManagerService"

.field public static volatile m:Lcom/miui/penengine/a/b; = null

.field public static final n:Z

.field public static o:Z = false

.field public static p:Lcom/miui/penengine/e/e; = null

.field public static q:Lcom/miui/penengine/e/f; = null

.field public static r:Lcom/miui/penengine/e/j; = null

.field public static s:Lcom/miui/penengine/e/c; = null

.field public static t:Lcom/miui/penengine/e/i; = null

.field public static u:Ldalvik/system/PathClassLoader; = null

.field public static final v:I = 0x1

.field public static final w:I = 0x2

.field public static final x:I = 0x4

.field public static final y:Ljava/lang/String; = "MI-PencilManager"

.field public static final z:Ljava/lang/String; = "0.3.2"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/os/Handler;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Lcom/miui/penengine/g/a;

.field public i:Lcom/miui/penengine/e/a;

.field public j:Lcom/miui/penengine/e/h;

.field public final k:Landroid/content/ServiceConnection;

.field public final l:Lcom/miui/penengine/a/b$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/system_ext/framework/xiaomi-pencilengine-pad.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "MI-PencilManager"

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/penengine/a/b;->n:Z

    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v4, Lcom/miui/penengine/a/b;->u:Ldalvik/system/PathClassLoader;

    invoke-static {v4}, Lcom/miui/penengine/d/e;->a(Ldalvik/system/PathClassLoader;)I

    move-result v1

    if-eqz v1, :cond_0

    or-int/2addr v2, v1

    const-string v1, "LoadSysMotionEventInfo fail"

    invoke-static {v3, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/miui/penengine/a/b;->u:Ldalvik/system/PathClassLoader;

    invoke-static {v1}, Lcom/miui/penengine/e/g;->a(Ldalvik/system/PathClassLoader;)I

    move-result v1

    if-eqz v1, :cond_1

    or-int/2addr v2, v1

    const-string v1, "LoadSysStrokeEstimate fail"

    invoke-static {v3, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/miui/penengine/a/b;->u:Ldalvik/system/PathClassLoader;

    invoke-static {v1}, Lcom/miui/penengine/e/e;->a(Ldalvik/system/PathClassLoader;)I

    move-result v1

    if-eqz v1, :cond_2

    or-int/2addr v2, v1

    const-string v1, "LoadSysOneStroke fail"

    invoke-static {v3, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/miui/penengine/a/b;->u:Ldalvik/system/PathClassLoader;

    invoke-static {v1}, Lcom/miui/penengine/e/f;->a(Ldalvik/system/PathClassLoader;)I

    move-result v1

    if-eqz v1, :cond_3

    or-int/2addr v2, v1

    const-string v1, "LoadSysRecognize fail"

    invoke-static {v3, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/miui/penengine/a/b;->u:Ldalvik/system/PathClassLoader;

    invoke-static {v1}, Lcom/miui/penengine/e/i;->a(Ldalvik/system/PathClassLoader;)I

    move-result v1

    if-eqz v1, :cond_4

    or-int/2addr v2, v1

    const-string v1, "LoadPencilEngineManager fail"

    invoke-static {v3, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v2, :cond_5

    new-instance v1, Lcom/miui/penengine/e/e;

    invoke-direct {v1}, Lcom/miui/penengine/e/e;-><init>()V

    sput-object v1, Lcom/miui/penengine/a/b;->p:Lcom/miui/penengine/e/e;

    new-instance v1, Lcom/miui/penengine/e/f;

    invoke-direct {v1}, Lcom/miui/penengine/e/f;-><init>()V

    sput-object v1, Lcom/miui/penengine/a/b;->q:Lcom/miui/penengine/e/f;

    new-instance v1, Lcom/miui/penengine/e/j;

    invoke-direct {v1}, Lcom/miui/penengine/e/j;-><init>()V

    sput-object v1, Lcom/miui/penengine/a/b;->r:Lcom/miui/penengine/e/j;

    new-instance v1, Lcom/miui/penengine/e/g;

    invoke-direct {v1}, Lcom/miui/penengine/e/g;-><init>()V

    sput-object v1, Lcom/miui/penengine/a/b;->s:Lcom/miui/penengine/e/c;

    new-instance v1, Lcom/miui/penengine/e/i;

    invoke-direct {v1}, Lcom/miui/penengine/e/i;-><init>()V

    sput-object v1, Lcom/miui/penengine/a/b;->t:Lcom/miui/penengine/e/i;

    sput-boolean v0, Lcom/miui/penengine/a/b;->o:Z

    const-string v0, "System initialization successful"

    goto :goto_0

    :cond_5
    const-string v0, "System initialization failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    sput-boolean v2, Lcom/miui/penengine/a/b;->n:Z

    invoke-static {}, Lcom/miui/penengine/e/b;->c()Lcom/miui/penengine/e/b;

    move-result-object v0

    sput-object v0, Lcom/miui/penengine/a/b;->s:Lcom/miui/penengine/e/c;

    const-string v0, "Estimate initialization successful"

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/penengine/a/b;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    iput v0, p0, Lcom/miui/penengine/a/b;->g:I

    iput-boolean v0, p0, Lcom/miui/penengine/a/b;->e:Z

    iput-boolean v0, p0, Lcom/miui/penengine/a/b;->f:Z

    new-instance v0, Lcom/miui/penengine/a/b$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/penengine/a/b$b;-><init>(Lcom/miui/penengine/a/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/penengine/a/b;->b:Landroid/os/Handler;

    new-instance v0, Lcom/miui/penengine/e/a;

    invoke-direct {v0}, Lcom/miui/penengine/e/a;-><init>()V

    iput-object v0, p0, Lcom/miui/penengine/a/b;->i:Lcom/miui/penengine/e/a;

    new-instance v0, Lcom/miui/penengine/e/h;

    invoke-direct {v0}, Lcom/miui/penengine/e/h;-><init>()V

    iput-object v0, p0, Lcom/miui/penengine/a/b;->j:Lcom/miui/penengine/e/h;

    new-instance v0, Lcom/miui/penengine/a/b$c;

    invoke-direct {v0, p0}, Lcom/miui/penengine/a/b$c;-><init>(Lcom/miui/penengine/a/b;)V

    iput-object v0, p0, Lcom/miui/penengine/a/b;->l:Lcom/miui/penengine/a/b$c;

    new-instance v0, Lcom/miui/penengine/a/b$a;

    invoke-direct {v0, p0}, Lcom/miui/penengine/a/b$a;-><init>(Lcom/miui/penengine/a/b;)V

    iput-object v0, p0, Lcom/miui/penengine/a/b;->k:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic a(Lcom/miui/penengine/a/b;)Lcom/miui/penengine/g/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    return-object p0
.end method

.method public static synthetic a(Lcom/miui/penengine/a/b;Lcom/miui/penengine/g/a;)Lcom/miui/penengine/g/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    return-object p1
.end method

.method public static a()Ldalvik/system/PathClassLoader;
    .locals 2

    .line 5
    sget-boolean v0, Lcom/miui/penengine/a/b;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/penengine/a/b;->u:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MI-PencilManager"

    const-string v1, "Failed to getClassLoader"

    invoke-static {v0, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/miui/penengine/a/b;->u:Ldalvik/system/PathClassLoader;

    return-object v0
.end method

.method public static synthetic a(Lcom/miui/penengine/a/b;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/miui/penengine/a/b;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/miui/penengine/a/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/a/b;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic b(Lcom/miui/penengine/a/b;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/miui/penengine/a/b;->f:Z

    return p1
.end method

.method public static c()Lcom/miui/penengine/a/b;
    .locals 2

    .line 2
    sget-object v0, Lcom/miui/penengine/a/b;->m:Lcom/miui/penengine/a/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/penengine/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/penengine/a/b;->m:Lcom/miui/penengine/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/penengine/a/b;

    invoke-direct {v1}, Lcom/miui/penengine/a/b;-><init>()V

    sput-object v1, Lcom/miui/penengine/a/b;->m:Lcom/miui/penengine/a/b;

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
    sget-object v0, Lcom/miui/penengine/a/b;->m:Lcom/miui/penengine/a/b;

    return-object v0
.end method

.method public static synthetic c(Lcom/miui/penengine/a/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/a/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/miui/penengine/a/b;)Lcom/miui/penengine/a/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/a/b;->l:Lcom/miui/penengine/a/b$c;

    return-object p0
.end method

.method public static d()Lcom/miui/penengine/e/e;
    .locals 1

    .line 2
    sget-object v0, Lcom/miui/penengine/a/b;->p:Lcom/miui/penengine/e/e;

    return-object v0
.end method

.method public static e()Lcom/miui/penengine/e/f;
    .locals 2

    .line 2
    sget-object v0, Lcom/miui/penengine/a/b;->q:Lcom/miui/penengine/e/f;

    if-nez v0, :cond_0

    const-string v0, "MI-PencilManager"

    const-string v1, "Failed to getRecognizeInstance"

    invoke-static {v0, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/miui/penengine/a/b;->q:Lcom/miui/penengine/e/f;

    return-object v0
.end method

.method public static synthetic e(Lcom/miui/penengine/a/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/penengine/a/b;->e:Z

    return p0
.end method

.method public static f()Lcom/miui/penengine/e/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/miui/penengine/a/b;->s:Lcom/miui/penengine/e/c;

    if-nez v0, :cond_0

    const-string v0, "MI-PencilManager"

    const-string v1, "Failed to getStrokeEstimateInstance"

    invoke-static {v0, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/miui/penengine/a/b;->s:Lcom/miui/penengine/e/c;

    return-object v0
.end method

.method public static synthetic f(Lcom/miui/penengine/a/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/penengine/a/b;->f:Z

    return p0
.end method

.method public static synthetic g(Lcom/miui/penengine/a/b;)Lcom/miui/penengine/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/a/b;->i:Lcom/miui/penengine/e/a;

    return-object p0
.end method

.method public static synthetic h(Lcom/miui/penengine/a/b;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/a/b;->k:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static h()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/miui/penengine/a/b;->o:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/penengine/a/b;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic i(Lcom/miui/penengine/a/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/a/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static i()Lcom/miui/penengine/e/i;
    .locals 2

    .line 2
    sget-object v0, Lcom/miui/penengine/a/b;->t:Lcom/miui/penengine/e/i;

    if-nez v0, :cond_0

    const-string v0, "MI-PencilManager"

    const-string v1, "Failed to getSysPencilEngineManager"

    invoke-static {v0, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/miui/penengine/a/b;->t:Lcom/miui/penengine/e/i;

    return-object v0
.end method

.method public static j()Lcom/miui/penengine/e/j;
    .locals 2

    sget-object v0, Lcom/miui/penengine/a/b;->r:Lcom/miui/penengine/e/j;

    if-nez v0, :cond_0

    const-string v0, "MI-PencilManager"

    const-string v1, "Failed to getTouchFilmInstance"

    invoke-static {v0, v1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/miui/penengine/a/b;->r:Lcom/miui/penengine/e/j;

    return-object v0
.end method


# virtual methods
.method public a(Z)I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/miui/penengine/a/b;->e:Z

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/miui/penengine/g/a;->a(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail to enable or disable stylus posture, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MI-PencilManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public a(I)V
    .locals 6

    const-string v0, "Fail to unregister listener, "

    .line 4
    const-class v1, Lcom/miui/penengine/a/b;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/miui/penengine/a/b;->g:I

    not-int p1, p1

    and-int/2addr p1, v2

    iput p1, p0, Lcom/miui/penengine/a/b;->g:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/penengine/a/b;->d:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Lcom/miui/penengine/g/a;->a()V

    iget-object p1, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v2, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v4, "MI-PencilManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/penengine/a/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/penengine/a/b;->k:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/miui/penengine/a/b;->d:Z

    iput-object v2, p0, Lcom/miui/penengine/a/b;->a:Landroid/content/Context;

    const-string p0, "MI-PencilManager"

    const-string p1, "Unbound service"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public a(Landroid/content/Context;I)Z
    .locals 5

    const-string v0, "Is bound service = "

    .line 6
    const-class v1, Lcom/miui/penengine/a/b;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/miui/penengine/a/b;->g:I

    or-int/2addr p2, v2

    iput p2, p0, Lcom/miui/penengine/a/b;->g:I

    iget-boolean p2, p0, Lcom/miui/penengine/a/b;->d:Z

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    monitor-exit v1

    return v2

    :cond_0
    iput-object p1, p0, Lcom/miui/penengine/a/b;->a:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance p2, Landroid/content/ComponentName;

    const-string v3, "com.xiaomi.touchservice"

    const-string v4, "com.xiaomi.touchservice.pencilengine.PencilEngineManagerService"

    invoke-direct {p2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/penengine/a/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/penengine/a/b;->k:Landroid/content/ServiceConnection;

    invoke-virtual {p2, p1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iget-object p2, p0, Lcom/miui/penengine/a/b;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "stylus_pencil_engine_version"

    invoke-static {p2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v3, "0.3.2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/penengine/a/b;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/penengine/a/b;->c:Ljava/lang/String;

    :cond_1
    iput-boolean p1, p0, Lcom/miui/penengine/a/b;->d:Z

    const-string p2, "MI-PencilManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", is support notify system = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/penengine/a/b;->c:Ljava/lang/String;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Z)I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/penengine/a/b;->f:Z

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x2

    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/miui/penengine/g/a;->a(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail to enable or disable touch film, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MI-PencilManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public b()Lcom/miui/penengine/e/a;
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/miui/penengine/a/b;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/penengine/a/b;->i:Lcom/miui/penengine/e/a;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public binderDied()V
    .locals 3

    iget-object p0, p0, Lcom/miui/penengine/a/b;->b:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p0, "MI-PencilManager"

    const-string v0, "Service died, try to reconnect"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g()Lcom/miui/penengine/e/h;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/miui/penengine/a/b;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/penengine/a/b;->j:Lcom/miui/penengine/e/h;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public k()I
    .locals 3

    iget-object p0, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1, v1}, Lcom/miui/penengine/g/a;->a(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to trigger color picking, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MI-PencilManager"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
