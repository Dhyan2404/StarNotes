.class Lsun/awt/image/SurfaceManager$ImageCapabilitiesGc;
.super Ljava/awt/ImageCapabilities;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/SurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageCapabilitiesGc"
.end annotation


# instance fields
.field gc:Ljava/awt/GraphicsConfiguration;

.field final synthetic this$0:Lsun/awt/image/SurfaceManager;


# direct methods
.method public constructor <init>(Lsun/awt/image/SurfaceManager;Ljava/awt/GraphicsConfiguration;)V
    .locals 0

    iput-object p1, p0, Lsun/awt/image/SurfaceManager$ImageCapabilitiesGc;->this$0:Lsun/awt/image/SurfaceManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/awt/ImageCapabilities;-><init>(Z)V

    iput-object p2, p0, Lsun/awt/image/SurfaceManager$ImageCapabilitiesGc;->gc:Ljava/awt/GraphicsConfiguration;

    return-void
.end method


# virtual methods
.method public isAccelerated()Z
    .locals 3

    iget-object v0, p0, Lsun/awt/image/SurfaceManager$ImageCapabilitiesGc;->gc:Ljava/awt/GraphicsConfiguration;

    instance-of v1, v0, Lsun/awt/image/SurfaceManager$ProxiedGraphicsConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lsun/awt/image/SurfaceManager$ProxiedGraphicsConfig;

    invoke-interface {v0}, Lsun/awt/image/SurfaceManager$ProxiedGraphicsConfig;->getProxyKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lsun/awt/image/SurfaceManager$ImageCapabilitiesGc;->this$0:Lsun/awt/image/SurfaceManager;

    invoke-virtual {p0, v0}, Lsun/awt/image/SurfaceManager;->getCacheData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/java2d/SurfaceDataProxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsun/java2d/SurfaceDataProxy;->isAccelerated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
