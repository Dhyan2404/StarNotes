.class public final Lsun/java2d/loops/GraphicsPrimitiveMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/GraphicsPrimitiveMgr$PrimitiveSpec;
    }
.end annotation


# static fields
.field private static final debugTrace:Z = false

.field private static generalPrimitives:[Lsun/java2d/loops/GraphicsPrimitive; = null

.field private static needssort:Z = true

.field private static primFinder:Ljava/util/Comparator;

.field private static primSorter:Ljava/util/Comparator;

.field private static primitives:[Lsun/java2d/loops/GraphicsPrimitive;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-class v0, Lsun/java2d/loops/GraphicsPrimitive;

    const-class v1, Lsun/java2d/loops/SurfaceType;

    const-class v2, Lsun/java2d/loops/CompositeType;

    const-class v3, Lsun/java2d/SunGraphics2D;

    const-class v4, Ljava/awt/Color;

    const-class v5, Ljava/awt/geom/AffineTransform;

    const-class v6, Lsun/java2d/loops/XORComposite;

    const-class v7, Ljava/awt/AlphaComposite;

    const-class v8, Ljava/awt/geom/Path2D;

    const-class v9, Ljava/awt/geom/Path2D$Float;

    const-class v10, Lsun/awt/SunHints;

    invoke-static/range {v0 .. v10}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->initIDs(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {}, Lsun/java2d/loops/CustomComponent;->register()V

    invoke-static {}, Lsun/java2d/loops/GeneralRenderer;->register()V

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->registerNativeLoops()V

    new-instance v0, Lsun/java2d/loops/GraphicsPrimitiveMgr$1;

    invoke-direct {v0}, Lsun/java2d/loops/GraphicsPrimitiveMgr$1;-><init>()V

    sput-object v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primSorter:Ljava/util/Comparator;

    new-instance v0, Lsun/java2d/loops/GraphicsPrimitiveMgr$2;

    invoke-direct {v0}, Lsun/java2d/loops/GraphicsPrimitiveMgr$2;-><init>()V

    sput-object v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primFinder:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initIDs(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    return-void
.end method

.method public static declared-synchronized locate(ILsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 3

    const-class v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lsun/java2d/loops/SurfaceType;->OpaqueColor:Lsun/java2d/loops/SurfaceType;

    sget-object v2, Lsun/java2d/loops/CompositeType;->Src:Lsun/java2d/loops/CompositeType;

    invoke-static {p0, v1, v2, p1}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locate(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized locate(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 2

    const-class v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locatePrim(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locateGeneral(I)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Lsun/java2d/loops/GraphicsPrimitive;->makePrimitive(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    sget p0, Lsun/java2d/loops/GraphicsPrimitive;->traceflags:I

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {v1}, Lsun/java2d/loops/GraphicsPrimitive;->traceWrap()Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static locate(Lsun/java2d/loops/GraphicsPrimitiveMgr$PrimitiveSpec;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 4

    .line 8
    sget-boolean v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->needssort:Z

    if-eqz v0, :cond_1

    .line 9
    sget v0, Lsun/java2d/loops/GraphicsPrimitive;->traceflags:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 10
    :goto_0
    sget-object v2, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primitives:[Lsun/java2d/loops/GraphicsPrimitive;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 11
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lsun/java2d/loops/GraphicsPrimitive;->traceWrap()Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primitives:[Lsun/java2d/loops/GraphicsPrimitive;

    sget-object v2, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primSorter:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 13
    sput-boolean v1, Lsun/java2d/loops/GraphicsPrimitiveMgr;->needssort:Z

    .line 14
    :cond_1
    sget-object v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primitives:[Lsun/java2d/loops/GraphicsPrimitive;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 15
    :cond_2
    sget-object v2, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primFinder:Ljava/util/Comparator;

    invoke-static {v0, p0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_3

    .line 16
    aget-object v1, v0, p0

    .line 17
    instance-of v2, v1, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    if-eqz v2, :cond_3

    .line 18
    check-cast v1, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    invoke-virtual {v1}, Lsun/java2d/loops/GraphicsPrimitiveProxy;->instantiate()Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v1

    .line 19
    aput-object v1, v0, p0

    :cond_3
    return-object v1
.end method

.method private static locateGeneral(I)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 4

    sget-object v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->generalPrimitives:[Lsun/java2d/loops/GraphicsPrimitive;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lsun/java2d/loops/GraphicsPrimitiveMgr;->generalPrimitives:[Lsun/java2d/loops/GraphicsPrimitive;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/java2d/loops/GraphicsPrimitive;->getPrimTypeID()I

    move-result v3

    if-ne v3, p0, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static declared-synchronized locatePrim(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 6

    const-class v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lsun/java2d/loops/GraphicsPrimitiveMgr$PrimitiveSpec;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lsun/java2d/loops/GraphicsPrimitiveMgr$PrimitiveSpec;-><init>(Lsun/java2d/loops/GraphicsPrimitiveMgr$1;)V

    :goto_0
    if-eqz p3, :cond_3

    move-object v3, p1

    :goto_1
    if-eqz v3, :cond_2

    move-object v4, p2

    :goto_2
    if-eqz v4, :cond_1

    invoke-static {p0, v3, v4, p3}, Lsun/java2d/loops/GraphicsPrimitive;->makeUniqueID(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)I

    move-result v5

    iput v5, v1, Lsun/java2d/loops/GraphicsPrimitiveMgr$PrimitiveSpec;->uniqueID:I

    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locate(Lsun/java2d/loops/GraphicsPrimitiveMgr$PrimitiveSpec;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit v0

    return-object v5

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lsun/java2d/loops/CompositeType;->getSuperType()Lsun/java2d/loops/CompositeType;

    move-result-object v4

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lsun/java2d/loops/SurfaceType;->getSuperType()Lsun/java2d/loops/SurfaceType;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lsun/java2d/loops/SurfaceType;->getSuperType()Lsun/java2d/loops/SurfaceType;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->needssort:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primitives:[Lsun/java2d/loops/GraphicsPrimitive;

    sget-object v2, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primSorter:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sput-boolean v1, Lsun/java2d/loops/GraphicsPrimitiveMgr;->needssort:Z

    :cond_0
    array-length p0, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->testPrimitiveInstantiation(Z)V

    return-void
.end method

.method public static declared-synchronized register([Lsun/java2d/loops/GraphicsPrimitive;)V
    .locals 6

    const-class v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primitives:[Lsun/java2d/loops/GraphicsPrimitive;

    array-length v2, p0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int v5, v4, v2

    new-array v5, v5, [Lsun/java2d/loops/GraphicsPrimitive;

    if-eqz v1, :cond_1

    invoke-static {v1, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-static {p0, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    sput-boolean p0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->needssort:Z

    sput-object v5, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primitives:[Lsun/java2d/loops/GraphicsPrimitive;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerGeneral(Lsun/java2d/loops/GraphicsPrimitive;)V
    .locals 5

    const-class v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/java2d/loops/GraphicsPrimitiveMgr;->generalPrimitives:[Lsun/java2d/loops/GraphicsPrimitive;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lsun/java2d/loops/GraphicsPrimitive;

    aput-object p0, v1, v2

    sput-object v1, Lsun/java2d/loops/GraphicsPrimitiveMgr;->generalPrimitives:[Lsun/java2d/loops/GraphicsPrimitive;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    array-length v3, v1

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lsun/java2d/loops/GraphicsPrimitive;

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p0, v4, v3

    sput-object v4, Lsun/java2d/loops/GraphicsPrimitiveMgr;->generalPrimitives:[Lsun/java2d/loops/GraphicsPrimitive;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static registerNativeLoops()V
    .locals 0

    return-void
.end method

.method public static testPrimitiveInstantiation()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->testPrimitiveInstantiation(Z)V

    return-void
.end method

.method public static testPrimitiveInstantiation(Z)V
    .locals 8

    .line 2
    sget-object v0, Lsun/java2d/loops/GraphicsPrimitiveMgr;->primitives:[Lsun/java2d/loops/GraphicsPrimitive;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 4
    aget-object v4, v0, v1

    .line 5
    instance-of v5, v4, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    if-eqz v5, :cond_1

    .line 6
    move-object v5, v4

    check-cast v5, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    invoke-virtual {v5}, Lsun/java2d/loops/GraphicsPrimitiveProxy;->instantiate()Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lsun/java2d/loops/GraphicsPrimitive;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lsun/java2d/loops/GraphicsPrimitive;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v5}, Lsun/java2d/loops/GraphicsPrimitive;->getUniqueID()I

    move-result v6

    invoke-virtual {v4}, Lsun/java2d/loops/GraphicsPrimitive;->getUniqueID()I

    move-result v7

    if-ne v6, v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    if-eqz p0, :cond_3

    .line 9
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 10
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r.getSignature == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lsun/java2d/loops/GraphicsPrimitive;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r.getUniqueID == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lsun/java2d/loops/GraphicsPrimitive;->getUniqueID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p.getSignature == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lsun/java2d/loops/GraphicsPrimitive;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p.getUniqueID == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lsun/java2d/loops/GraphicsPrimitive;->getUniqueID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primitive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returns wrong signature for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p0, :cond_2

    .line 16
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (not proxied)."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 17
    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " graphics primitives were not proxied."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " proxied graphics primitives resolved correctly."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total graphics primitives"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static writeLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
