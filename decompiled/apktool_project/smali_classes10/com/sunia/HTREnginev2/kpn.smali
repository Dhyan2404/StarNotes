.class public final Lcom/sunia/HTREnginev2/kpn;
.super Ljavax/imageio/ImageTypeSpecifier;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/awt/color/ColorSpace;[IZZ)V
    .locals 8

    new-instance v0, Lcom/twelvemonkeys/imageio/color/UInt32ColorModel;

    invoke-direct {v0, p1, p3, p4}, Lcom/twelvemonkeys/imageio/color/UInt32ColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZ)V

    new-instance p4, Ljava/awt/image/PixelInterleavedSampleModel;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v1

    add-int v5, v1, p3

    invoke-virtual {p1}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result p1

    add-int v6, p1, p3

    move-object v1, p4

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    invoke-direct {p0, v0, p4}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    return-void
.end method
