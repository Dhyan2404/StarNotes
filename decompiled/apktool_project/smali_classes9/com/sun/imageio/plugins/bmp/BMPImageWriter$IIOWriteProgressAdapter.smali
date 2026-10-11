.class Lcom/sun/imageio/plugins/bmp/BMPImageWriter$IIOWriteProgressAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/event/IIOWriteProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/bmp/BMPImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IIOWriteProgressAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/imageio/plugins/bmp/BMPImageWriter;


# direct methods
.method private constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$IIOWriteProgressAdapter;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;Lcom/sun/imageio/plugins/bmp/BMPImageWriter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$IIOWriteProgressAdapter;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;)V

    return-void
.end method


# virtual methods
.method public imageComplete(Ljavax/imageio/ImageWriter;)V
    .locals 0

    return-void
.end method

.method public imageProgress(Ljavax/imageio/ImageWriter;F)V
    .locals 0

    return-void
.end method

.method public imageStarted(Ljavax/imageio/ImageWriter;I)V
    .locals 0

    return-void
.end method

.method public thumbnailComplete(Ljavax/imageio/ImageWriter;)V
    .locals 0

    return-void
.end method

.method public thumbnailProgress(Ljavax/imageio/ImageWriter;F)V
    .locals 0

    return-void
.end method

.method public thumbnailStarted(Ljavax/imageio/ImageWriter;II)V
    .locals 0

    return-void
.end method

.method public writeAborted(Ljavax/imageio/ImageWriter;)V
    .locals 0

    return-void
.end method
