.class public abstract Lsun/java2d/pipe/RenderingEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/pipe/RenderingEngine$Tracer;
    }
.end annotation


# static fields
.field private static reImpl:Lsun/java2d/pipe/RenderingEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static feedConsumer(Ljava/awt/geom/PathIterator;Lsun/awt/geom/PathConsumer2D;)V
    .locals 14

    const/4 v0, 0x6

    new-array v0, v0, [F

    :goto_0
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p0, v0}, Ljava/awt/geom/PathIterator;->currentSegment([F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v6, 0x4

    if-eq v1, v4, :cond_1

    if-eq v1, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lsun/awt/geom/PathConsumer2D;->closePath()V

    goto :goto_1

    :cond_1
    aget v8, v0, v2

    aget v9, v0, v3

    aget v10, v0, v5

    aget v11, v0, v4

    aget v12, v0, v6

    const/4 v1, 0x5

    aget v13, v0, v1

    move-object v7, p1

    invoke-interface/range {v7 .. v13}, Lsun/awt/geom/PathConsumer2D;->curveTo(FFFFFF)V

    goto :goto_1

    :cond_2
    aget v1, v0, v2

    aget v2, v0, v3

    aget v3, v0, v5

    aget v4, v0, v4

    invoke-interface {p1, v1, v2, v3, v4}, Lsun/awt/geom/PathConsumer2D;->quadTo(FFFF)V

    goto :goto_1

    :cond_3
    aget v1, v0, v2

    aget v2, v0, v3

    invoke-interface {p1, v1, v2}, Lsun/awt/geom/PathConsumer2D;->lineTo(FF)V

    goto :goto_1

    :cond_4
    aget v1, v0, v2

    aget v2, v0, v3

    invoke-interface {p1, v1, v2}, Lsun/awt/geom/PathConsumer2D;->moveTo(FF)V

    :goto_1
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static declared-synchronized getInstance()Lsun/java2d/pipe/RenderingEngine;
    .locals 3

    const-class v0, Lsun/java2d/pipe/RenderingEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/java2d/pipe/RenderingEngine;->reImpl:Lsun/java2d/pipe/RenderingEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lsun/java2d/pipe/RenderingEngine$1;

    invoke-direct {v1}, Lsun/java2d/pipe/RenderingEngine$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/java2d/pipe/RenderingEngine;

    sput-object v1, Lsun/java2d/pipe/RenderingEngine;->reImpl:Lsun/java2d/pipe/RenderingEngine;

    if-eqz v1, :cond_2

    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string v2, "sun.java2d.renderer.trace"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Lsun/java2d/pipe/RenderingEngine$Tracer;

    sget-object v2, Lsun/java2d/pipe/RenderingEngine;->reImpl:Lsun/java2d/pipe/RenderingEngine;

    invoke-direct {v1, v2}, Lsun/java2d/pipe/RenderingEngine$Tracer;-><init>(Lsun/java2d/pipe/RenderingEngine;)V

    sput-object v1, Lsun/java2d/pipe/RenderingEngine;->reImpl:Lsun/java2d/pipe/RenderingEngine;

    :cond_1
    sget-object v1, Lsun/java2d/pipe/RenderingEngine;->reImpl:Lsun/java2d/pipe/RenderingEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "No RenderingEngine module found"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract createStrokedShape(Ljava/awt/Shape;FIIF[FF)Ljava/awt/Shape;
.end method

.method public abstract getAATileGenerator(DDDDDDDDLsun/java2d/pipe/Region;[I)Lsun/java2d/pipe/AATileGenerator;
.end method

.method public abstract getAATileGenerator(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;Lsun/java2d/pipe/Region;Ljava/awt/BasicStroke;ZZ[I)Lsun/java2d/pipe/AATileGenerator;
.end method

.method public abstract getMinimumAAPenSize()F
.end method

.method public abstract strokeTo(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;Ljava/awt/BasicStroke;ZZZLsun/awt/geom/PathConsumer2D;)V
.end method
