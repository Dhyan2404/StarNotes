.class public abstract Ljava/awt/GraphicsEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/GraphicsEnvironment$LocalGE;
    }
.end annotation


# static fields
.field private static defaultHeadless:Ljava/lang/Boolean;

.field private static headless:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->lambda$getHeadlessProperty$0()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static checkHeadless()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/awt/HeadlessException;

    invoke-direct {v0}, Ljava/awt/HeadlessException;-><init>()V

    throw v0
.end method

.method public static getHeadlessMessage()Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/awt/GraphicsEnvironment;->headless:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getHeadlessProperty()Z

    :cond_0
    sget-object v0, Ljava/awt/GraphicsEnvironment;->defaultHeadless:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lsun/awt/PlatformGraphicsInfo;->getDefaultHeadlessMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getHeadlessProperty()Z
    .locals 1

    sget-object v0, Ljava/awt/GraphicsEnvironment;->headless:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/z4h;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/z4h;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Ljava/awt/GraphicsEnvironment;->headless:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;
    .locals 1

    sget-object v0, Ljava/awt/GraphicsEnvironment$LocalGE;->INSTANCE:Ljava/awt/GraphicsEnvironment;

    return-object v0
.end method

.method public static isHeadless()Z
    .locals 1

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getHeadlessProperty()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$getHeadlessProperty$0()Ljava/lang/Void;
    .locals 1

    const-string v0, "java.awt.headless"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lsun/awt/PlatformGraphicsInfo;->getDefaultHeadlessProperty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/GraphicsEnvironment;->defaultHeadless:Ljava/lang/Boolean;

    sput-object v0, Ljava/awt/GraphicsEnvironment;->headless:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/GraphicsEnvironment;->headless:Ljava/lang/Boolean;

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract createGraphics(Ljava/awt/image/BufferedImage;)Ljava/awt/Graphics2D;
.end method

.method public abstract getAllFonts()[Ljava/awt/Font;
.end method

.method public abstract getAvailableFontFamilyNames()[Ljava/lang/String;
.end method

.method public abstract getAvailableFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;
.end method

.method public getCenterPoint()Ljava/awt/Point;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object p0

    invoke-static {p0}, Ljava/awt/AndroidGraphicsEnvironment;->getUsableBounds(Ljava/awt/GraphicsDevice;)Ljava/awt/Rectangle;

    move-result-object p0

    new-instance v0, Ljava/awt/Point;

    iget v1, p0, Ljava/awt/Rectangle;->width:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Ljava/awt/Rectangle;->x:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/awt/Rectangle;->height:I

    div-int/lit8 v2, v2, 0x2

    iget p0, p0, Ljava/awt/Rectangle;->y:I

    add-int/2addr v2, p0

    invoke-direct {v0, v1, v2}, Ljava/awt/Point;-><init>(II)V

    return-object v0
.end method

.method public abstract getDefaultScreenDevice()Ljava/awt/GraphicsDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation
.end method

.method public getMaximumWindowBounds()Ljava/awt/Rectangle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object p0

    invoke-static {p0}, Ljava/awt/AndroidGraphicsEnvironment;->getUsableBounds(Ljava/awt/GraphicsDevice;)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public abstract getScreenDevices()[Ljava/awt/GraphicsDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation
.end method

.method public isHeadlessInstance()Z
    .locals 0

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getHeadlessProperty()Z

    move-result p0

    return p0
.end method

.method public preferLocaleFonts()V
    .locals 0

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object p0

    invoke-interface {p0}, Lsun/font/FontManager;->preferLocaleFonts()V

    return-void
.end method

.method public preferProportionalFonts()V
    .locals 0

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object p0

    invoke-interface {p0}, Lsun/font/FontManager;->preferProportionalFonts()V

    return-void
.end method

.method public registerFont(Ljava/awt/Font;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lsun/font/FontManager;->registerFont(Ljava/awt/Font;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "font cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
