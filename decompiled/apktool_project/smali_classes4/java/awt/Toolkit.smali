.class public abstract Ljava/awt/Toolkit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/Toolkit$DesktopPropertyChangeSupport;
    }
.end annotation


# static fields
.field private static final LONG_BITS:I = 0x40

.field private static atNames:Ljava/lang/String;

.field private static volatile enabledOnToolkitMask:J

.field private static loaded:Z

.field private static platformResources:Ljava/util/ResourceBundle;

.field private static resources:Ljava/util/ResourceBundle;

.field private static toolkit:Ljava/awt/Toolkit;


# instance fields
.field private calls:[I

.field protected final desktopProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final desktopPropsSupport:Ljava/beans/PropertyChangeSupport;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/awt/Toolkit$3;

    invoke-direct {v0}, Ljava/awt/Toolkit$3;-><init>()V

    invoke-static {v0}, Lsun/awt/AWTAccessor;->setToolkitAccessor(Lsun/awt/AWTAccessor$ToolkitAccessor;)V

    new-instance v0, Ljava/awt/Toolkit$4;

    invoke-direct {v0}, Ljava/awt/Toolkit$4;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    invoke-static {}, Ljava/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Ljava/awt/Toolkit;->initAssistiveTechnologies()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-static {p0}, Ljava/awt/Toolkit;->createPropertyChangeSupport(Ljava/awt/Toolkit;)Ljava/beans/PropertyChangeSupport;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/awt/Toolkit;->calls:[I

    return-void
.end method

.method public static synthetic access$002(Ljava/awt/Toolkit;)Ljava/awt/Toolkit;
    .locals 0

    sput-object p0, Ljava/awt/Toolkit;->toolkit:Ljava/awt/Toolkit;

    return-object p0
.end method

.method public static synthetic access$100(Ljava/util/ResourceBundle;)V
    .locals 0

    invoke-static {p0}, Ljava/awt/Toolkit;->setPlatformResources(Ljava/util/ResourceBundle;)V

    return-void
.end method

.method public static synthetic access$202(Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .locals 0

    sput-object p0, Ljava/awt/Toolkit;->resources:Ljava/util/ResourceBundle;

    return-object p0
.end method

.method public static createNewAppContext()Lsun/awt/AppContext;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/awt/Toolkit;->createNewAppContext(Ljava/lang/ThreadGroup;)Lsun/awt/AppContext;

    move-result-object v0

    return-object v0
.end method

.method public static final createNewAppContext(Ljava/lang/ThreadGroup;)Lsun/awt/AppContext;
    .locals 1

    .line 3
    new-instance v0, Lsun/awt/AppContext;

    invoke-direct {v0, p0}, Lsun/awt/AppContext;-><init>(Ljava/lang/ThreadGroup;)V

    return-object v0
.end method

.method private static createPropertyChangeSupport(Ljava/awt/Toolkit;)Ljava/beans/PropertyChangeSupport;
    .locals 1

    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static declared-synchronized getDefaultToolkit()Ljava/awt/Toolkit;
    .locals 2

    const-class v0, Ljava/awt/Toolkit;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljava/awt/Toolkit;->toolkit:Ljava/awt/Toolkit;

    if-nez v1, :cond_0

    new-instance v1, Ljava/awt/Toolkit$2;

    invoke-direct {v1}, Ljava/awt/Toolkit$2;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    invoke-static {}, Ljava/awt/Toolkit;->loadAssistiveTechnologies()V

    :cond_0
    sget-object v1, Ljava/awt/Toolkit;->toolkit:Ljava/awt/Toolkit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/awt/Toolkit;->platformResources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    sget-object v0, Ljava/awt/Toolkit;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_1
    return-object p1
.end method

.method private static initAssistiveTechnologies()V
    .locals 3

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/awt/Toolkit$1;

    invoke-direct {v2, v0, v1}, Ljava/awt/Toolkit$1;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljava/awt/Toolkit;->atNames:Ljava/lang/String;

    return-void
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private static loadAssistiveTechnologies()V
    .locals 5

    sget-object v0, Ljava/awt/Toolkit;->atNames:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/awt/Toolkit;->atNames:Ljava/lang/String;

    const-string v3, " ,"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/awt/AWTError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to install Assistive Technology: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v0, Ljava/awt/AWTError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access Assistive Technology: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/awt/AWTError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate Assistive Technology: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    new-instance v0, Ljava/awt/AWTError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assistive Technology not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static loadLibraries()V
    .locals 1

    sget-boolean v0, Ljava/awt/Toolkit;->loaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Ljava/awt/Toolkit;->loaded:Z

    :cond_0
    return-void
.end method

.method private static setPlatformResources(Ljava/util/ResourceBundle;)V
    .locals 0

    sput-object p0, Ljava/awt/Toolkit;->platformResources:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 0

    iget-object p0, p0, Ljava/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {p0, p1, p2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public areExtraMouseButtonsEnabled()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/Toolkit;->areExtraMouseButtonsEnabled()Z

    move-result p0

    return p0
.end method

.method public abstract beep()V
.end method

.method public abstract checkImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)I
.end method

.method public createCustomCursor(Ljava/awt/Image;Ljava/awt/Point;Ljava/lang/String;)Ljava/awt/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/Toolkit;->createCustomCursor(Ljava/awt/Image;Ljava/awt/Point;Ljava/lang/String;)Ljava/awt/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/awt/Cursor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/awt/Cursor;-><init>(I)V

    return-object p0
.end method

.method public abstract createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;
.end method

.method public abstract createImage(Ljava/lang/String;)Ljava/awt/Image;
.end method

.method public abstract createImage(Ljava/net/URL;)Ljava/awt/Image;
.end method

.method public createImage([B)Ljava/awt/Image;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/awt/Toolkit;->createImage([BII)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public abstract createImage([BII)Ljava/awt/Image;
.end method

.method public getBestCursorSize(II)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/awt/Toolkit;->getBestCursorSize(II)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/awt/Dimension;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p0
.end method

.method public abstract getColorModel()Ljava/awt/image/ColorModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation
.end method

.method public final declared-synchronized getDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/Toolkit;->initializeDesktopProperties()V

    :cond_0
    const-string v0, "awt.dynamicLayoutSupported"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/Toolkit;->lazilyLoadDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/awt/Toolkit;->lazilyLoadDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v0}, Ljava/awt/Toolkit;->setDesktopProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    instance-of p1, v0, Ljava/awt/RenderingHints;

    if-eqz p1, :cond_3

    check-cast v0, Ljava/awt/RenderingHints;

    invoke-virtual {v0}, Ljava/awt/RenderingHints;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract getFontList()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFontPeer(Ljava/lang/String;I)Ljava/awt/peer/FontPeer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getImage(Ljava/lang/String;)Ljava/awt/Image;
.end method

.method public abstract getImage(Ljava/net/URL;)Ljava/awt/Image;
.end method

.method public getMaximumCursorColors()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/Toolkit;->getMaximumCursorColors()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMenuShortcutKeyMask()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    const/4 p0, 0x0

    return p0
.end method

.method public getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Ljava/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {p0}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 0

    .line 2
    iget-object p0, p0, Ljava/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {p0, p1}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public getScreenInsets(Ljava/awt/GraphicsConfiguration;)Ljava/awt/Insets;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/awt/Toolkit;->getScreenInsets(Ljava/awt/GraphicsConfiguration;)Ljava/awt/Insets;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/awt/Insets;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Ljava/awt/Insets;-><init>(IIII)V

    return-object p0
.end method

.method public abstract getScreenResolution()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation
.end method

.method public abstract getScreenSize()Ljava/awt/Dimension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation
.end method

.method public initializeDesktopProperties()V
    .locals 0

    return-void
.end method

.method public isAlwaysOnTopSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDynamicLayoutActive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/Toolkit;->isDynamicLayoutActive()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDynamicLayoutSet()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/Toolkit;->isDynamicLayoutSet()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lazilyLoadDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadSystemColors([I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    return-void
.end method

.method public abstract mapInputMethodHighlight(Ljava/awt/im/InputMethodHighlight;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/im/InputMethodHighlight;",
            ")",
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation
.end method

.method public abstract prepareImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 0

    iget-object p0, p0, Ljava/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {p0, p1, p2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public final setDesktopProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object p0, p0, Ljava/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {p0, p1, v0, p2}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDynamicLayout(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/awt/Toolkit;->setDynamicLayout(Z)V

    :cond_0
    return-void
.end method

.method public abstract sync()V
.end method
