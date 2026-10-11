.class public Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet$r0;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "PhotometricInterpretation"

    const/16 v1, 0x106

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    const/4 v0, 0x0

    const-string v1, "WhiteIsZero"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const-string v0, "BlackIsZero"

    invoke-virtual {p0, v3, v0}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "RGB"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "Palette Color"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "Transparency Mask"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x5

    const-string v1, "CMYK"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x6

    const-string v1, "YCbCr"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const-string v0, "CIELAB"

    invoke-virtual {p0, v2, v0}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/16 v0, 0x9

    const-string v1, "ICCLAB"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    return-void
.end method
