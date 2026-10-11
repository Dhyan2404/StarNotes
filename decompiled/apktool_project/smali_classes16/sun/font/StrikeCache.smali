.class public final Lsun/font/StrikeCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/StrikeCache$WeakDisposerRef;,
        Lsun/font/StrikeCache$SoftDisposerRef;,
        Lsun/font/StrikeCache$DisposableStrike;
    }
.end annotation


# static fields
.field static MINSTRIKES:I

.field static boundsOffset:I

.field static cacheCellOffset:I

.field static cacheRefTypeWeak:Z

.field static disposeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/font/GlyphDisposedListener;",
            ">;"
        }
    .end annotation
.end field

.field static glyphInfoSize:I

.field static heightOffset:I

.field static invisibleGlyphPtr:J

.field static managedOffset:I

.field static nativeAddressSize:I

.field static pixelDataOffset:I

.field static recentStrikeIndex:I

.field static recentStrikes:[Lsun/font/FontStrike;

.field static refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static rowBytesOffset:I

.field static topLeftXOffset:I

.field static topLeftYOffset:I

.field static final unsafe:Ljdk/internal/misc/NeoUnsafe;

.field static widthOffset:I

.field static xAdvanceOffset:I

.field static yAdvanceOffset:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Ljdk/internal/misc/NeoUnsafe;->getUnsafe()Ljdk/internal/misc/NeoUnsafe;

    move-result-object v0

    sput-object v0, Lsun/font/StrikeCache;->unsafe:Ljdk/internal/misc/NeoUnsafe;

    invoke-static {}, Lsun/java2d/Disposer;->getQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    sput-object v0, Lsun/font/StrikeCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lsun/font/StrikeCache;->disposeListeners:Ljava/util/ArrayList;

    const/16 v0, 0x8

    sput v0, Lsun/font/StrikeCache;->MINSTRIKES:I

    const/4 v2, 0x0

    sput v2, Lsun/font/StrikeCache;->recentStrikeIndex:I

    const/16 v3, 0xd

    new-array v3, v3, [J

    invoke-static {v3}, Lsun/font/StrikeCache;->getGlyphCacheDescription([J)V

    const-wide/16 v4, 0x4

    aput-wide v4, v3, v2

    long-to-int v2, v4

    sput v2, Lsun/font/StrikeCache;->nativeAddressSize:I

    aget-wide v4, v3, v1

    long-to-int v1, v4

    sput v1, Lsun/font/StrikeCache;->glyphInfoSize:I

    const/4 v1, 0x2

    aget-wide v4, v3, v1

    long-to-int v1, v4

    sput v1, Lsun/font/StrikeCache;->xAdvanceOffset:I

    const/4 v1, 0x3

    aget-wide v4, v3, v1

    long-to-int v1, v4

    sput v1, Lsun/font/StrikeCache;->yAdvanceOffset:I

    const/4 v1, 0x4

    aget-wide v4, v3, v1

    long-to-int v4, v4

    sput v4, Lsun/font/StrikeCache;->widthOffset:I

    const/4 v4, 0x5

    aget-wide v4, v3, v4

    long-to-int v4, v4

    sput v4, Lsun/font/StrikeCache;->heightOffset:I

    const/4 v4, 0x6

    aget-wide v4, v3, v4

    long-to-int v4, v4

    sput v4, Lsun/font/StrikeCache;->rowBytesOffset:I

    const/4 v4, 0x7

    aget-wide v4, v3, v4

    long-to-int v4, v4

    sput v4, Lsun/font/StrikeCache;->topLeftXOffset:I

    aget-wide v4, v3, v0

    long-to-int v0, v4

    sput v0, Lsun/font/StrikeCache;->topLeftYOffset:I

    const/16 v0, 0x9

    aget-wide v4, v3, v0

    long-to-int v0, v4

    sput v0, Lsun/font/StrikeCache;->pixelDataOffset:I

    const/16 v0, 0xa

    aget-wide v4, v3, v0

    sput-wide v4, Lsun/font/StrikeCache;->invisibleGlyphPtr:J

    const/16 v0, 0xb

    aget-wide v4, v3, v0

    long-to-int v0, v4

    sput v0, Lsun/font/StrikeCache;->cacheCellOffset:I

    const/16 v0, 0xc

    aget-wide v3, v3, v0

    long-to-int v0, v3

    sput v0, Lsun/font/StrikeCache;->managedOffset:I

    if-lt v2, v1, :cond_0

    new-instance v0, Lsun/font/StrikeCache$1;

    invoke-direct {v0}, Lsun/font/StrikeCache$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected address size for font data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lsun/font/StrikeCache;->nativeAddressSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lsun/font/FontStrikeDisposer;)V
    .locals 0

    invoke-static {p0}, Lsun/font/StrikeCache;->doDispose(Lsun/font/FontStrikeDisposer;)V

    return-void
.end method

.method public static addGlyphDisposedListener(Lsun/font/GlyphDisposedListener;)V
    .locals 2

    sget-object v0, Lsun/font/StrikeCache;->disposeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/StrikeCache;->disposeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static disposeStrike(Lsun/font/FontStrikeDisposer;)V
    .locals 2

    sget-boolean v0, Lsun/java2d/Disposer;->pollingQueue:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lsun/font/StrikeCache;->doDispose(Lsun/font/FontStrikeDisposer;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    instance-of v1, v0, Lsun/java2d/pipe/hw/AccelGraphicsConfig;

    if-eqz v1, :cond_1

    check-cast v0, Lsun/java2d/pipe/hw/AccelGraphicsConfig;

    invoke-interface {v0}, Lsun/java2d/pipe/hw/BufferedContextProvider;->getContext()Lsun/java2d/pipe/BufferedContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsun/java2d/pipe/BufferedContext;->getRenderQueue()Lsun/java2d/pipe/RenderQueue;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    new-instance v1, Lsun/font/StrikeCache$2;

    invoke-direct {v1, p0}, Lsun/font/StrikeCache$2;-><init>(Lsun/font/FontStrikeDisposer;)V

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->flushAndInvokeNow(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw p0

    :cond_2
    invoke-static {p0}, Lsun/font/StrikeCache;->doDispose(Lsun/font/FontStrikeDisposer;)V

    :goto_1
    return-void
.end method

.method private static doDispose(Lsun/font/FontStrikeDisposer;)V
    .locals 8

    iget-object v0, p0, Lsun/font/FontStrikeDisposer;->intGlyphImages:[I

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    invoke-static {v0, v1, v2}, Lsun/font/StrikeCache;->freeCachedIntMemory([IJ)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lsun/font/FontStrikeDisposer;->longGlyphImages:[J

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    invoke-static {v0, v1, v2}, Lsun/font/StrikeCache;->freeCachedLongMemory([JJ)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lsun/font/FontStrikeDisposer;->segIntGlyphImages:[[I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    move v0, v4

    :goto_0
    iget-object v5, p0, Lsun/font/FontStrikeDisposer;->segIntGlyphImages:[[I

    array-length v6, v5

    if-ge v0, v6, :cond_3

    aget-object v5, v5, v0

    if-eqz v5, :cond_2

    iget-wide v6, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    invoke-static {v5, v6, v7}, Lsun/font/StrikeCache;->freeCachedIntMemory([IJ)V

    iput-wide v2, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    iget-object v5, p0, Lsun/font/FontStrikeDisposer;->segIntGlyphImages:[[I

    aput-object v1, v5, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_9

    new-array p0, v4, [I

    invoke-static {p0, v0, v1}, Lsun/font/StrikeCache;->freeCachedIntMemory([IJ)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lsun/font/FontStrikeDisposer;->segLongGlyphImages:[[J

    if-eqz v0, :cond_7

    move v0, v4

    :goto_1
    iget-object v5, p0, Lsun/font/FontStrikeDisposer;->segLongGlyphImages:[[J

    array-length v6, v5

    if-ge v0, v6, :cond_6

    aget-object v5, v5, v0

    if-eqz v5, :cond_5

    iget-wide v6, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    invoke-static {v5, v6, v7}, Lsun/font/StrikeCache;->freeCachedLongMemory([JJ)V

    iput-wide v2, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    iget-object v5, p0, Lsun/font/FontStrikeDisposer;->segLongGlyphImages:[[J

    aput-object v1, v5, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-wide v0, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_9

    new-array p0, v4, [J

    invoke-static {p0, v0, v1}, Lsun/font/StrikeCache;->freeCachedLongMemory([JJ)V

    goto :goto_2

    :cond_7
    iget-wide v0, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    invoke-static {}, Lsun/font/StrikeCache;->longAddresses()Z

    move-result v0

    if-eqz v0, :cond_8

    new-array v0, v4, [J

    iget-wide v1, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    invoke-static {v0, v1, v2}, Lsun/font/StrikeCache;->freeCachedLongMemory([JJ)V

    goto :goto_2

    :cond_8
    new-array v0, v4, [I

    iget-wide v1, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    invoke-static {v0, v1, v2}, Lsun/font/StrikeCache;->freeCachedIntMemory([IJ)V

    :cond_9
    :goto_2
    return-void
.end method

.method private static freeCachedIntMemory([IJ)V
    .locals 7

    sget-object v0, Lsun/font/StrikeCache;->disposeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/StrikeCache;->disposeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget v3, p0, v2

    if-eqz v3, :cond_1

    sget-object v4, Lsun/font/StrikeCache;->unsafe:Ljdk/internal/misc/NeoUnsafe;

    sget v5, Lsun/font/StrikeCache;->managedOffset:I

    add-int/2addr v3, v5

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljdk/internal/misc/NeoUnsafe;->getByte(J)B

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    aget v3, p0, v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lsun/font/StrikeCache;->notifyDisposeListeners(Ljava/util/ArrayList;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p1, p2}, Lsun/font/StrikeCache;->freeIntMemory([IJ)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static freeCachedLongMemory([JJ)V
    .locals 8

    sget-object v0, Lsun/font/StrikeCache;->disposeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/StrikeCache;->disposeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    sget-object v5, Lsun/font/StrikeCache;->unsafe:Ljdk/internal/misc/NeoUnsafe;

    sget v6, Lsun/font/StrikeCache;->managedOffset:I

    int-to-long v6, v6

    add-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Ljdk/internal/misc/NeoUnsafe;->getByte(J)B

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lsun/font/StrikeCache;->notifyDisposeListeners(Ljava/util/ArrayList;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p1, p2}, Lsun/font/StrikeCache;->freeLongMemory([JJ)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static freeIntMemory([IJ)V
    .locals 0

    return-void
.end method

.method public static freeIntPointer(I)V
    .locals 0

    return-void
.end method

.method private static freeLongMemory([JJ)V
    .locals 0

    return-void
.end method

.method public static freeLongPointer(J)V
    .locals 0

    return-void
.end method

.method public static getGlyphCacheDescription([J)V
    .locals 0

    return-void
.end method

.method public static getStrikeRef(Lsun/font/FontStrike;)Ljava/lang/ref/Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/font/FontStrike;",
            ")",
            "Ljava/lang/ref/Reference<",
            "Lsun/font/FontStrike;",
            ">;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lsun/font/StrikeCache;->cacheRefTypeWeak:Z

    invoke-static {p0, v0}, Lsun/font/StrikeCache;->getStrikeRef(Lsun/font/FontStrike;Z)Ljava/lang/ref/Reference;

    move-result-object p0

    return-object p0
.end method

.method public static getStrikeRef(Lsun/font/FontStrike;Z)Ljava/lang/ref/Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/font/FontStrike;",
            "Z)",
            "Ljava/lang/ref/Reference<",
            "Lsun/font/FontStrike;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lsun/font/FontStrike;->disposer:Lsun/font/FontStrikeDisposer;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Lsun/font/StrikeCache$WeakDisposerRef;

    invoke-direct {p1, p0}, Lsun/font/StrikeCache$WeakDisposerRef;-><init>(Lsun/font/FontStrike;)V

    return-object p1

    .line 6
    :cond_2
    new-instance p1, Lsun/font/StrikeCache$SoftDisposerRef;

    invoke-direct {p1, p0}, Lsun/font/StrikeCache$SoftDisposerRef;-><init>(Lsun/font/FontStrike;)V

    return-object p1
.end method

.method private static longAddresses()Z
    .locals 2

    sget v0, Lsun/font/StrikeCache;->nativeAddressSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static notifyDisposeListeners(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lsun/font/StrikeCache;->disposeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/GlyphDisposedListener;

    invoke-interface {v1, p0}, Lsun/font/GlyphDisposedListener;->glyphDisposed(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static refStrike(Lsun/font/FontStrike;)V
    .locals 2

    sget v0, Lsun/font/StrikeCache;->recentStrikeIndex:I

    sget-object v1, Lsun/font/StrikeCache;->recentStrikes:[Lsun/font/FontStrike;

    aput-object p0, v1, v0

    add-int/lit8 v0, v0, 0x1

    sget p0, Lsun/font/StrikeCache;->MINSTRIKES:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput v0, Lsun/font/StrikeCache;->recentStrikeIndex:I

    return-void
.end method
