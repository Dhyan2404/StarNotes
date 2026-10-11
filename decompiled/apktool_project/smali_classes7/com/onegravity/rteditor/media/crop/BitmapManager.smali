.class public Lcom/onegravity/rteditor/media/crop/BitmapManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/crop/BitmapManager$b;,
        Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;,
        Lcom/onegravity/rteditor/media/crop/BitmapManager$State;
    }
.end annotation


# static fields
.field public static b:Lcom/onegravity/rteditor/media/crop/BitmapManager;


# instance fields
.field public final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Lcom/onegravity/rteditor/media/crop/BitmapManager$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/BitmapManager;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized instance()Lcom/onegravity/rteditor/media/crop/BitmapManager;
    .locals 2

    const-class v0, Lcom/onegravity/rteditor/media/crop/BitmapManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onegravity/rteditor/media/crop/BitmapManager;->b:Lcom/onegravity/rteditor/media/crop/BitmapManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/onegravity/rteditor/media/crop/BitmapManager;

    invoke-direct {v1}, Lcom/onegravity/rteditor/media/crop/BitmapManager;-><init>()V

    sput-object v1, Lcom/onegravity/rteditor/media/crop/BitmapManager;->b:Lcom/onegravity/rteditor/media/crop/BitmapManager;

    :cond_0
    sget-object v1, Lcom/onegravity/rteditor/media/crop/BitmapManager;->b:Lcom/onegravity/rteditor/media/crop/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Thread;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allowThreadDecoding(Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 2
    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->allowThreadDecoding(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->b(Ljava/lang/Thread;)Lcom/onegravity/rteditor/media/crop/BitmapManager$b;

    move-result-object p1

    sget-object v0, Lcom/onegravity/rteditor/media/crop/BitmapManager$State;->ALLOW:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

    iput-object v0, p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->a:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/Thread;)Lcom/onegravity/rteditor/media/crop/BitmapManager$b;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;-><init>(Lcom/onegravity/rteditor/media/crop/BitmapManager$a;)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Thread;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->a:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

    sget-object v1, Lcom/onegravity/rteditor/media/crop/BitmapManager$State;->CANCEL:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelThreadDecoding(Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 2
    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;)V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->b(Ljava/lang/Thread;)Lcom/onegravity/rteditor/media/crop/BitmapManager$b;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/onegravity/rteditor/media/crop/BitmapManager$State;->CANCEL:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

    iput-object v0, p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->a:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

    .line 6
    iget-object p1, p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->b:Landroid/graphics/BitmapFactory$Options;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->b(Ljava/lang/Thread;)Lcom/onegravity/rteditor/media/crop/BitmapManager$b;

    move-result-object p1

    iput-object p2, p1, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->d(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->c(Ljava/lang/Thread;)V

    return-object p1
.end method
