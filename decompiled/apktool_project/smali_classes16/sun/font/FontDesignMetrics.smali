.class public final Lsun/font/FontDesignMetrics;
.super Ljava/awt/FontMetrics;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/FontDesignMetrics$MetricsKey;,
        Lsun/font/FontDesignMetrics$KeyReference;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static DEFAULT_FRC:Ljava/awt/font/FontRenderContext; = null

.field private static final MAXRECENT:I = 0x5

.field private static final UNKNOWN_WIDTH:F = -1.0f

.field private static final metricsCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lsun/font/FontDesignMetrics$KeyReference;",
            ">;"
        }
    .end annotation
.end field

.field private static recentIndex:I = 0x0

.field private static final recentMetrics:[Lsun/font/FontDesignMetrics;

.field private static roundingUpValue:F = 0.95f

.field static final serialVersionUID:J = 0x3e2c678b9727dbddL


# instance fields
.field private transient advCache:[F

.field private ascent:F

.field private cache:[I

.field private descent:F

.field private transient devmatrix:[D

.field private font:Ljava/awt/Font;

.field private transient fontStrike:Lsun/font/FontStrike;

.field private transient frc:Ljava/awt/font/FontRenderContext;

.field private frcTx:Ljava/awt/geom/AffineTransform;

.field private transient height:I

.field private isAntiAliased:Z

.field private leading:F

.field private matrix:[D

.field private maxAdvance:F

.field private serVersion:I

.field private usesFractionalMetrics:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsun/font/FontDesignMetrics;->metricsCache:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x5

    new-array v0, v0, [Lsun/font/FontDesignMetrics;

    sput-object v0, Lsun/font/FontDesignMetrics;->recentMetrics:[Lsun/font/FontDesignMetrics;

    const/4 v0, 0x0

    sput v0, Lsun/font/FontDesignMetrics;->recentIndex:I

    return-void
.end method

.method private constructor <init>(Ljava/awt/Font;)V
    .locals 1

    .line 1
    invoke-static {}, Lsun/font/FontDesignMetrics;->getDefaultFrc()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/font/FontDesignMetrics;-><init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    return-void
.end method

.method private constructor <init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Ljava/awt/FontMetrics;-><init>(Ljava/awt/Font;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lsun/font/FontDesignMetrics;->serVersion:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lsun/font/FontDesignMetrics;->height:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lsun/font/FontDesignMetrics;->devmatrix:[D

    .line 6
    iput-object p1, p0, Lsun/font/FontDesignMetrics;->font:Ljava/awt/Font;

    .line 7
    iput-object p2, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    .line 8
    invoke-virtual {p2}, Ljava/awt/font/FontRenderContext;->isAntiAliased()Z

    move-result p1

    iput-boolean p1, p0, Lsun/font/FontDesignMetrics;->isAntiAliased:Z

    .line 9
    invoke-virtual {p2}, Ljava/awt/font/FontRenderContext;->usesFractionalMetrics()Z

    move-result p1

    iput-boolean p1, p0, Lsun/font/FontDesignMetrics;->usesFractionalMetrics:Z

    .line 10
    invoke-virtual {p2}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    iput-object p1, p0, Lsun/font/FontDesignMetrics;->frcTx:Ljava/awt/geom/AffineTransform;

    const/4 p1, 0x4

    new-array p1, p1, [D

    .line 11
    iput-object p1, p0, Lsun/font/FontDesignMetrics;->matrix:[D

    .line 12
    invoke-direct {p0}, Lsun/font/FontDesignMetrics;->initMatrixAndMetrics()V

    .line 13
    invoke-direct {p0}, Lsun/font/FontDesignMetrics;->initAdvCache()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lsun/font/FontDesignMetrics;->metricsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static getDefaultFrc()Ljava/awt/font/FontRenderContext;
    .locals 1

    sget-object v0, Lsun/font/FontDesignMetrics;->DEFAULT_FRC:Ljava/awt/font/FontRenderContext;

    return-object v0
.end method

.method private getLatinCharWidth(C)F
    .locals 2

    iget-object v0, p0, Lsun/font/FontDesignMetrics;->advCache:[F

    aget v0, v0, p1

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lsun/font/FontDesignMetrics;->handleCharWidth(I)F

    move-result v0

    iget-object p0, p0, Lsun/font/FontDesignMetrics;->advCache:[F

    aput v0, p0, p1

    :cond_0
    return v0
.end method

.method public static getMetrics(Ljava/awt/Font;)Lsun/font/FontDesignMetrics;
    .locals 1

    .line 1
    invoke-static {}, Lsun/font/FontDesignMetrics;->getDefaultFrc()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/font/FontDesignMetrics;->getMetrics(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/FontDesignMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getMetrics(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/FontDesignMetrics;
    .locals 4

    .line 2
    invoke-static {}, Lsun/font/FontDesignMetrics;->getDefaultFrc()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/font/FontRenderContext;->equals(Ljava/awt/font/FontRenderContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lsun/font/FontDesignMetrics;->metricsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/FontDesignMetrics$KeyReference;

    goto :goto_0

    .line 4
    :cond_0
    const-class v1, Lsun/font/FontDesignMetrics$MetricsKey;

    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v2, Lsun/font/FontDesignMetrics$MetricsKey;->key:Lsun/font/FontDesignMetrics$MetricsKey;

    invoke-virtual {v2, p0, p1}, Lsun/font/FontDesignMetrics$MetricsKey;->init(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    .line 6
    sget-object v3, Lsun/font/FontDesignMetrics;->metricsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/font/FontDesignMetrics$KeyReference;

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/FontDesignMetrics;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 9
    new-instance v1, Lsun/font/FontDesignMetrics;

    invoke-direct {v1, p0, p1}, Lsun/font/FontDesignMetrics;-><init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    if-eqz v0, :cond_2

    .line 10
    sget-object p1, Lsun/font/FontDesignMetrics;->metricsCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lsun/font/FontDesignMetrics$KeyReference;

    invoke-direct {v0, p0, v1}, Lsun/font/FontDesignMetrics$KeyReference;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_2
    new-instance v0, Lsun/font/FontDesignMetrics$MetricsKey;

    invoke-direct {v0, p0, p1}, Lsun/font/FontDesignMetrics$MetricsKey;-><init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    .line 12
    sget-object p0, Lsun/font/FontDesignMetrics;->metricsCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Lsun/font/FontDesignMetrics$KeyReference;

    invoke-direct {p1, v0, v1}, Lsun/font/FontDesignMetrics$KeyReference;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    const/4 p0, 0x0

    move p1, p0

    .line 13
    :goto_3
    sget-object v0, Lsun/font/FontDesignMetrics;->recentMetrics:[Lsun/font/FontDesignMetrics;

    array-length v2, v0

    if-ge p1, v2, :cond_5

    .line 14
    aget-object v0, v0, p1

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 15
    :cond_5
    monitor-enter v0

    .line 16
    :try_start_1
    sget p1, Lsun/font/FontDesignMetrics;->recentIndex:I

    add-int/lit8 v2, p1, 0x1

    sput v2, Lsun/font/FontDesignMetrics;->recentIndex:I

    aput-object v1, v0, p1

    const/4 p1, 0x5

    if-ne v2, p1, :cond_6

    .line 17
    sput p0, Lsun/font/FontDesignMetrics;->recentIndex:I

    .line 18
    :cond_6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 19
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private handleCharWidth(I)F
    .locals 0

    iget-object p0, p0, Lsun/font/FontDesignMetrics;->fontStrike:Lsun/font/FontStrike;

    invoke-virtual {p0, p1}, Lsun/font/FontStrike;->getCodePointAdvance(I)F

    move-result p0

    return p0
.end method

.method private initAdvCache()V
    .locals 4

    const/16 v0, 0x100

    new-array v1, v0, [F

    iput-object v1, p0, Lsun/font/FontDesignMetrics;->advCache:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lsun/font/FontDesignMetrics;->advCache:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initMatrixAndMetrics()V
    .locals 3

    iget-object v0, p0, Lsun/font/FontDesignMetrics;->font:Ljava/awt/Font;

    invoke-static {v0}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v0

    iget-object v1, p0, Lsun/font/FontDesignMetrics;->font:Ljava/awt/Font;

    iget-object v2, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {v0, v1, v2}, Lsun/font/Font2D;->getStrike(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/FontStrike;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FontDesignMetrics;->fontStrike:Lsun/font/FontStrike;

    invoke-virtual {v0}, Lsun/font/FontStrike;->getFontMetrics()Lsun/font/StrikeMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/StrikeMetrics;->getAscent()F

    move-result v1

    iput v1, p0, Lsun/font/FontDesignMetrics;->ascent:F

    invoke-virtual {v0}, Lsun/font/StrikeMetrics;->getDescent()F

    move-result v1

    iput v1, p0, Lsun/font/FontDesignMetrics;->descent:F

    invoke-virtual {v0}, Lsun/font/StrikeMetrics;->getLeading()F

    move-result v1

    iput v1, p0, Lsun/font/FontDesignMetrics;->leading:F

    invoke-virtual {v0}, Lsun/font/StrikeMetrics;->getMaxAdvance()F

    move-result v0

    iput v0, p0, Lsun/font/FontDesignMetrics;->maxAdvance:F

    const/4 v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Lsun/font/FontDesignMetrics;->devmatrix:[D

    iget-object p0, p0, Lsun/font/FontDesignMetrics;->frcTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget p1, p0, Lsun/font/FontDesignMetrics;->serVersion:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-static {}, Lsun/font/FontDesignMetrics;->getDefaultFrc()Ljava/awt/font/FontRenderContext;

    move-result-object p1

    iput-object p1, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->isAntiAliased()Z

    move-result p1

    iput-boolean p1, p0, Lsun/font/FontDesignMetrics;->isAntiAliased:Z

    iget-object p1, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->usesFractionalMetrics()Z

    move-result p1

    iput-boolean p1, p0, Lsun/font/FontDesignMetrics;->usesFractionalMetrics:Z

    iget-object p1, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    iput-object p1, p0, Lsun/font/FontDesignMetrics;->frcTx:Ljava/awt/geom/AffineTransform;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/awt/font/FontRenderContext;

    iget-object v0, p0, Lsun/font/FontDesignMetrics;->frcTx:Ljava/awt/geom/AffineTransform;

    iget-boolean v1, p0, Lsun/font/FontDesignMetrics;->isAntiAliased:Z

    iget-boolean v2, p0, Lsun/font/FontDesignMetrics;->usesFractionalMetrics:Z

    invoke-direct {p1, v0, v1, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    iput-object p1, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lsun/font/FontDesignMetrics;->height:I

    const/4 p1, 0x0

    iput-object p1, p0, Lsun/font/FontDesignMetrics;->cache:[I

    invoke-direct {p0}, Lsun/font/FontDesignMetrics;->initMatrixAndMetrics()V

    invoke-direct {p0}, Lsun/font/FontDesignMetrics;->initAdvCache()V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lsun/font/FontDesignMetrics;->cache:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lsun/font/FontDesignMetrics;->cache:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lsun/font/FontDesignMetrics;->serVersion:I

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 p1, 0x0

    iput-object p1, p0, Lsun/font/FontDesignMetrics;->cache:[I

    return-void
.end method


# virtual methods
.method public charWidth(C)I
    .locals 2

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lsun/font/FontDesignMetrics;->getLatinCharWidth(C)F

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lsun/font/FontDesignMetrics;->handleCharWidth(I)F

    move-result p0

    :goto_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    float-to-double p0, p0

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public charWidth(I)I
    .locals 2

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0xffff

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lsun/font/FontDesignMetrics;->handleCharWidth(I)F

    move-result p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    float-to-double p0, p0

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public charsWidth([CII)I
    .locals 5

    iget-object v0, p0, Lsun/font/FontDesignMetrics;->font:Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Ljava/awt/font/TextLayout;

    iget-object p2, p0, Lsun/font/FontDesignMetrics;->font:Ljava/awt/Font;

    iget-object p0, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    invoke-direct {p1, v0, p2, p0}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {p1}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p0

    goto :goto_3

    :cond_1
    if-ltz p3, :cond_5

    add-int v0, p2, p3

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_4

    aget-char v3, p1, v2

    const/16 v4, 0x100

    if-ge v3, v4, :cond_2

    invoke-direct {p0, v3}, Lsun/font/FontDesignMetrics;->getLatinCharWidth(C)F

    move-result v3

    :goto_1
    add-float/2addr v1, v3

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lsun/font/FontUtilities;->isNonSimpleChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Ljava/awt/font/TextLayout;

    iget-object p2, p0, Lsun/font/FontDesignMetrics;->font:Ljava/awt/Font;

    iget-object p0, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    invoke-direct {p1, v0, p2, p0}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {p1}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p0

    goto :goto_3

    :cond_3
    invoke-direct {p0, v3}, Lsun/font/FontDesignMetrics;->handleCharWidth(I)F

    move-result v3

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move p0, v1

    :goto_3
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    float-to-double v0, p0

    add-double/2addr v0, p1

    double-to-int p0, v0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "len="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAscent()I
    .locals 1

    sget v0, Lsun/font/FontDesignMetrics;->roundingUpValue:F

    iget p0, p0, Lsun/font/FontDesignMetrics;->ascent:F

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getDescent()I
    .locals 1

    sget v0, Lsun/font/FontDesignMetrics;->roundingUpValue:F

    iget p0, p0, Lsun/font/FontDesignMetrics;->descent:F

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 0

    iget-object p0, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    return-object p0
.end method

.method public getHeight()I
    .locals 3

    iget v0, p0, Lsun/font/FontDesignMetrics;->height:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/FontDesignMetrics;->getAscent()I

    move-result v0

    sget v1, Lsun/font/FontDesignMetrics;->roundingUpValue:F

    iget v2, p0, Lsun/font/FontDesignMetrics;->descent:F

    add-float/2addr v1, v2

    iget v2, p0, Lsun/font/FontDesignMetrics;->leading:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/font/FontDesignMetrics;->height:I

    :cond_0
    iget p0, p0, Lsun/font/FontDesignMetrics;->height:I

    return p0
.end method

.method public getLeading()I
    .locals 3

    sget v0, Lsun/font/FontDesignMetrics;->roundingUpValue:F

    iget v1, p0, Lsun/font/FontDesignMetrics;->descent:F

    add-float v2, v0, v1

    iget p0, p0, Lsun/font/FontDesignMetrics;->leading:F

    add-float/2addr v2, p0

    float-to-int p0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method public getMaxAdvance()I
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    iget p0, p0, Lsun/font/FontDesignMetrics;->maxAdvance:F

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getWidths()[I
    .locals 7

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lsun/font/FontDesignMetrics;->advCache:[F

    aget v4, v3, v2

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    invoke-direct {p0, v2}, Lsun/font/FontDesignMetrics;->handleCharWidth(I)F

    move-result v4

    aput v4, v3, v2

    :cond_0
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    float-to-double v3, v4

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lsun/font/FontDesignMetrics;->font:Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/awt/font/TextLayout;

    iget-object v1, p0, Lsun/font/FontDesignMetrics;->font:Ljava/awt/Font;

    iget-object p0, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    invoke-direct {v0, p1, v1, p0}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "str is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x100

    if-ge v3, v4, :cond_3

    invoke-direct {p0, v3}, Lsun/font/FontDesignMetrics;->getLatinCharWidth(C)F

    move-result v3

    :goto_1
    add-float/2addr v2, v3

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lsun/font/FontUtilities;->isNonSimpleChar(C)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/awt/font/TextLayout;

    iget-object v1, p0, Lsun/font/FontDesignMetrics;->font:Ljava/awt/Font;

    iget-object p0, p0, Lsun/font/FontDesignMetrics;->frc:Ljava/awt/font/FontRenderContext;

    invoke-direct {v0, p1, v1, p0}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p0

    goto :goto_3

    :cond_4
    invoke-direct {p0, v3}, Lsun/font/FontDesignMetrics;->handleCharWidth(I)F

    move-result v3

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move p0, v2

    :goto_3
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    float-to-double p0, p0

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method
