.class public Ljava/awt/Cursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/Cursor$CursorDisposer;
    }
.end annotation


# static fields
.field public static final CROSSHAIR_CURSOR:I = 0x1

.field public static final CUSTOM_CURSOR:I = -0x1

.field private static final CursorDotPrefix:Ljava/lang/String; = "Cursor."

.field public static final DEFAULT_CURSOR:I = 0x0

.field private static final DotFileSuffix:Ljava/lang/String; = ".File"

.field private static final DotHotspotSuffix:Ljava/lang/String; = ".HotSpot"

.field private static final DotNameSuffix:Ljava/lang/String; = ".Name"

.field public static final E_RESIZE_CURSOR:I = 0xb

.field public static final HAND_CURSOR:I = 0xc

.field public static final MOVE_CURSOR:I = 0xd

.field public static final NE_RESIZE_CURSOR:I = 0x7

.field public static final NW_RESIZE_CURSOR:I = 0x6

.field public static final N_RESIZE_CURSOR:I = 0x8

.field public static final SE_RESIZE_CURSOR:I = 0x5

.field public static final SW_RESIZE_CURSOR:I = 0x4

.field public static final S_RESIZE_CURSOR:I = 0x9

.field public static final TEXT_CURSOR:I = 0x2

.field public static final WAIT_CURSOR:I = 0x3

.field public static final W_RESIZE_CURSOR:I = 0xa

.field static final cursorProperties:[[Ljava/lang/String;

.field private static final log:Lsun/util/logging/NeoPlatformLogger;

.field protected static predefined:[Ljava/awt/Cursor; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final predefinedPrivate:[Ljava/awt/Cursor;

.field private static final serialVersionUID:J = 0x6f6a0777f71201a0L

.field private static final systemCustomCursorDirPrefix:Ljava/lang/String;

.field private static systemCustomCursorProperties:Ljava/util/Properties;

.field private static final systemCustomCursorPropertiesFile:Ljava/lang/String;

.field private static final systemCustomCursors:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/awt/Cursor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient anchor:Ljava/lang/Object;

.field transient disposer:Ljava/awt/Cursor$CursorDisposer;

.field protected name:Ljava/lang/String;

.field private transient pData:J

.field type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/awt/Cursor;

    sput-object v1, Ljava/awt/Cursor;->predefined:[Ljava/awt/Cursor;

    new-array v1, v0, [Ljava/awt/Cursor;

    sput-object v1, Ljava/awt/Cursor;->predefinedPrivate:[Ljava/awt/Cursor;

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "AWT.DefaultCursor"

    const-string v2, "Default Cursor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AWT.CrosshairCursor"

    const-string v2, "Crosshair Cursor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "AWT.TextCursor"

    const-string v3, "Text Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "AWT.WaitCursor"

    const-string v3, "Wait Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "AWT.SWResizeCursor"

    const-string v3, "Southwest Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "AWT.SEResizeCursor"

    const-string v3, "Southeast Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "AWT.NWResizeCursor"

    const-string v3, "Northwest Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "AWT.NEResizeCursor"

    const-string v3, "Northeast Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "AWT.NResizeCursor"

    const-string v3, "North Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "AWT.SResizeCursor"

    const-string v3, "South Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "AWT.WResizeCursor"

    const-string v3, "West Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "AWT.EResizeCursor"

    const-string v3, "East Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "AWT.HandCursor"

    const-string v3, "Hand Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "AWT.MoveCursor"

    const-string v3, "Move Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sput-object v0, Ljava/awt/Cursor;->cursorProperties:[[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljava/awt/Cursor;->systemCustomCursors:Ljava/util/Hashtable;

    invoke-static {}, Ljava/awt/Cursor;->initCursorDir()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/awt/Cursor;->systemCustomCursorDirPrefix:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cursors.properties"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/awt/Cursor;->systemCustomCursorPropertiesFile:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ljava/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    const-string v0, "java.awt.Cursor"

    invoke-static {v0}, Lsun/util/logging/NeoPlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    sput-object v0, Ljava/awt/Cursor;->log:Lsun/util/logging/NeoPlatformLogger;

    invoke-static {}, Ljava/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/awt/Cursor;->initIDs()V

    :cond_0
    new-instance v0, Ljava/awt/Cursor$1;

    invoke-direct {v0}, Ljava/awt/Cursor$1;-><init>()V

    invoke-static {v0}, Lsun/awt/AWTAccessor;->setCursorAccessor(Lsun/awt/AWTAccessor$CursorAccessor;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljava/awt/Cursor;->type:I

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/awt/Cursor;->anchor:Ljava/lang/Object;

    if-ltz p1, :cond_0

    const/16 v1, 0xd

    if-gt p1, v1, :cond_0

    .line 4
    iput p1, p0, Ljava/awt/Cursor;->type:I

    .line 5
    sget-object v1, Ljava/awt/Cursor;->cursorProperties:[[Ljava/lang/String;

    aget-object p1, v1, p1

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Ljava/awt/Toolkit;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/Cursor;->name:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal cursor type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/awt/Cursor;->anchor:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Ljava/awt/Cursor;->type:I

    .line 10
    iput-object p1, p0, Ljava/awt/Cursor;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Ljava/awt/Cursor;)J
    .locals 2

    iget-wide v0, p0, Ljava/awt/Cursor;->pData:J

    return-wide v0
.end method

.method public static synthetic access$002(Ljava/awt/Cursor;J)J
    .locals 0

    iput-wide p1, p0, Ljava/awt/Cursor;->pData:J

    return-wide p1
.end method

.method public static synthetic access$100(J)V
    .locals 0

    invoke-static {p0, p1}, Ljava/awt/Cursor;->finalizeImpl(J)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/awt/Cursor;->systemCustomCursorDirPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/awt/Cursor;->systemCustomCursorPropertiesFile:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400()Ljava/util/Properties;
    .locals 1

    sget-object v0, Ljava/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    return-object v0
.end method

.method private static native finalizeImpl(J)V
.end method

.method public static getDefaultCursor()Ljava/awt/Cursor;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/awt/Cursor;->getPredefinedCursor(I)Ljava/awt/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPredefinedCursor(I)Ljava/awt/Cursor;
    .locals 3

    if-ltz p0, :cond_2

    const/16 v0, 0xd

    if-gt p0, v0, :cond_2

    sget-object v0, Ljava/awt/Cursor;->predefinedPrivate:[Ljava/awt/Cursor;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    new-instance v1, Ljava/awt/Cursor;

    invoke-direct {v1, p0}, Ljava/awt/Cursor;-><init>(I)V

    aput-object v1, v0, p0

    :cond_0
    sget-object v0, Ljava/awt/Cursor;->predefined:[Ljava/awt/Cursor;

    aget-object v2, v0, p0

    if-nez v2, :cond_1

    aput-object v1, v0, p0

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal cursor type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSystemCustomCursor(Ljava/lang/String;)Ljava/awt/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/AWTException;,
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->checkHeadless()V

    sget-object v0, Ljava/awt/Cursor;->systemCustomCursors:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Cursor;

    if-nez v1, :cond_7

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljava/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/awt/Cursor;->loadSystemCustomCursorProperties()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".File"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v0, Ljava/awt/Cursor;->log:Lsun/util/logging/NeoPlatformLogger;

    sget-object v1, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor.getSystemCustomCursor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") returned null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsun/util/logging/NeoPlatformLogger;->finer(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object v3, Ljava/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".Name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, p0

    :cond_3
    sget-object v4, Ljava/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".HotSpot"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    :try_start_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v5, Ljava/awt/Cursor$2;

    invoke-direct {v5, v2, v1, v4, v3}, Ljava/awt/Cursor$2;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_4

    sget-object v0, Ljava/awt/Cursor;->log:Lsun/util/logging/NeoPlatformLogger;

    sget-object v2, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v0, v2}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor.getSystemCustomCursor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") returned null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsun/util/logging/NeoPlatformLogger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/awt/AWTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " occurred while creating cursor "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v0, Ljava/awt/AWTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse hotspot property for cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/awt/AWTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse hotspot property for cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/awt/AWTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no hotspot property defined for cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_7
    :goto_0
    return-object v1
.end method

.method private static initCursorDir()Ljava/lang/String;
    .locals 3

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "java.home"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cursors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private static loadSystemCustomCursorProperties()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/AWTException;
        }
    .end annotation

    sget-object v0, Ljava/awt/Cursor;->systemCustomCursors:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Ljava/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/awt/Cursor$3;

    invoke-direct {v1}, Ljava/awt/Cursor$3;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    sput-object v2, Ljava/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    new-instance v2, Ljava/awt/AWTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " occurred while loading: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/awt/Cursor;->systemCustomCursorPropertiesFile:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setPData(J)V
    .locals 1

    iput-wide p1, p0, Ljava/awt/Cursor;->pData:J

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljava/awt/Cursor;->disposer:Ljava/awt/Cursor$CursorDisposer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/awt/Cursor$CursorDisposer;

    invoke-direct {v0, p1, p2}, Ljava/awt/Cursor$CursorDisposer;-><init>(J)V

    iput-object v0, p0, Ljava/awt/Cursor;->disposer:Ljava/awt/Cursor$CursorDisposer;

    iget-object p1, p0, Ljava/awt/Cursor;->anchor:Ljava/lang/Object;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/awt/Cursor;->anchor:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Ljava/awt/Cursor;->anchor:Ljava/lang/Object;

    invoke-static {p0, v0}, Lsun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V

    goto :goto_0

    :cond_2
    iput-wide p1, v0, Ljava/awt/Cursor$CursorDisposer;->pData:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljava/awt/Cursor;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Ljava/awt/Cursor;->type:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Cursor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
