.class public Lsun/java2d/loops/FillRect;
.super Lsun/java2d/loops/GraphicsPrimitive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/FillRect$TraceFillRect;,
        Lsun/java2d/loops/FillRect$General;
    }
.end annotation


# static fields
.field public static final methodSignature:Ljava/lang/String; = "FillRect(...)"

.field public static final primTypeID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitive;->makePrimTypeID()I

    move-result v0

    sput v0, Lsun/java2d/loops/FillRect;->primTypeID:I

    new-instance v0, Lsun/java2d/loops/FillRect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lsun/java2d/loops/FillRect;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    invoke-static {v0}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->registerGeneral(Lsun/java2d/loops/GraphicsPrimitive;)V

    return-void
.end method

.method public constructor <init>(JLsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 8

    .line 2
    sget-object v3, Lsun/java2d/loops/FillRect;->methodSignature:Ljava/lang/String;

    sget v4, Lsun/java2d/loops/FillRect;->primTypeID:I

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
    sget-object v1, Lsun/java2d/loops/FillRect;->methodSignature:Ljava/lang/String;

    sget v2, Lsun/java2d/loops/FillRect;->primTypeID:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/GraphicsPrimitive;-><init>(Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method

.method public static locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/FillRect;
    .locals 1

    sget v0, Lsun/java2d/loops/FillRect;->primTypeID:I

    invoke-static {v0, p0, p1, p2}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locate(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object p0

    check-cast p0, Lsun/java2d/loops/FillRect;

    return-object p0
.end method


# virtual methods
.method public native FillRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V
.end method

.method public makePrimitive(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 0

    new-instance p0, Lsun/java2d/loops/FillRect$General;

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/loops/FillRect$General;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-object p0
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 1

    new-instance v0, Lsun/java2d/loops/FillRect$TraceFillRect;

    invoke-direct {v0, p0}, Lsun/java2d/loops/FillRect$TraceFillRect;-><init>(Lsun/java2d/loops/FillRect;)V

    return-object v0
.end method
