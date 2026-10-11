.class final Ljava/awt/Image$1;
.super Lsun/awt/image/SurfaceManager$ImageAccessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/awt/image/SurfaceManager$ImageAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getSurfaceManager(Ljava/awt/Image;)Lsun/awt/image/SurfaceManager;
    .locals 0

    iget-object p0, p1, Ljava/awt/Image;->surfaceManager:Lsun/awt/image/SurfaceManager;

    return-object p0
.end method

.method public setSurfaceManager(Ljava/awt/Image;Lsun/awt/image/SurfaceManager;)V
    .locals 0

    iput-object p2, p1, Ljava/awt/Image;->surfaceManager:Lsun/awt/image/SurfaceManager;

    return-void
.end method
