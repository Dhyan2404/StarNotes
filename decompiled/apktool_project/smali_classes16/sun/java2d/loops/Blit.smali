.class public Lsun/java2d/loops/Blit;
.super Lsun/java2d/loops/GraphicsPrimitive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/Blit$TraceBlit;,
        Lsun/java2d/loops/Blit$GeneralXorBlit;,
        Lsun/java2d/loops/Blit$GeneralMaskBlit;,
        Lsun/java2d/loops/Blit$AnyBlit;
    }
.end annotation


# static fields
.field private static blitcache:Lsun/java2d/loops/RenderCache; = null

.field public static final methodSignature:Ljava/lang/String; = "Blit(...)"

.field public static final primTypeID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitive;->makePrimTypeID()I

    move-result v0

    sput v0, Lsun/java2d/loops/Blit;->primTypeID:I

    new-instance v0, Lsun/java2d/loops/RenderCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lsun/java2d/loops/RenderCache;-><init>(I)V

    sput-object v0, Lsun/java2d/loops/Blit;->blitcache:Lsun/java2d/loops/RenderCache;

    new-instance v0, Lsun/java2d/loops/Blit;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lsun/java2d/loops/Blit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    invoke-static {v0}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->registerGeneral(Lsun/java2d/loops/GraphicsPrimitive;)V

    return-void
.end method

.method public constructor <init>(JLsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 8

    .line 2
    sget-object v3, Lsun/java2d/loops/Blit;->methodSignature:Ljava/lang/String;

    sget v4, Lsun/java2d/loops/Blit;->primTypeID:I

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
    sget-object v1, Lsun/java2d/loops/Blit;->methodSignature:Ljava/lang/String;

    sget v2, Lsun/java2d/loops/Blit;->primTypeID:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/GraphicsPrimitive;-><init>(Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method

.method public static getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;
    .locals 4

    sget-object v0, Lsun/java2d/loops/Blit;->blitcache:Lsun/java2d/loops/RenderCache;

    invoke-virtual {v0, p0, p1, p2}, Lsun/java2d/loops/RenderCache;->get(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lsun/java2d/loops/Blit;

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lsun/java2d/loops/Blit;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "blit loop not found for:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dst:  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lsun/java2d/loops/Blit;->blitcache:Lsun/java2d/loops/RenderCache;

    invoke-virtual {v1, p0, p1, p2, v0}, Lsun/java2d/loops/RenderCache;->put(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;
    .locals 1

    sget v0, Lsun/java2d/loops/Blit;->primTypeID:I

    invoke-static {v0, p0, p1, p2}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locate(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object p0

    check-cast p0, Lsun/java2d/loops/Blit;

    return-object p0
.end method


# virtual methods
.method public native Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V
.end method

.method public makePrimitive(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 1

    sget-object v0, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    invoke-virtual {p2, v0}, Lsun/java2d/loops/CompositeType;->isDerivedFrom(Lsun/java2d/loops/CompositeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsun/java2d/loops/Blit$GeneralXorBlit;

    invoke-direct {v0, p1, p2, p3}, Lsun/java2d/loops/Blit$GeneralXorBlit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    invoke-virtual {p0, v0}, Lsun/java2d/loops/GraphicsPrimitive;->setupGeneralBinaryOp(Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;)V

    return-object v0

    :cond_0
    sget-object p0, Lsun/java2d/loops/CompositeType;->AnyAlpha:Lsun/java2d/loops/CompositeType;

    invoke-virtual {p2, p0}, Lsun/java2d/loops/CompositeType;->isDerivedFrom(Lsun/java2d/loops/CompositeType;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lsun/java2d/loops/Blit$GeneralMaskBlit;

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/loops/Blit$GeneralMaskBlit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-object p0

    :cond_1
    sget-object p0, Lsun/java2d/loops/Blit$AnyBlit;->instance:Lsun/java2d/loops/Blit$AnyBlit;

    return-object p0
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 1

    new-instance v0, Lsun/java2d/loops/Blit$TraceBlit;

    invoke-direct {v0, p0}, Lsun/java2d/loops/Blit$TraceBlit;-><init>(Lsun/java2d/loops/Blit;)V

    return-object v0
.end method
