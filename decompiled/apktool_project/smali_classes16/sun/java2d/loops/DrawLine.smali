.class public Lsun/java2d/loops/DrawLine;
.super Lsun/java2d/loops/GraphicsPrimitive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/DrawLine$TraceDrawLine;
    }
.end annotation


# static fields
.field public static final methodSignature:Ljava/lang/String; = "DrawLine(...)"

.field public static final primTypeID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/java2d/loops/GraphicsPrimitive;->makePrimTypeID()I

    move-result v0

    sput v0, Lsun/java2d/loops/DrawLine;->primTypeID:I

    return-void
.end method

.method public constructor <init>(JLsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 8

    .line 2
    sget-object v3, Lsun/java2d/loops/DrawLine;->methodSignature:Ljava/lang/String;

    sget v4, Lsun/java2d/loops/DrawLine;->primTypeID:I

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
    sget-object v1, Lsun/java2d/loops/DrawLine;->methodSignature:Ljava/lang/String;

    sget v2, Lsun/java2d/loops/DrawLine;->primTypeID:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/GraphicsPrimitive;-><init>(Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method

.method public static locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawLine;
    .locals 1

    sget v0, Lsun/java2d/loops/DrawLine;->primTypeID:I

    invoke-static {v0, p0, p1, p2}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->locate(ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;

    move-result-object p0

    check-cast p0, Lsun/java2d/loops/DrawLine;

    return-object p0
.end method


# virtual methods
.method public native DrawLine(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V
.end method

.method public makePrimitive(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/GraphicsPrimitive;
    .locals 1

    new-instance p0, Ljava/lang/InternalError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DrawLine not implemented for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public traceWrap()Lsun/java2d/loops/GraphicsPrimitive;
    .locals 1

    new-instance v0, Lsun/java2d/loops/DrawLine$TraceDrawLine;

    invoke-direct {v0, p0}, Lsun/java2d/loops/DrawLine$TraceDrawLine;-><init>(Lsun/java2d/loops/DrawLine;)V

    return-object v0
.end method
