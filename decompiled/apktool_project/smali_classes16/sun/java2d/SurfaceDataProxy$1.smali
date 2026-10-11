.class final Lsun/java2d/SurfaceDataProxy$1;
.super Lsun/java2d/SurfaceDataProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/SurfaceDataProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/java2d/SurfaceDataProxy;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isAccelerated()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedOperation(Lsun/java2d/SurfaceData;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public replaceData(Lsun/java2d/SurfaceData;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;
    .locals 0

    return-object p1
.end method

.method public validateSurfaceData(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;II)Lsun/java2d/SurfaceData;
    .locals 0

    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "UNCACHED should never validate SDs"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
