.class Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/event/IIOReadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/bmp/BMPImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmbeddedProgressAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;


# direct methods
.method private constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V

    return-void
.end method


# virtual methods
.method public imageComplete(Ljavax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public imageProgress(Ljavax/imageio/ImageReader;F)V
    .locals 0

    return-void
.end method

.method public imageStarted(Ljavax/imageio/ImageReader;I)V
    .locals 0

    return-void
.end method

.method public readAborted(Ljavax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public sequenceComplete(Ljavax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public sequenceStarted(Ljavax/imageio/ImageReader;I)V
    .locals 0

    return-void
.end method

.method public thumbnailComplete(Ljavax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public thumbnailProgress(Ljavax/imageio/ImageReader;F)V
    .locals 0

    return-void
.end method

.method public thumbnailStarted(Ljavax/imageio/ImageReader;II)V
    .locals 0

    return-void
.end method
