.class public abstract Lsun/font/FontScaler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;


# static fields
.field private static nullScaler:Lsun/font/FontScaler;


# instance fields
.field protected disposed:Z

.field protected font:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lsun/font/Font2D;",
            ">;"
        }
    .end annotation
.end field

.field protected nativeScaler:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/FontScaler;->font:Ljava/lang/ref/WeakReference;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/font/FontScaler;->nativeScaler:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/font/FontScaler;->disposed:Z

    return-void
.end method

.method public static declared-synchronized getNullScaler()Lsun/font/FontScaler;
    .locals 2

    const-class v0, Lsun/font/FontScaler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/FontScaler;->nullScaler:Lsun/font/FontScaler;

    if-nez v1, :cond_0

    new-instance v1, Lsun/font/NullFontScaler;

    invoke-direct {v1}, Lsun/font/NullFontScaler;-><init>()V

    sput-object v1, Lsun/font/FontScaler;->nullScaler:Lsun/font/FontScaler;

    :cond_0
    sget-object v1, Lsun/font/FontScaler;->nullScaler:Lsun/font/FontScaler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getScaler(Lsun/font/Font2D;IZI)Lsun/font/FontScaler;
    .locals 1

    :try_start_0
    new-instance v0, Lsun/font/FreetypeFontScaler;

    invoke-direct {v0, p0, p1, p2, p3}, Lsun/font/FreetypeFontScaler;-><init>(Lsun/font/Font2D;IZI)V

    invoke-static {p0, v0}, Lsun/java2d/Disposer;->addObjectRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lsun/font/FontManager;->deRegisterBadFont(Lsun/font/Font2D;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract createScalerContext([DIIFF)J
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public disposeScaler()V
    .locals 0

    return-void
.end method

.method public abstract getFontMetrics(J)Lsun/font/StrikeMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getGlyphAdvance(JI)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getGlyphCode(C)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getGlyphImage(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getGlyphMetrics(JILjava/awt/geom/Point2D$Float;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getGlyphOutline(JIFF)Ljava/awt/geom/GeneralPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getGlyphOutlineBounds(JI)Ljava/awt/geom/Rectangle2D$Float;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getGlyphPoint(JII)Ljava/awt/geom/Point2D$Float;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getGlyphVectorOutline(J[IIFF)Ljava/awt/geom/GeneralPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getMissingGlyphCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getNumGlyphs()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/font/FontScalerException;
        }
    .end annotation
.end method

.method public abstract getUnitsPerEm()J
.end method

.method public abstract invalidateScalerContext(J)V
.end method
