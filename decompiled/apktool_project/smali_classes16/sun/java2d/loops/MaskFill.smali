.class public Lsun/java2d/loops/MaskFill;
.super Lsun/java2d/loops/GraphicsPrimitive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/MaskFill$TraceMaskFill;,
        Lsun/java2d/loops/MaskFill$General;
    }
.end annotation


# static fields
.field public static final drawPgramSignature:Ljava/lang/String; = "DrawAAPgram(...)"

.field public static final fillPgramSignature:Ljava/lang/String; = "FillAAPgram(...)"

.field private static fillcache:Lsun/java2d/loops/RenderCache; = null

.field public static final methodSignature:Ljava/lang/String; = "MaskFill(...)"

.field public static final primTypeID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitive;->makePrimTypeID()I

    move-result v0

    sput v0, Lsun/java2d/loops/MaskFill;->primTypeID:I

    new-instance v0, Lsun/java2d/loops/RenderCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lsun/java2d/loops/RenderCache;-><init>(I)V

    sput-object v0, Lsun/java2d/loops/MaskFill;->fillcache:Lsun/java2d/loops/RenderCache;

    new-instance v0, Lsun/java2d/loops/MaskFill;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lsun/java2d/loops/MaskFill;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    invoke-static {v0}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->registerGeneral(Lsun/java2d/loops/GraphicsPrimitive;)V

    return-void
.end method

.method public constructor <init>(JLsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 8

    .line 3
    sget-object v3, Lsun/java2d/loops/MaskFill;->methodSignature:Ljava/lang/String;

    sget v4, Lsun/java2d/loops/MaskFill;->primTypeID:I

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitive;-><init>(JLjava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 6

    .line 1
    sget v2, Lsun/java2d/loops/MaskFill;->primTypeID:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/GraphicsPrimitive;-><init>(Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method

.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 6

    .line 2
    sget-object v1, Lsun/java2d/loops/MaskFill;->methodSignature:Ljava/lang/String;

    sget v2, Lsun/java2d/loops/MaskFill;->primTypeID:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/GraphicsPrimitive;-><init>(Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method

.method public static getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskFill;
    .locals 2

    sget-object v0, Lsun/java2d/loops/MaskFill;->fillcache:Lsun/java2d/loops/RenderCache;

    invoke-virtual {v0, p0, p1, p2}, Lsun/java2d/loops/RenderCache;->get(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lsun/java2d/loops/MaskFill;

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lsun/java2d/loops/MaskFill;->locatePrim(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskFill;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lsun/java2d/loops/MaskFill;->fillcache:Lsun/java2d/loops/RenderCache;

    invoke-virtual {v1, p0, p1, p2, v0}, Lsun/java2d/loops/RenderCache;->put(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public static locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskFill;
    .locals 1

    sget v0, Lsun/java2d/loops/MaskFill;->primTypeID:I

    invoke-static {v0, p0, p1, p2}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locate(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object p0

    check-cast p0, Lsun/java2d/loops/MaskFill;

    return-object p0
.end method

.method public static locatePrim(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskFill;
    .locals 1

    sget v0, Lsun/java2d/loops/MaskFill;->primTypeID:I

    invoke-static {v0, p0, p1, p2}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locatePrim(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object p0

    check-cast p0, Lsun/java2d/loops/MaskFill;

    return-object p0
.end method


# virtual methods
.method public native DrawAAPgram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;DDDDDDDD)V
.end method

.method public native FillAAPgram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;DDDDDD)V
.end method

.method public native MaskFill(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;IIII[BII)V
.end method

.method public canDoParallelograms()Z
    .locals 4

    invoke-virtual {p0}, Lsun/java2d/loops/GraphicsPrimitive;->getNativePrim()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makePrimitive(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    sget-object p0, Lsun/java2d/loops/SurfaceType;->OpaqueColor:Lsun/java2d/loops/SurfaceType;

    invoke-virtual {p0, p1}, Lsun/java2d/loops/SurfaceType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    invoke-virtual {p0, p1}, Lsun/java2d/loops/SurfaceType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "MaskFill can only fill with colors"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    invoke-virtual {p0, p2}, Lsun/java2d/loops/CompositeType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lsun/java2d/loops/MaskFill$General;

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/loops/MaskFill$General;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Cannot construct MaskFill for XOR mode"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 1

    new-instance v0, Lsun/java2d/loops/MaskFill$TraceMaskFill;

    invoke-direct {v0, p0}, Lsun/java2d/loops/MaskFill$TraceMaskFill;-><init>(Lsun/java2d/loops/MaskFill;)V

    return-object v0
.end method
