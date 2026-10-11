.class Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/event/IIOReadUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readEmbedded(ILjava/awt/image/BufferedImage;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageUpdate(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->access$200(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V

    return-void
.end method

.method public passComplete(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    invoke-static {p0, p2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->access$300(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public passStarted(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-static/range {v0 .. v9}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->access$400(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V

    return-void
.end method

.method public thumbnailPassComplete(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;)V
    .locals 0

    return-void
.end method

.method public thumbnailPassStarted(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V
    .locals 0

    return-void
.end method

.method public thumbnailUpdate(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V
    .locals 0

    return-void
.end method
