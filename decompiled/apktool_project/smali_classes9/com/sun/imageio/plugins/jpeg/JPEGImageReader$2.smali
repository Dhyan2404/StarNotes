.class Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$2;
.super Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageTypesOnThread(I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$2;->this$0:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce()Ljavax/imageio/ImageTypeSpecifier;
    .locals 2

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$2;->this$0:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->access$200(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Ljava/awt/color/ColorSpace;

    move-result-object p0

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG;->bOffsRGB:[I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method
