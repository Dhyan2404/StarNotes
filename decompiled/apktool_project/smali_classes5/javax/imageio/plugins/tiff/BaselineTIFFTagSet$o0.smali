.class public Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet$o0;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "Orientation"

    const/16 v1, 0x112

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    const-string v0, "Row 0=Top, Column 0=Left"

    invoke-virtual {p0, v3, v0}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "Row 0=Top, Column 0=Right"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "Row 0=Bottom, Column 0=Right"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "Row 0=Bottom, Column 0=Left"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x5

    const-string v1, "Row 0=Left, Column 0=Top"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x6

    const-string v1, "Row 0=Right, Column 0=Top"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x7

    const-string v1, "Row 0=Right, Column 0=Bottom"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    return-void
.end method
