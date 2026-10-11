.class Lsun/font/FontStrikeDisposer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;
.implements Lsun/java2d/Disposer$PollDisposable;


# instance fields
.field comp:Z

.field desc:Lsun/font/FontStrikeDesc;

.field disposed:Z

.field intGlyphImages:[I

.field longGlyphImages:[J

.field pScalerContext:J

.field segIntGlyphImages:[[I

.field segLongGlyphImages:[[J

.field strikeCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lsun/font/FontStrikeDesc;",
            "Ljava/lang/ref/Reference<",
            "Lsun/font/FontStrike;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsun/font/Font2D;Lsun/font/FontStrikeDesc;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lsun/font/FontStrikeDisposer;->disposed:Z

    .line 27
    iput-boolean v0, p0, Lsun/font/FontStrikeDisposer;->comp:Z

    .line 28
    iget-object p1, p1, Lsun/font/Font2D;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lsun/font/FontStrikeDisposer;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    iput-object p2, p0, Lsun/font/FontStrikeDisposer;->desc:Lsun/font/FontStrikeDesc;

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lsun/font/FontStrikeDisposer;->comp:Z

    return-void
.end method

.method public constructor <init>(Lsun/font/Font2D;Lsun/font/FontStrikeDesc;J)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lsun/font/FontStrikeDisposer;->disposed:Z

    .line 20
    iput-boolean v0, p0, Lsun/font/FontStrikeDisposer;->comp:Z

    .line 21
    iget-object p1, p1, Lsun/font/Font2D;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lsun/font/FontStrikeDisposer;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    iput-object p2, p0, Lsun/font/FontStrikeDisposer;->desc:Lsun/font/FontStrikeDesc;

    .line 23
    iput-wide p3, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    return-void
.end method

.method public constructor <init>(Lsun/font/Font2D;Lsun/font/FontStrikeDesc;J[I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lsun/font/FontStrikeDisposer;->disposed:Z

    .line 4
    iput-boolean v0, p0, Lsun/font/FontStrikeDisposer;->comp:Z

    .line 5
    iget-object p1, p1, Lsun/font/Font2D;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lsun/font/FontStrikeDisposer;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    iput-object p2, p0, Lsun/font/FontStrikeDisposer;->desc:Lsun/font/FontStrikeDesc;

    .line 7
    iput-wide p3, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    .line 8
    iput-object p5, p0, Lsun/font/FontStrikeDisposer;->intGlyphImages:[I

    return-void
.end method

.method public constructor <init>(Lsun/font/Font2D;Lsun/font/FontStrikeDesc;J[J)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lsun/font/FontStrikeDisposer;->disposed:Z

    .line 12
    iput-boolean v0, p0, Lsun/font/FontStrikeDisposer;->comp:Z

    .line 13
    iget-object p1, p1, Lsun/font/Font2D;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lsun/font/FontStrikeDisposer;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    iput-object p2, p0, Lsun/font/FontStrikeDisposer;->desc:Lsun/font/FontStrikeDesc;

    .line 15
    iput-wide p3, p0, Lsun/font/FontStrikeDisposer;->pScalerContext:J

    .line 16
    iput-object p5, p0, Lsun/font/FontStrikeDisposer;->longGlyphImages:[J

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/font/FontStrikeDisposer;->disposed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/font/FontStrikeDisposer;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lsun/font/FontStrikeDisposer;->desc:Lsun/font/FontStrikeDesc;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/FontStrikeDisposer;->strikeCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lsun/font/FontStrikeDisposer;->desc:Lsun/font/FontStrikeDesc;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Lsun/font/StrikeCache;->disposeStrike(Lsun/font/FontStrikeDisposer;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/font/FontStrikeDisposer;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
