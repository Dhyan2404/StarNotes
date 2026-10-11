.class public final Lsun/java2d/loops/CustomComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegionOfInterest(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Lsun/java2d/pipe/Region;IIIIII)Lsun/java2d/pipe/Region;
    .locals 0

    invoke-static {p5, p6, p7, p8}, Lsun/java2d/pipe/Region;->getInstanceXYWH(IIII)Lsun/java2d/pipe/Region;

    move-result-object p7

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getBounds()Ljava/awt/Rectangle;

    move-result-object p1

    invoke-virtual {p7, p1}, Lsun/java2d/pipe/Region;->getIntersection(Ljava/awt/Rectangle;)Lsun/java2d/pipe/Region;

    move-result-object p1

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    sub-int/2addr p5, p3

    sub-int/2addr p6, p4

    invoke-virtual {p0, p5, p6}, Ljava/awt/Rectangle;->translate(II)V

    invoke-virtual {p1, p0}, Lsun/java2d/pipe/Region;->getIntersection(Ljava/awt/Rectangle;)Lsun/java2d/pipe/Region;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lsun/java2d/pipe/Region;->getIntersection(Lsun/java2d/pipe/Region;)Lsun/java2d/pipe/Region;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static register()V
    .locals 16

    const-class v8, Lsun/java2d/loops/CustomComponent;

    const/4 v0, 0x3

    new-array v9, v0, [Lsun/java2d/loops/GraphicsPrimitive;

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "OpaqueCopyAnyToArgb"

    sget-object v11, Lsun/java2d/loops/Blit;->methodSignature:Ljava/lang/String;

    sget v12, Lsun/java2d/loops/Blit;->primTypeID:I

    sget-object v13, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    sget-object v14, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    sget-object v15, Lsun/java2d/loops/SurfaceType;->IntArgb:Lsun/java2d/loops/SurfaceType;

    move-object v0, v10

    move-object v1, v8

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x0

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "OpaqueCopyArgbToAny"

    move-object v0, v10

    move-object v5, v15

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x1

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorCopyArgbToAny"

    sget-object v6, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x2

    aput-object v10, v9, v0

    invoke-static {v9}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->register([Lsun/java2d/loops/GraphicsPrimitive;)V

    return-void
.end method
