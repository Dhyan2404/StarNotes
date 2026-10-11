.class Ljava/awt/GraphicsConfiguration$DefaultBufferCapabilities;
.super Ljava/awt/BufferCapabilities;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/GraphicsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultBufferCapabilities"
.end annotation


# direct methods
.method public constructor <init>(Ljava/awt/ImageCapabilities;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Ljava/awt/BufferCapabilities;-><init>(Ljava/awt/ImageCapabilities;Ljava/awt/ImageCapabilities;Ljava/awt/BufferCapabilities$FlipContents;)V

    return-void
.end method
