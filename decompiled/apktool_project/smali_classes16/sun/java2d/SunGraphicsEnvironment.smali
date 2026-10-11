.class public abstract Lsun/java2d/SunGraphicsEnvironment;
.super Ljava/awt/GraphicsEnvironment;
.source "SourceFile"

# interfaces
.implements Lsun/awt/DisplayChangedListener;


# static fields
.field private static final debugScale:D

.field private static final uiScaleEnabled:Z


# instance fields
.field private final defaultFont:Ljava/awt/Font;

.field protected displayChanger:Lsun/awt/SunDisplayChanger;

.field protected screens:[Ljava/awt/GraphicsDevice;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.java2d.uiScale.enabled"

    const-string v2, "true"

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lsun/java2d/SunGraphicsEnvironment;->uiScaleEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "sun.java2d.uiScale"

    invoke-static {v0}, Lsun/java2d/SunGraphicsEnvironment;->getScaleFactor(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    sput-wide v0, Lsun/java2d/SunGraphicsEnvironment;->debugScale:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/awt/GraphicsEnvironment;-><init>()V

    new-instance v0, Ljava/awt/Font;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const-string v3, "Dialog"

    invoke-direct {v0, v3, v1, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lsun/java2d/SunGraphicsEnvironment;->defaultFont:Ljava/awt/Font;

    new-instance v0, Lsun/awt/SunDisplayChanger;

    invoke-direct {v0}, Lsun/awt/SunDisplayChanger;-><init>()V

    iput-object v0, p0, Lsun/java2d/SunGraphicsEnvironment;->displayChanger:Lsun/awt/SunDisplayChanger;

    return-void
.end method

.method public static convertToDeviceSpace(DD)Ljava/awt/Point;
    .locals 3

    .line 1
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    .line 3
    invoke-static {v0, p0, p1, p2, p3}, Lsun/java2d/SunGraphicsEnvironment;->getGraphicsConfigurationAtPoint(Ljava/awt/GraphicsConfiguration;DD)Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/awt/GraphicsConfiguration;->getDefaultTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v1

    mul-double/2addr p0, v1

    invoke-static {p0, p1}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result p0

    int-to-double p0, p0

    .line 6
    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v0

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result p2

    int-to-double p2, p2

    .line 7
    new-instance v0, Ljava/awt/Point;

    double-to-int p0, p0

    double-to-int p1, p2

    invoke-direct {v0, p0, p1}, Ljava/awt/Point;-><init>(II)V

    return-object v0
.end method

.method public static convertToDeviceSpace(Ljava/awt/GraphicsConfiguration;Ljava/awt/Rectangle;)Ljava/awt/Rectangle;
    .locals 7

    .line 12
    invoke-virtual {p0}, Ljava/awt/GraphicsConfiguration;->getDefaultTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    .line 13
    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p1, Ljava/awt/Rectangle;->x:I

    int-to-double v1, v1

    .line 14
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result v1

    iget v2, p1, Ljava/awt/Rectangle;->y:I

    int-to-double v2, v2

    .line 15
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result v2

    iget v3, p1, Ljava/awt/Rectangle;->width:I

    int-to-double v3, v3

    .line 16
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result v3

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    int-to-double v4, p1

    .line 17
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide p0

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static convertToDeviceSpace(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;
    .locals 5

    .line 8
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    .line 10
    iget v1, p0, Ljava/awt/Rectangle;->x:I

    int-to-double v1, v1

    iget v3, p0, Ljava/awt/Rectangle;->y:I

    int-to-double v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lsun/java2d/SunGraphicsEnvironment;->getGraphicsConfigurationAtPoint(Ljava/awt/GraphicsConfiguration;DD)Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    .line 11
    invoke-static {v0, p0}, Lsun/java2d/SunGraphicsEnvironment;->convertToDeviceSpace(Ljava/awt/GraphicsConfiguration;Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public static getDebugScale()D
    .locals 2

    sget-wide v0, Lsun/java2d/SunGraphicsEnvironment;->debugScale:D

    return-wide v0
.end method

.method public static getFontManagerForSGE()Lsun/font/FontManagerForSGE;
    .locals 1

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v0

    check-cast v0, Lsun/font/FontManagerForSGE;

    return-object v0
.end method

.method public static getGraphicsConfigurationAtPoint(Ljava/awt/GraphicsConfiguration;DD)Ljava/awt/GraphicsConfiguration;
    .locals 5

    invoke-virtual {p0}, Ljava/awt/GraphicsConfiguration;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/Rectangle2D;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/GraphicsConfiguration;->getBounds()Ljava/awt/Rectangle;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Ljava/awt/geom/Rectangle2D;->contains(DD)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static getScaleFactor(Ljava/lang/String;)D
    .locals 8

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "-1"

    invoke-direct {v0, p0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "dpi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-wide/high16 v4, 0x4058000000000000L    # 96.0

    goto :goto_0

    :cond_2
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    :cond_3
    :goto_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x0

    cmpg-double p0, v0, v6

    if-gtz p0, :cond_4

    goto :goto_1

    :cond_4
    div-double v2, v0, v4

    :catch_0
    :cond_5
    :goto_1
    return-wide v2
.end method

.method public static getUsableBounds(Ljava/awt/GraphicsDevice;)Ljava/awt/Rectangle;
    .locals 5

    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/awt/Toolkit;->getScreenInsets(Ljava/awt/GraphicsConfiguration;)Ljava/awt/Insets;

    move-result-object v0

    invoke-virtual {p0}, Ljava/awt/GraphicsConfiguration;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    iget v1, p0, Ljava/awt/Rectangle;->x:I

    iget v2, v0, Ljava/awt/Insets;->left:I

    add-int/2addr v1, v2

    iput v1, p0, Ljava/awt/Rectangle;->x:I

    iget v1, p0, Ljava/awt/Rectangle;->y:I

    iget v3, v0, Ljava/awt/Insets;->top:I

    add-int/2addr v1, v3

    iput v1, p0, Ljava/awt/Rectangle;->y:I

    iget v1, p0, Ljava/awt/Rectangle;->width:I

    iget v4, v0, Ljava/awt/Insets;->right:I

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/awt/Rectangle;->width:I

    iget v1, p0, Ljava/awt/Rectangle;->height:I

    iget v0, v0, Ljava/awt/Insets;->bottom:I

    add-int/2addr v3, v0

    sub-int/2addr v1, v3

    iput v1, p0, Ljava/awt/Rectangle;->height:I

    return-object p0
.end method

.method public static isUIScaleEnabled()Z
    .locals 1

    sget-boolean v0, Lsun/java2d/SunGraphicsEnvironment;->uiScaleEnabled:Z

    return v0
.end method

.method public static useAlternateFontforJALocales()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lsun/java2d/SunGraphicsEnvironment;->getFontManagerForSGE()Lsun/font/FontManagerForSGE;

    move-result-object v0

    invoke-interface {v0}, Lsun/font/FontManagerForSGE;->useAlternateFontforJALocales()V

    return-void
.end method


# virtual methods
.method public addDisplayChangedListener(Lsun/awt/DisplayChangedListener;)V
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphicsEnvironment;->displayChanger:Lsun/awt/SunDisplayChanger;

    invoke-virtual {p0, p1}, Lsun/awt/SunDisplayChanger;->add(Lsun/awt/DisplayChangedListener;)V

    return-void
.end method

.method public createGraphics(Ljava/awt/image/BufferedImage;)Ljava/awt/Graphics2D;
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lsun/java2d/SurfaceData;->getPrimarySurfaceData(Ljava/awt/Image;)Lsun/java2d/SurfaceData;

    move-result-object p1

    new-instance v0, Lsun/java2d/SunGraphics2D;

    sget-object v1, Ljava/awt/Color;->white:Ljava/awt/Color;

    sget-object v2, Ljava/awt/Color;->black:Ljava/awt/Color;

    iget-object p0, p0, Lsun/java2d/SunGraphicsEnvironment;->defaultFont:Ljava/awt/Font;

    invoke-direct {v0, p1, v1, v2, p0}, Lsun/java2d/SunGraphics2D;-><init>(Lsun/java2d/SurfaceData;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/Font;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "BufferedImage cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public displayChanged()V
    .locals 5

    invoke-virtual {p0}, Lsun/java2d/SunGraphicsEnvironment;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Lsun/awt/DisplayChangedListener;

    if-eqz v4, :cond_0

    check-cast v3, Lsun/awt/DisplayChangedListener;

    invoke-interface {v3}, Lsun/awt/DisplayChangedListener;->displayChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lsun/java2d/SunGraphicsEnvironment;->displayChanger:Lsun/awt/SunDisplayChanger;

    invoke-virtual {p0}, Lsun/awt/SunDisplayChanger;->notifyListeners()V

    return-void
.end method

.method public getAllFonts()[Ljava/awt/Font;
    .locals 4

    invoke-static {}, Lsun/java2d/SunGraphicsEnvironment;->getFontManagerForSGE()Lsun/font/FontManagerForSGE;

    move-result-object p0

    invoke-interface {p0}, Lsun/font/FontManagerForSGE;->getAllInstalledFonts()[Ljava/awt/Font;

    move-result-object v0

    invoke-interface {p0}, Lsun/font/FontManagerForSGE;->getCreatedFonts()[Ljava/awt/Font;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/awt/Font;

    array-length v0, v0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getAvailableFontFamilyNames()[Ljava/lang/String;
    .locals 1

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphicsEnvironment;->getAvailableFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lsun/java2d/SunGraphicsEnvironment;->getFontManagerForSGE()Lsun/font/FontManagerForSGE;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1}, Lsun/font/FontManagerForSGE;->getInstalledFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lsun/font/FontManagerForSGE;->getCreatedFontFamilyNames()Ljava/util/TreeMap;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 6
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {p0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 9
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 10
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getDefaultScreenDevice()Ljava/awt/GraphicsDevice;
    .locals 1

    invoke-virtual {p0}, Lsun/java2d/SunGraphicsEnvironment;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object p0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/awt/AWTError;

    const-string v0, "no screen devices"

    invoke-direct {p0, v0}, Ljava/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getNumScreens()I
.end method

.method public declared-synchronized getScreenDevices()[Ljava/awt/GraphicsDevice;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphicsEnvironment;->screens:[Ljava/awt/GraphicsDevice;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lsun/java2d/SunGraphicsEnvironment;->getNumScreens()I

    move-result v0

    new-array v1, v0, [Ljava/awt/GraphicsDevice;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lsun/java2d/SunGraphicsEnvironment;->makeScreenDevice(I)Ljava/awt/GraphicsDevice;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lsun/java2d/SunGraphicsEnvironment;->screens:[Ljava/awt/GraphicsDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract isDisplayLocal()Z
.end method

.method public abstract makeScreenDevice(I)Ljava/awt/GraphicsDevice;
.end method

.method public paletteChanged()V
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphicsEnvironment;->displayChanger:Lsun/awt/SunDisplayChanger;

    invoke-virtual {p0}, Lsun/awt/SunDisplayChanger;->notifyPaletteChanged()V

    return-void
.end method

.method public removeDisplayChangedListener(Lsun/awt/DisplayChangedListener;)V
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphicsEnvironment;->displayChanger:Lsun/awt/SunDisplayChanger;

    invoke-virtual {p0, p1}, Lsun/awt/SunDisplayChanger;->remove(Lsun/awt/DisplayChangedListener;)V

    return-void
.end method
