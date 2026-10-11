.class public final Lsun/font/FontManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CLASS:Ljava/lang/String;

.field private static instance:Lsun/font/FontManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lsun/font/FontUtilities;->isWindows:Z

    if-eqz v0, :cond_0

    const-string v0, "sun.awt.Win32FontManager"

    sput-object v0, Lsun/font/FontManagerFactory;->DEFAULT_CLASS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lsun/font/FontUtilities;->isMacOSX:Z

    if-eqz v0, :cond_1

    const-string v0, "sun.font.CFontManager"

    sput-object v0, Lsun/font/FontManagerFactory;->DEFAULT_CLASS:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "sun.awt.X11FontManager"

    sput-object v0, Lsun/font/FontManagerFactory;->DEFAULT_CLASS:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lsun/font/FontManager;
    .locals 2

    const-class v0, Lsun/font/FontManagerFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/FontManagerFactory;->instance:Lsun/font/FontManager;

    if-nez v1, :cond_0

    new-instance v1, Lsun/font/AndroidFontManager;

    invoke-direct {v1}, Lsun/font/AndroidFontManager;-><init>()V

    sput-object v1, Lsun/font/FontManagerFactory;->instance:Lsun/font/FontManager;

    invoke-virtual {v1}, Lsun/font/AndroidFontManager;->registerDefaultFont()V

    :cond_0
    sget-object v1, Lsun/font/FontManagerFactory;->instance:Lsun/font/FontManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
