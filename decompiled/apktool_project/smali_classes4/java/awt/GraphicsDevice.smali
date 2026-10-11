.class public abstract Ljava/awt/GraphicsDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/GraphicsDevice$WindowTranslucency;
    }
.end annotation


# static fields
.field public static final TYPE_IMAGE_BUFFER:I = 0x2

.field public static final TYPE_PRINTER:I = 0x1

.field public static final TYPE_RASTER_SCREEN:I


# instance fields
.field private final fsAppContextLock:Ljava/lang/Object;

.field private fullScreenAppContext:Lsun/awt/AppContext;

.field private fullScreenWindow:Landroid/view/Window;

.field private windowedModeBounds:Ljava/awt/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/awt/GraphicsDevice;->fsAppContextLock:Ljava/lang/Object;

    return-void
.end method

.method public static isWindowOpacitySupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isWindowShapingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAvailableAcceleratedMemory()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getBestConfiguration(Ljava/awt/GraphicsConfigTemplate;)Ljava/awt/GraphicsConfiguration;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->getConfigurations()[Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/awt/GraphicsConfigTemplate;->getBestConfiguration([Ljava/awt/GraphicsConfiguration;)Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public abstract getConfigurations()[Ljava/awt/GraphicsConfiguration;
.end method

.method public abstract getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;
.end method

.method public getDisplayMode()Ljava/awt/DisplayMode;
    .locals 4

    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/GraphicsConfiguration;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/awt/GraphicsConfiguration;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    new-instance v1, Ljava/awt/DisplayMode;

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, p0, v3}, Ljava/awt/DisplayMode;-><init>(IIII)V

    return-object v1
.end method

.method public getDisplayModes()[Ljava/awt/DisplayMode;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->getDisplayMode()Ljava/awt/DisplayMode;

    move-result-object p0

    filled-new-array {p0}, [Ljava/awt/DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public getFullScreenWindow()Landroid/view/Window;
    .locals 3

    iget-object v0, p0, Ljava/awt/GraphicsDevice;->fsAppContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljava/awt/GraphicsDevice;->fullScreenAppContext:Lsun/awt/AppContext;

    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Ljava/awt/GraphicsDevice;->fullScreenWindow:Landroid/view/Window;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getIDstring()Ljava/lang/String;
.end method

.method public getTranslucencyCapableGC()Ljava/awt/GraphicsConfiguration;
    .locals 2

    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsConfiguration;->isTranslucencyCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->getConfigurations()[Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/awt/GraphicsConfiguration;->isTranslucencyCapable()Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getType()I
.end method

.method public isDisplayChangeSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFullScreenSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWindowPerpixelTranslucencySupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWindowTranslucencySupported(Ljava/awt/GraphicsDevice$WindowTranslucency;)Z
    .locals 1

    sget-object v0, Ljava/awt/GraphicsDevice$1;->$SwitchMap$java$awt$GraphicsDevice$WindowTranslucency:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->isWindowPerpixelTranslucencySupported()Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Ljava/awt/GraphicsDevice;->isWindowOpacitySupported()Z

    move-result p0

    return p0

    :cond_2
    invoke-static {}, Ljava/awt/GraphicsDevice;->isWindowShapingSupported()Z

    move-result p0

    return p0
.end method

.method public setDisplayMode(Ljava/awt/DisplayMode;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot change display mode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFullScreenWindow(Landroid/view/Window;)V
    .locals 0

    return-void
.end method
