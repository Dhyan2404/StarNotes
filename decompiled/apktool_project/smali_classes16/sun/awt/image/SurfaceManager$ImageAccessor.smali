.class public abstract Lsun/awt/image/SurfaceManager$ImageAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/SurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImageAccessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSurfaceManager(Ljava/awt/Image;)Lsun/awt/image/SurfaceManager;
.end method

.method public abstract setSurfaceManager(Ljava/awt/Image;Lsun/awt/image/SurfaceManager;)V
.end method
