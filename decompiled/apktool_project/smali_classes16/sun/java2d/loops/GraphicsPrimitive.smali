.class public abstract Lsun/java2d/loops/GraphicsPrimitive;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/GraphicsPrimitive$TraceReporter;,
        Lsun/java2d/loops/GraphicsPrimitive$GeneralUnaryOp;,
        Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;
    }
.end annotation


# static fields
.field public static final TRACECOUNTS:I = 0x4

.field public static final TRACELOG:I = 0x1

.field public static final TRACETIMESTAMP:I = 0x2

.field static traceMap:Ljava/util/HashMap; = null

.field public static tracefile:Ljava/lang/String; = null

.field public static traceflags:I = 0x0

.field public static traceout:Ljava/io/PrintStream; = null

.field private static unusedPrimID:I = 0x1


# instance fields
.field private cachedname:Ljava/lang/String;

.field private compositeType:Lsun/java2d/loops/CompositeType;

.field private destType:Lsun/java2d/loops/SurfaceType;

.field private methodSignature:Ljava/lang/String;

.field private pNativePrim:J

.field private sourceType:Lsun/java2d/loops/SurfaceType;

.field private uniqueID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.java2d.trace"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    const-string v4, "log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const-string v4, "verbose"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "out:"

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lsun/java2d/loops/GraphicsPrimitive;->tracefile:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v4, "help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unrecognized token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "usage: -Dsun.java2d.trace=[log[,timestamp]],[count],[out:<filename>],[help],[verbose]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_b

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "GraphicsPrimitive logging "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0x1

    const-string v1, "disabled"

    const-string v3, "enabled"

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "GraphicsPrimitive timetamps "

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "[and timestamps] disabled"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "GraphicsPrimitive invocation counts "

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "GraphicsPrimitive trace output to "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Lsun/java2d/loops/GraphicsPrimitive;->tracefile:Ljava/lang/String;

    if-nez v0, :cond_a

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "System.err"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lsun/java2d/loops/GraphicsPrimitive;->tracefile:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    :goto_3
    sput v2, Lsun/java2d/loops/GraphicsPrimitive;->traceflags:I

    :cond_c
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lsun/java2d/loops/GraphicsPrimitive;->pNativePrim:J

    .line 10
    iput-object p3, p0, Lsun/java2d/loops/GraphicsPrimitive;->methodSignature:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lsun/java2d/loops/GraphicsPrimitive;->sourceType:Lsun/java2d/loops/SurfaceType;

    .line 12
    iput-object p6, p0, Lsun/java2d/loops/GraphicsPrimitive;->compositeType:Lsun/java2d/loops/CompositeType;

    .line 13
    iput-object p7, p0, Lsun/java2d/loops/GraphicsPrimitive;->destType:Lsun/java2d/loops/SurfaceType;

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p4, p5, p6, p7}, Lsun/java2d/loops/GraphicsPrimitive;->makeUniqueID(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)I

    move-result p1

    iput p1, p0, Lsun/java2d/loops/GraphicsPrimitive;->uniqueID:I

    goto :goto_1

    :cond_1
    :goto_0
    shl-int/lit8 p1, p4, 0x18

    .line 15
    iput p1, p0, Lsun/java2d/loops/GraphicsPrimitive;->uniqueID:I

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/java2d/loops/GraphicsPrimitive;->methodSignature:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lsun/java2d/loops/GraphicsPrimitive;->sourceType:Lsun/java2d/loops/SurfaceType;

    .line 4
    iput-object p4, p0, Lsun/java2d/loops/GraphicsPrimitive;->compositeType:Lsun/java2d/loops/CompositeType;

    .line 5
    iput-object p5, p0, Lsun/java2d/loops/GraphicsPrimitive;->destType:Lsun/java2d/loops/SurfaceType;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lsun/java2d/loops/GraphicsPrimitive;->makeUniqueID(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)I

    move-result p1

    iput p1, p0, Lsun/java2d/loops/GraphicsPrimitive;->uniqueID:I

    goto :goto_1

    :cond_1
    :goto_0
    shl-int/lit8 p1, p2, 0x18

    .line 7
    iput p1, p0, Lsun/java2d/loops/GraphicsPrimitive;->uniqueID:I

    :goto_1
    return-void
.end method

.method public static synthetic access$000()Ljava/io/PrintStream;
    .locals 1

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitive;->getTraceOutputFile()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public static convertFrom(Lsun/java2d/loops/Blit;Lsun/java2d/SurfaceData;IIIILsun/java2d/SurfaceData;)Lsun/java2d/SurfaceData;
    .locals 8

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1
    invoke-static/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitive;->convertFrom(Lsun/java2d/loops/Blit;Lsun/java2d/SurfaceData;IIIILsun/java2d/SurfaceData;I)Lsun/java2d/SurfaceData;

    move-result-object p0

    return-object p0
.end method

.method public static convertFrom(Lsun/java2d/loops/Blit;Lsun/java2d/SurfaceData;IIIILsun/java2d/SurfaceData;I)Lsun/java2d/SurfaceData;
    .locals 12

    move/from16 v9, p4

    move/from16 v10, p5

    if-eqz p6, :cond_1

    .line 2
    invoke-virtual/range {p6 .. p6}, Lsun/java2d/SurfaceData;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    .line 3
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    if-gt v9, v1, :cond_0

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    if-le v10, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p6

    :goto_0
    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/awt/image/BufferedImage;

    move/from16 v1, p7

    invoke-direct {v0, v9, v10, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 5
    invoke-static {v0}, Lsun/awt/image/BufImgSurfaceData;->createData(Ljava/awt/image/BufferedImage;)Lsun/java2d/SurfaceData;

    move-result-object v0

    :cond_2
    move-object v11, v0

    .line 6
    sget-object v3, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move v5, p2

    move v6, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    return-object v11
.end method

.method public static convertTo(Lsun/java2d/loops/Blit;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Lsun/java2d/pipe/Region;IIII)V
    .locals 11

    if-eqz p0, :cond_0

    sget-object v3, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    :cond_0
    return-void
.end method

.method public static createConverter(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;
    .locals 3

    invoke-virtual {p0, p1}, Lsun/java2d/loops/SurfaceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-static {p0, v0, p1}, Lsun/java2d/loops/Blit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot construct converter for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "=>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGeneralOp(ILsun/java2d/loops/CompositeType;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 1

    sget-object v0, Lsun/java2d/loops/SurfaceType;->IntArgb:Lsun/java2d/loops/SurfaceType;

    invoke-static {p0, v0, p1, v0}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locatePrim(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object p0

    return-object p0
.end method

.method private static getTraceOutputFile()Ljava/io/PrintStream;
    .locals 2

    sget-object v0, Lsun/java2d/loops/GraphicsPrimitive;->traceout:Ljava/io/PrintStream;

    if-nez v0, :cond_2

    sget-object v0, Lsun/java2d/loops/GraphicsPrimitive;->tracefile:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lsun/java2d/loops/GraphicsPrimitive$1;

    invoke-direct {v0}, Lsun/java2d/loops/GraphicsPrimitive$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v1, Lsun/java2d/loops/GraphicsPrimitive;->traceout:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lsun/java2d/loops/GraphicsPrimitive;->traceout:Ljava/io/PrintStream;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lsun/java2d/loops/GraphicsPrimitive;->traceout:Ljava/io/PrintStream;

    :cond_2
    :goto_0
    sget-object v0, Lsun/java2d/loops/GraphicsPrimitive;->traceout:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static final declared-synchronized makePrimTypeID()I
    .locals 3

    const-class v0, Lsun/java2d/loops/GraphicsPrimitive;

    monitor-enter v0

    :try_start_0
    sget v1, Lsun/java2d/loops/GraphicsPrimitive;->unusedPrimID:I

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    sput v2, Lsun/java2d/loops/GraphicsPrimitive;->unusedPrimID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "primitive id overflow"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized makeUniqueID(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)I
    .locals 1

    const-class v0, Lsun/java2d/loops/GraphicsPrimitive;

    monitor-enter v0

    shl-int/lit8 p0, p0, 0x18

    :try_start_0
    invoke-virtual {p3}, Lsun/java2d/loops/SurfaceType;->getUniqueID()I

    move-result p3

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p0, p3

    invoke-virtual {p2}, Lsun/java2d/loops/CompositeType;->getUniqueID()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p0, p2

    invoke-virtual {p1}, Lsun/java2d/loops/SurfaceType;->getUniqueID()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr p0, p1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static simplename(Lsun/java2d/loops/CompositeType;)Ljava/lang/String;
    .locals 1

    .line 7
    const-class v0, Lsun/java2d/loops/CompositeType;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, p0}, Lsun/java2d/loops/GraphicsPrimitive;->simplename([Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static simplename(Lsun/java2d/loops/SurfaceType;)Ljava/lang/String;
    .locals 1

    .line 6
    const-class v0, Lsun/java2d/loops/SurfaceType;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, p0}, Lsun/java2d/loops/GraphicsPrimitive;->simplename([Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static simplename([Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2
    aget-object v1, p0, v0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized tracePrimitive(Ljava/lang/Object;)V
    .locals 5

    const-class v0, Lsun/java2d/loops/GraphicsPrimitive;

    monitor-enter v0

    :try_start_0
    sget v1, Lsun/java2d/loops/GraphicsPrimitive;->traceflags:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lsun/java2d/loops/GraphicsPrimitive;->traceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/java2d/loops/GraphicsPrimitive;->traceMap:Ljava/util/HashMap;

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitive$TraceReporter;->setShutdownHook()V

    :cond_0
    sget-object v1, Lsun/java2d/loops/GraphicsPrimitive;->traceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-array v1, v2, [I

    sget-object v3, Lsun/java2d/loops/GraphicsPrimitive;->traceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v1, [I

    const/4 v3, 0x0

    aget v4, v1, v3

    add-int/2addr v4, v2

    aput v4, v1, v3

    :cond_2
    sget v1, Lsun/java2d/loops/GraphicsPrimitive;->traceflags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitive;->getTraceOutputFile()Ljava/io/PrintStream;

    move-result-object v1

    sget v2, Lsun/java2d/loops/GraphicsPrimitive;->traceflags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static tracingEnabled()Z
    .locals 1

    sget v0, Lsun/java2d/loops/GraphicsPrimitive;->traceflags:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getCompositeType()Lsun/java2d/loops/CompositeType;
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/GraphicsPrimitive;->compositeType:Lsun/java2d/loops/CompositeType;

    return-object p0
.end method

.method public final getDestType()Lsun/java2d/loops/SurfaceType;
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/GraphicsPrimitive;->destType:Lsun/java2d/loops/SurfaceType;

    return-object p0
.end method

.method public final getNativePrim()J
    .locals 2

    iget-wide v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->pNativePrim:J

    return-wide v0
.end method

.method public final getPrimTypeID()I
    .locals 0

    iget p0, p0, Lsun/java2d/loops/GraphicsPrimitive;->uniqueID:I

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/GraphicsPrimitive;->methodSignature:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceType()Lsun/java2d/loops/SurfaceType;
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/GraphicsPrimitive;->sourceType:Lsun/java2d/loops/SurfaceType;

    return-object p0
.end method

.method public final getUniqueID()I
    .locals 0

    iget p0, p0, Lsun/java2d/loops/GraphicsPrimitive;->uniqueID:I

    return p0
.end method

.method public abstract makePrimitive(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;
.end method

.method public final satisfies(Ljava/lang/String;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Z
    .locals 2

    iget-object v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->methodSignature:Ljava/lang/String;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lsun/java2d/loops/GraphicsPrimitive;->sourceType:Lsun/java2d/loops/SurfaceType;

    invoke-virtual {p2, p1}, Lsun/java2d/loops/SurfaceType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_1
    if-nez p3, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lsun/java2d/loops/GraphicsPrimitive;->compositeType:Lsun/java2d/loops/CompositeType;

    invoke-virtual {p3, p1}, Lsun/java2d/loops/CompositeType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_2
    if-nez p4, :cond_3

    return v1

    :cond_3
    iget-object p1, p0, Lsun/java2d/loops/GraphicsPrimitive;->destType:Lsun/java2d/loops/SurfaceType;

    invoke-virtual {p4, p1}, Lsun/java2d/loops/SurfaceType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-virtual {p4}, Lsun/java2d/loops/SurfaceType;->getSuperType()Lsun/java2d/loops/SurfaceType;

    move-result-object p4

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Lsun/java2d/loops/CompositeType;->getSuperType()Lsun/java2d/loops/CompositeType;

    move-result-object p3

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lsun/java2d/loops/SurfaceType;->getSuperType()Lsun/java2d/loops/SurfaceType;

    move-result-object p2

    goto :goto_0
.end method

.method public final satisfiesSameAs(Lsun/java2d/loops/GraphicsPrimitive;)Z
    .locals 2

    iget-object v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->methodSignature:Ljava/lang/String;

    iget-object v1, p1, Lsun/java2d/loops/GraphicsPrimitive;->methodSignature:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->sourceType:Lsun/java2d/loops/SurfaceType;

    iget-object v1, p1, Lsun/java2d/loops/GraphicsPrimitive;->sourceType:Lsun/java2d/loops/SurfaceType;

    invoke-virtual {v0, v1}, Lsun/java2d/loops/SurfaceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->compositeType:Lsun/java2d/loops/CompositeType;

    iget-object v1, p1, Lsun/java2d/loops/GraphicsPrimitive;->compositeType:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v0, v1}, Lsun/java2d/loops/CompositeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lsun/java2d/loops/GraphicsPrimitive;->destType:Lsun/java2d/loops/SurfaceType;

    iget-object p1, p1, Lsun/java2d/loops/GraphicsPrimitive;->destType:Lsun/java2d/loops/SurfaceType;

    invoke-virtual {p0, p1}, Lsun/java2d/loops/SurfaceType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setupGeneralBinaryOp(Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;)V
    .locals 6

    invoke-interface {p1}, Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;->getPrimTypeID()I

    move-result p0

    invoke-interface {p1}, Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;->getSourceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v1

    invoke-interface {p1}, Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v2

    invoke-interface {p1}, Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v3

    sget-object v4, Lsun/java2d/loops/SurfaceType;->IntArgb:Lsun/java2d/loops/SurfaceType;

    invoke-static {v1, v4}, Lsun/java2d/loops/GraphicsPrimitive;->createConverter(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v1

    invoke-static {p0, v4, v2, v3}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locatePrim(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 p0, 0x0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Lsun/java2d/loops/GraphicsPrimitive;->getGeneralOp(ILsun/java2d/loops/CompositeType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v3, v4}, Lsun/java2d/loops/GraphicsPrimitive;->createConverter(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object p0

    invoke-static {v4, v3}, Lsun/java2d/loops/GraphicsPrimitive;->createConverter(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v1, p0, v5, v0}, Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;->setPrimitives(Lsun/java2d/loops/Blit;Lsun/java2d/loops/Blit;Lsun/java2d/loops/GraphicsPrimitive;Lsun/java2d/loops/Blit;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/InternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot construct general op for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setupGeneralUnaryOp(Lsun/java2d/loops/GraphicsPrimitive$GeneralUnaryOp;)V
    .locals 4

    invoke-interface {p1}, Lsun/java2d/loops/GraphicsPrimitive$GeneralUnaryOp;->getPrimTypeID()I

    move-result p0

    invoke-interface {p1}, Lsun/java2d/loops/GraphicsPrimitive$GeneralUnaryOp;->getSignature()Ljava/lang/String;

    invoke-interface {p1}, Lsun/java2d/loops/GraphicsPrimitive$GeneralUnaryOp;->getCompositeType()Lsun/java2d/loops/CompositeType;

    move-result-object v0

    invoke-interface {p1}, Lsun/java2d/loops/GraphicsPrimitive$GeneralUnaryOp;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v1

    sget-object v2, Lsun/java2d/loops/SurfaceType;->IntArgb:Lsun/java2d/loops/SurfaceType;

    invoke-static {v1, v2}, Lsun/java2d/loops/GraphicsPrimitive;->createConverter(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v3

    invoke-static {p0, v0}, Lsun/java2d/loops/GraphicsPrimitive;->getGeneralOp(ILsun/java2d/loops/CompositeType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object p0

    invoke-static {v2, v1}, Lsun/java2d/loops/GraphicsPrimitive;->createConverter(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v2

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {p1, v3, p0, v2}, Lsun/java2d/loops/GraphicsPrimitive$GeneralUnaryOp;->setPrimitives(Lsun/java2d/loops/Blit;Lsun/java2d/loops/GraphicsPrimitive;Lsun/java2d/loops/Blit;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot construct binary op for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->cachedname:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->methodSignature:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->sourceType:Lsun/java2d/loops/SurfaceType;

    invoke-static {v0}, Lsun/java2d/loops/GraphicsPrimitive;->simplename(Lsun/java2d/loops/SurfaceType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/java2d/loops/GraphicsPrimitive;->compositeType:Lsun/java2d/loops/CompositeType;

    invoke-static {v2}, Lsun/java2d/loops/GraphicsPrimitive;->simplename(Lsun/java2d/loops/CompositeType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->destType:Lsun/java2d/loops/SurfaceType;

    invoke-static {v0}, Lsun/java2d/loops/GraphicsPrimitive;->simplename(Lsun/java2d/loops/SurfaceType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/java2d/loops/GraphicsPrimitive;->cachedname:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lsun/java2d/loops/GraphicsPrimitive;->cachedname:Ljava/lang/String;

    return-object p0
.end method

.method public abstract traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
.end method
