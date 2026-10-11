.class public Lsun/java2d/loops/TransformBlit;
.super Lsun/java2d/loops/GraphicsPrimitive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/TransformBlit$TraceTransformBlit;
    }
.end annotation


# static fields
.field private static blitcache:Lsun/java2d/loops/RenderCache; = null

.field public static final methodSignature:Ljava/lang/String; = "TransformBlit(...)"

.field public static final primTypeID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitive;->makePrimTypeID()I

    move-result v0

    sput v0, Lsun/java2d/loops/TransformBlit;->primTypeID:I

    new-instance v0, Lsun/java2d/loops/RenderCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lsun/java2d/loops/RenderCache;-><init>(I)V

    sput-object v0, Lsun/java2d/loops/TransformBlit;->blitcache:Lsun/java2d/loops/RenderCache;

    new-instance v0, Lsun/java2d/loops/TransformBlit;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lsun/java2d/loops/TransformBlit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    invoke-static {v0}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->registerGeneral(Lsun/java2d/loops/GraphicsPrimitive;)V

    return-void
.end method

.method public constructor <init>(JLsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 8

    .line 2
    sget-object v3, Lsun/java2d/loops/TransformBlit;->methodSignature:Ljava/lang/String;

    sget v4, Lsun/java2d/loops/TransformBlit;->primTypeID:I

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitive;-><init>(JLjava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method

.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 6

    .line 1
    sget-object v1, Lsun/java2d/loops/TransformBlit;->methodSignature:Ljava/lang/String;

    sget v2, Lsun/java2d/loops/TransformBlit;->primTypeID:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/GraphicsPrimitive;-><init>(Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method

.method public static getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/TransformBlit;
    .locals 2

    sget-object v0, Lsun/java2d/loops/TransformBlit;->blitcache:Lsun/java2d/loops/RenderCache;

    invoke-virtual {v0, p0, p1, p2}, Lsun/java2d/loops/RenderCache;->get(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lsun/java2d/loops/TransformBlit;

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lsun/java2d/loops/TransformBlit;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/TransformBlit;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lsun/java2d/loops/TransformBlit;->blitcache:Lsun/java2d/loops/RenderCache;

    invoke-virtual {v1, p0, p1, p2, v0}, Lsun/java2d/loops/RenderCache;->put(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/TransformBlit;
    .locals 1

    sget v0, Lsun/java2d/loops/TransformBlit;->primTypeID:I

    invoke-static {v0, p0, p1, p2}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locate(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object p0

    check-cast p0, Lsun/java2d/loops/TransformBlit;

    return-object p0
.end method


# virtual methods
.method public native Transform(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;Ljava/awt/geom/AffineTransform;IIIIIII)V
.end method

.method public makePrimitive(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 1

    new-instance v0, Lsun/java2d/loops/TransformBlit$TraceTransformBlit;

    invoke-direct {v0, p0}, Lsun/java2d/loops/TransformBlit$TraceTransformBlit;-><init>(Lsun/java2d/loops/TransformBlit;)V

    return-object v0
.end method
