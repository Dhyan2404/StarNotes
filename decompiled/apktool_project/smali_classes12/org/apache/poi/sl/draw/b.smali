.class public final synthetic Lorg/apache/poi/sl/draw/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/BitmapImageRenderer$ImageLoader;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->a(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method
