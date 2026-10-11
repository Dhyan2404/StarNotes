.class public final Lio/nano/tex/LaTeX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static initialized:Z

.field private static instance:Lio/nano/tex/LaTeX;


# instance fields
.field private volatile isDebug:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "tex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lio/nano/tex/LaTeX;->initialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nano/tex/LaTeX;->isDebug:Z

    return-void
.end method

.method private check()V
    .locals 1

    sget-boolean p0, Lio/nano/tex/LaTeX;->initialized:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The engine was not initialized, call init(Context) before use."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lio/nano/tex/LaTeX;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lio/nano/tex/LaTeX;->initialized:Z

    if-nez v1, :cond_1

    new-instance v1, Lio/nano/tex/res/ResManager;

    invoke-direct {v1, p0}, Lio/nano/tex/res/ResManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lio/nano/tex/res/ResManager;->unpackResources()V

    invoke-virtual {v1}, Lio/nano/tex/res/ResManager;->getResourcesRootDirectory()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/nano/tex/LaTeX;->nInit(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lio/nano/tex/TeXException;

    const-string v1, "Failed to initialize LaTeX engine."

    invoke-direct {p0, v1}, Lio/nano/tex/TeXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lio/nano/tex/LaTeX;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static instance()Lio/nano/tex/LaTeX;
    .locals 2

    sget-object v0, Lio/nano/tex/LaTeX;->instance:Lio/nano/tex/LaTeX;

    if-nez v0, :cond_1

    const-class v0, Lio/nano/tex/LaTeX;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/nano/tex/LaTeX;->instance:Lio/nano/tex/LaTeX;

    if-nez v1, :cond_0

    new-instance v1, Lio/nano/tex/LaTeX;

    invoke-direct {v1}, Lio/nano/tex/LaTeX;-><init>()V

    sput-object v1, Lio/nano/tex/LaTeX;->instance:Lio/nano/tex/LaTeX;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lio/nano/tex/LaTeX;->instance:Lio/nano/tex/LaTeX;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lio/nano/tex/LaTeX;->initialized:Z

    return v0
.end method

.method private static native nFree()V
.end method

.method private static native nInit(Ljava/lang/String;)Z
.end method

.method private static native nParse(Ljava/lang/String;IFFI)J
.end method

.method private static native nSetDebug(Z)V
.end method

.method public static declared-synchronized release()V
    .locals 2

    const-class v0, Lio/nano/tex/LaTeX;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lio/nano/tex/LaTeX;->nFree()V

    const/4 v1, 0x0

    sput-boolean v1, Lio/nano/tex/LaTeX;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isDebug()Z
    .locals 0

    iget-boolean p0, p0, Lio/nano/tex/LaTeX;->isDebug:Z

    return p0
.end method

.method public declared-synchronized parse(Ljava/lang/String;FFI)Lio/nano/tex/TeXRender;
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-direct {p0}, Lio/nano/tex/LaTeX;->check()V

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0, p2, p3, p4}, Lio/nano/tex/LaTeX;->nParse(Ljava/lang/String;IFFI)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    .line 7
    new-instance p1, Lio/nano/tex/TeXRender;

    invoke-direct {p1, p2, p3}, Lio/nano/tex/TeXRender;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 8
    :cond_0
    :try_start_1
    new-instance p2, Lio/nano/tex/TeXException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to parse LaTeX: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/nano/tex/TeXException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parse(Ljava/lang/String;FI)Lio/nano/tex/TeXRender;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/nano/tex/LaTeX;->check()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, p2, v1, p3}, Lio/nano/tex/LaTeX;->nParse(Ljava/lang/String;IFFI)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lio/nano/tex/TeXRender;

    invoke-direct {p1, p2, p3}, Lio/nano/tex/TeXRender;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    :try_start_1
    new-instance p2, Lio/nano/tex/TeXException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse LaTeX: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/nano/tex/TeXException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parse(Ljava/lang/String;IFFI)Lio/nano/tex/TeXRender;
    .locals 2

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lio/nano/tex/LaTeX;->check()V

    .line 10
    invoke-static {p1, p2, p3, p4, p5}, Lio/nano/tex/LaTeX;->nParse(Ljava/lang/String;IFFI)J

    move-result-wide p4

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_1

    .line 11
    new-instance p1, Lio/nano/tex/TeXRender;

    invoke-direct {p1, p4, p5}, Lio/nano/tex/TeXRender;-><init>(J)V

    .line 12
    invoke-virtual {p1}, Lio/nano/tex/TeXRender;->getWidth()I

    move-result p4

    if-le p4, p2, :cond_0

    .line 13
    invoke-virtual {p1}, Lio/nano/tex/TeXRender;->getWidth()I

    move-result p4

    int-to-float p4, p4

    int-to-float p2, p2

    div-float/2addr p2, p4

    mul-float/2addr p2, p3

    .line 14
    invoke-virtual {p1, p2}, Lio/nano/tex/TeXRender;->setTextSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    monitor-exit p0

    return-object p1

    .line 16
    :cond_1
    :try_start_1
    new-instance p2, Lio/nano/tex/TeXException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to parse LaTeX: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/nano/tex/TeXException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDebug(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lio/nano/tex/LaTeX;->nSetDebug(Z)V

    iput-boolean p1, p0, Lio/nano/tex/LaTeX;->isDebug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
