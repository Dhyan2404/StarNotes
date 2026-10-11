.class public final Lcom/vivo/penengine/impl/VivoStylusManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoStylusManagerImpl"

.field private static volatile instance:Lcom/vivo/penengine/impl/VivoStylusManagerImpl;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsInitialized:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusManagerImpl;
    .locals 2

    sget-object v0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->instance:Lcom/vivo/penengine/impl/VivoStylusManagerImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->instance:Lcom/vivo/penengine/impl/VivoStylusManagerImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;

    invoke-direct {v1, p0}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->instance:Lcom/vivo/penengine/impl/VivoStylusManagerImpl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->instance:Lcom/vivo/penengine/impl/VivoStylusManagerImpl;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy: init="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->mIsInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VivoStylusManagerImpl"

    invoke-static {v1, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->unregisterGestureCallback(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->mIsInitialized:Z

    return-void
.end method

.method public enableWritingVibrate(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    move-result-object p0

    sget-object v0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;->TYPE_2:Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->writingVibrate(ZI)V

    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->registerGestureCallback(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->mIsInitialized:Z

    const-string p0, "VivoStylusManagerImpl"

    const-string v0, "init"

    invoke-static {p0, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGesture(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
