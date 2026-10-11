.class abstract Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "JFIFThumb"
.end annotation


# instance fields
.field streamPos:J

.field final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    .line 5
    invoke-virtual {p2}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->getStreamPosition()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLength()I
.end method

.method public abstract getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;
.end method

.method public abstract getThumbnail(Ljavax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getWidth()I
.end method

.method public abstract print()V
.end method

.method public abstract write(Ljavax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
