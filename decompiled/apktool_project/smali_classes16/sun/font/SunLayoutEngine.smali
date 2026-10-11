.class public final Lsun/font/SunLayoutEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/font/GlyphLayout$LayoutEngine;
.implements Lsun/font/GlyphLayout$LayoutEngineFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/SunLayoutEngine$FaceRef;
    }
.end annotation


# static fields
.field static aatInfo:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lsun/font/Font2D;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final facePtr:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lsun/font/Font2D;",
            "Lsun/font/SunLayoutEngine$FaceRef;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lsun/font/GlyphLayout$LayoutEngineFactory;


# instance fields
.field private cacheref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lsun/font/GlyphLayout$LayoutEngineKey;",
            "Lsun/font/GlyphLayout$LayoutEngine;",
            ">;>;"
        }
    .end annotation
.end field

.field private key:Lsun/font/GlyphLayout$LayoutEngineKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/font/FontManagerNativeLibrary;->load()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lsun/font/SunLayoutEngine;->aatInfo:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lsun/font/SunLayoutEngine;->facePtr:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/font/SunLayoutEngine;->cacheref:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private constructor <init>(Lsun/font/GlyphLayout$LayoutEngineKey;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/font/SunLayoutEngine;->cacheref:Ljava/lang/ref/SoftReference;

    .line 5
    iput-object p1, p0, Lsun/font/SunLayoutEngine;->key:Lsun/font/GlyphLayout$LayoutEngineKey;

    return-void
.end method

.method public static synthetic access$200(Lsun/font/Font2D;)Z
    .locals 0

    invoke-static {p0}, Lsun/font/SunLayoutEngine;->isAAT(Lsun/font/Font2D;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lsun/font/Font2D;ZJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lsun/font/SunLayoutEngine;->createFace(Lsun/font/Font2D;ZJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$400(J)V
    .locals 0

    invoke-static {p0, p1}, Lsun/font/SunLayoutEngine;->disposeFace(J)V

    return-void
.end method

.method private static createFace(Lsun/font/Font2D;ZJ)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static disposeFace(J)V
    .locals 0

    return-void
.end method

.method private getFacePtr(Lsun/font/Font2D;)J
    .locals 2

    sget-object p0, Lsun/font/SunLayoutEngine;->facePtr:Ljava/util/WeakHashMap;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/SunLayoutEngine$FaceRef;

    if-nez v0, :cond_0

    new-instance v0, Lsun/font/SunLayoutEngine$FaceRef;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/font/SunLayoutEngine$FaceRef;-><init>(Lsun/font/Font2D;Lsun/font/SunLayoutEngine$1;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lsun/font/SunLayoutEngine$FaceRef;->access$100(Lsun/font/SunLayoutEngine$FaceRef;)J

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static instance()Lsun/font/GlyphLayout$LayoutEngineFactory;
    .locals 1

    sget-object v0, Lsun/font/SunLayoutEngine;->instance:Lsun/font/GlyphLayout$LayoutEngineFactory;

    if-nez v0, :cond_0

    new-instance v0, Lsun/font/SunLayoutEngine;

    invoke-direct {v0}, Lsun/font/SunLayoutEngine;-><init>()V

    sput-object v0, Lsun/font/SunLayoutEngine;->instance:Lsun/font/GlyphLayout$LayoutEngineFactory;

    :cond_0
    sget-object v0, Lsun/font/SunLayoutEngine;->instance:Lsun/font/GlyphLayout$LayoutEngineFactory;

    return-object v0
.end method

.method private static isAAT(Lsun/font/Font2D;)Z
    .locals 5

    sget-object v0, Lsun/font/SunLayoutEngine;->aatInfo:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/SunLayoutEngine;->aatInfo:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lsun/font/TrueTypeFont;

    const v1, 0x6d6f7274

    const/4 v2, 0x1

    const v3, 0x6d6f7278

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lsun/font/TrueTypeFont;

    invoke-virtual {v0, v3}, Lsun/font/TrueTypeFont;->getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Lsun/font/TrueTypeFont;->getDirectoryEntry(I)Lsun/font/TrueTypeFont$DirectoryEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :cond_2
    :goto_0
    move v4, v2

    goto :goto_1

    :cond_3
    instance-of v0, p0, Lsun/font/PhysicalFont;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lsun/font/PhysicalFont;

    invoke-virtual {v0, v3}, Lsun/font/Font2D;->getTableBytes(I)[B

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Lsun/font/Font2D;->getTableBytes(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v1, Lsun/font/SunLayoutEngine;->aatInfo:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lsun/font/SunLayoutEngine;->aatInfo:Ljava/util/WeakHashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static shape(Lsun/font/Font2D;Lsun/font/FontStrike;F[FJJZ[CLsun/font/GlyphLayout$GVData;IIIILjava/awt/geom/Point2D$Float;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getEngine(Lsun/font/Font2D;II)Lsun/font/GlyphLayout$LayoutEngine;
    .locals 1

    .line 1
    new-instance v0, Lsun/font/GlyphLayout$LayoutEngineKey;

    invoke-direct {v0, p1, p2, p3}, Lsun/font/GlyphLayout$LayoutEngineKey;-><init>(Lsun/font/Font2D;II)V

    invoke-virtual {p0, v0}, Lsun/font/SunLayoutEngine;->getEngine(Lsun/font/GlyphLayout$LayoutEngineKey;)Lsun/font/GlyphLayout$LayoutEngine;

    move-result-object p0

    return-object p0
.end method

.method public getEngine(Lsun/font/GlyphLayout$LayoutEngineKey;)Lsun/font/GlyphLayout$LayoutEngine;
    .locals 2

    .line 2
    iget-object v0, p0, Lsun/font/SunLayoutEngine;->cacheref:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lsun/font/SunLayoutEngine;->cacheref:Ljava/lang/ref/SoftReference;

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/font/GlyphLayout$LayoutEngine;

    if-nez p0, :cond_1

    .line 6
    invoke-virtual {p1}, Lsun/font/GlyphLayout$LayoutEngineKey;->copy()Lsun/font/GlyphLayout$LayoutEngineKey;

    move-result-object p0

    .line 7
    new-instance p1, Lsun/font/SunLayoutEngine;

    invoke-direct {p1, p0}, Lsun/font/SunLayoutEngine;-><init>(Lsun/font/GlyphLayout$LayoutEngineKey;)V

    .line 8
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method public layout(Lsun/font/FontStrikeDesc;[FFIILsun/font/TextRecord;ILjava/awt/geom/Point2D$Float;Lsun/font/GlyphLayout$GVData;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p6

    iget-object v2, v0, Lsun/font/SunLayoutEngine;->key:Lsun/font/GlyphLayout$LayoutEngineKey;

    invoke-virtual {v2}, Lsun/font/GlyphLayout$LayoutEngineKey;->font()Lsun/font/Font2D;

    move-result-object v5

    move-object/from16 v2, p1

    invoke-virtual {v5, v2}, Lsun/font/Font2D;->getStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;

    move-result-object v3

    iget-object v6, v1, Lsun/font/TextRecord;->text:[C

    iget-object v0, v0, Lsun/font/SunLayoutEngine;->key:Lsun/font/GlyphLayout$LayoutEngineKey;

    invoke-virtual {v0}, Lsun/font/GlyphLayout$LayoutEngineKey;->script()I

    move-result v8

    iget v9, v1, Lsun/font/TextRecord;->start:I

    iget v10, v1, Lsun/font/TextRecord;->limit:I

    move-object/from16 v4, p9

    move/from16 v7, p3

    move/from16 v11, p5

    move-object/from16 v12, p8

    move/from16 v13, p7

    move/from16 v14, p4

    invoke-virtual/range {v3 .. v14}, Lsun/font/FontStrike;->layout(Lsun/font/GlyphLayout$GVData;Lsun/font/Font2D;[CFIIIILjava/awt/geom/Point2D$Float;II)V

    return-void
.end method
