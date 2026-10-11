.class public abstract Lsun/java2d/SurfaceDataProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/awt/image/SurfaceManager$FlushableCacheData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/SurfaceDataProxy$CountdownTracker;
    }
.end annotation


# static fields
.field public static UNCACHED:Lsun/java2d/SurfaceDataProxy; = null

.field private static cachingAllowed:Z = true

.field private static defaultThreshold:I


# instance fields
.field private cacheTracker:Lsun/java2d/StateTracker;

.field private cachedSD:Lsun/java2d/SurfaceData;

.field private numtries:I

.field private srcTracker:Lsun/java2d/StateTracker;

.field private threshold:I

.field private valid:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.java2d.managedimages"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v1, Lsun/java2d/SurfaceDataProxy;->cachingAllowed:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Disabling managed images"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    sput v0, Lsun/java2d/SurfaceDataProxy;->defaultThreshold:I

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v2, "sun.java2d.accthreshold"

    invoke-direct {v0, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    sput v0, Lsun/java2d/SurfaceDataProxy;->defaultThreshold:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Default Acceleration Threshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lsun/java2d/SurfaceDataProxy;->defaultThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting new threshold:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Lsun/java2d/SurfaceDataProxy$1;

    invoke-direct {v0, v1}, Lsun/java2d/SurfaceDataProxy$1;-><init>(I)V

    sput-object v0, Lsun/java2d/SurfaceDataProxy;->UNCACHED:Lsun/java2d/SurfaceDataProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lsun/java2d/SurfaceDataProxy;->defaultThreshold:I

    invoke-direct {p0, v0}, Lsun/java2d/SurfaceDataProxy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lsun/java2d/SurfaceDataProxy;->threshold:I

    .line 4
    sget-object p1, Lsun/java2d/StateTracker;->NEVER_CURRENT:Lsun/java2d/StateTracker;

    iput-object p1, p0, Lsun/java2d/SurfaceDataProxy;->srcTracker:Lsun/java2d/StateTracker;

    .line 5
    iput-object p1, p0, Lsun/java2d/SurfaceDataProxy;->cacheTracker:Lsun/java2d/StateTracker;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lsun/java2d/SurfaceDataProxy;->valid:Z

    return-void
.end method

.method public static isCachingAllowed()Z
    .locals 1

    sget-boolean v0, Lsun/java2d/SurfaceDataProxy;->cachingAllowed:Z

    return v0
.end method


# virtual methods
.method public displayChanged()V
    .locals 0

    invoke-virtual {p0}, Lsun/java2d/SurfaceDataProxy;->flush()V

    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lsun/java2d/SurfaceDataProxy;->cachedSD:Lsun/java2d/SurfaceData;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lsun/java2d/SurfaceDataProxy;->cachedSD:Lsun/java2d/SurfaceData;

    .line 6
    sget-object v1, Lsun/java2d/StateTracker;->NEVER_CURRENT:Lsun/java2d/StateTracker;

    iput-object v1, p0, Lsun/java2d/SurfaceDataProxy;->cacheTracker:Lsun/java2d/StateTracker;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lsun/java2d/SurfaceDataProxy;->invalidate()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsun/java2d/SurfaceDataProxy;->flush()V

    .line 3
    invoke-virtual {p0}, Lsun/java2d/SurfaceDataProxy;->isValid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getRetryTracker(Lsun/java2d/SurfaceData;)Lsun/java2d/StateTracker;
    .locals 0

    new-instance p1, Lsun/java2d/SurfaceDataProxy$CountdownTracker;

    iget p0, p0, Lsun/java2d/SurfaceDataProxy;->threshold:I

    invoke-direct {p1, p0}, Lsun/java2d/SurfaceDataProxy$CountdownTracker;-><init>(I)V

    return-object p1
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/java2d/SurfaceDataProxy;->valid:Z

    return-void
.end method

.method public isAccelerated()Z
    .locals 1

    invoke-virtual {p0}, Lsun/java2d/SurfaceDataProxy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/java2d/SurfaceDataProxy;->srcTracker:Lsun/java2d/StateTracker;

    invoke-interface {v0}, Lsun/java2d/StateTracker;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lsun/java2d/SurfaceDataProxy;->cacheTracker:Lsun/java2d/StateTracker;

    invoke-interface {p0}, Lsun/java2d/StateTracker;->isCurrent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isSupportedOperation(Lsun/java2d/SurfaceData;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Z
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lsun/java2d/SurfaceDataProxy;->valid:Z

    return p0
.end method

.method public paletteChanged()V
    .locals 1

    sget-object v0, Lsun/java2d/StateTracker;->NEVER_CURRENT:Lsun/java2d/StateTracker;

    iput-object v0, p0, Lsun/java2d/SurfaceDataProxy;->srcTracker:Lsun/java2d/StateTracker;

    return-void
.end method

.method public replaceData(Lsun/java2d/SurfaceData;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/SurfaceDataProxy;->isSupportedOperation(Lsun/java2d/SurfaceData;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lsun/java2d/SurfaceDataProxy;->srcTracker:Lsun/java2d/StateTracker;

    invoke-interface {p2}, Lsun/java2d/StateTracker;->isCurrent()Z

    move-result p2

    if-nez p2, :cond_1

    monitor-enter p0

    :try_start_0
    iget p2, p0, Lsun/java2d/SurfaceDataProxy;->threshold:I

    iput p2, p0, Lsun/java2d/SurfaceDataProxy;->numtries:I

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getStateTracker()Lsun/java2d/StateTracker;

    move-result-object p2

    iput-object p2, p0, Lsun/java2d/SurfaceDataProxy;->srcTracker:Lsun/java2d/StateTracker;

    sget-object p3, Lsun/java2d/StateTracker;->NEVER_CURRENT:Lsun/java2d/StateTracker;

    iput-object p3, p0, Lsun/java2d/SurfaceDataProxy;->cacheTracker:Lsun/java2d/StateTracker;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lsun/java2d/StateTracker;->isCurrent()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getState()Lsun/java2d/StateTrackable$State;

    move-result-object p2

    sget-object p3, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Lsun/java2d/SurfaceDataProxy;->invalidate()V

    invoke-virtual {p0}, Lsun/java2d/SurfaceDataProxy;->flush()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    iget-object p2, p0, Lsun/java2d/SurfaceDataProxy;->cachedSD:Lsun/java2d/SurfaceData;

    iget-object p3, p0, Lsun/java2d/SurfaceDataProxy;->cacheTracker:Lsun/java2d/StateTracker;

    invoke-interface {p3}, Lsun/java2d/StateTracker;->isCurrent()Z

    move-result p3

    if-nez p3, :cond_7

    monitor-enter p0

    :try_start_2
    iget p3, p0, Lsun/java2d/SurfaceDataProxy;->numtries:I

    if-lez p3, :cond_2

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lsun/java2d/SurfaceDataProxy;->numtries:I

    monitor-exit p0

    return-object p1

    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getBounds()Ljava/awt/Rectangle;

    move-result-object p3

    iget p4, p3, Ljava/awt/Rectangle;->width:I

    iget p3, p3, Ljava/awt/Rectangle;->height:I

    iget-object v0, p0, Lsun/java2d/SurfaceDataProxy;->srcTracker:Lsun/java2d/StateTracker;

    invoke-virtual {p0, p1, p2, p4, p3}, Lsun/java2d/SurfaceDataProxy;->validateSurfaceData(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;II)Lsun/java2d/SurfaceData;

    move-result-object p2

    if-nez p2, :cond_4

    monitor-enter p0

    :try_start_3
    iget-object p2, p0, Lsun/java2d/SurfaceDataProxy;->srcTracker:Lsun/java2d/StateTracker;

    if-ne v0, p2, :cond_3

    invoke-virtual {p0, p1}, Lsun/java2d/SurfaceDataProxy;->getRetryTracker(Lsun/java2d/SurfaceData;)Lsun/java2d/StateTracker;

    move-result-object p2

    iput-object p2, p0, Lsun/java2d/SurfaceDataProxy;->cacheTracker:Lsun/java2d/StateTracker;

    const/4 p2, 0x0

    iput-object p2, p0, Lsun/java2d/SurfaceDataProxy;->cachedSD:Lsun/java2d/SurfaceData;

    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_4
    invoke-virtual {p0, p1, p2, p4, p3}, Lsun/java2d/SurfaceDataProxy;->updateSurfaceData(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;II)V

    invoke-virtual {p2}, Lsun/java2d/SurfaceData;->isValid()Z

    move-result p3

    if-nez p3, :cond_5

    return-object p1

    :cond_5
    monitor-enter p0

    :try_start_4
    iget-object p3, p0, Lsun/java2d/SurfaceDataProxy;->srcTracker:Lsun/java2d/StateTracker;

    if-ne v0, p3, :cond_6

    invoke-interface {v0}, Lsun/java2d/StateTracker;->isCurrent()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lsun/java2d/SurfaceData;->getStateTracker()Lsun/java2d/StateTracker;

    move-result-object p3

    iput-object p3, p0, Lsun/java2d/SurfaceDataProxy;->cacheTracker:Lsun/java2d/StateTracker;

    iput-object p2, p0, Lsun/java2d/SurfaceDataProxy;->cachedSD:Lsun/java2d/SurfaceData;

    :cond_6
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :cond_7
    :goto_0
    if-eqz p2, :cond_8

    return-object p2

    :cond_8
    return-object p1
.end method

.method public updateSurfaceData(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;II)V
    .locals 14

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v1

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-static {v0, v2, v1}, Lsun/java2d/loops/Blit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v3

    sget-object v6, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v3 .. v13}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    invoke-virtual/range {p2 .. p2}, Lsun/java2d/SurfaceData;->markDirty()V

    return-void
.end method

.method public updateSurfaceDataBg(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;IILjava/awt/Color;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v1

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-static {v0, v2, v1}, Lsun/java2d/loops/BlitBg;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/BlitBg;

    move-result-object v3

    sget-object v6, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    const/4 v7, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/awt/Color;->getRGB()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v3 .. v14}, Lsun/java2d/loops/BlitBg;->BlitBg(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIIII)V

    invoke-virtual/range {p2 .. p2}, Lsun/java2d/SurfaceData;->markDirty()V

    return-void
.end method

.method public abstract validateSurfaceData(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;II)Lsun/java2d/SurfaceData;
.end method
