.class public Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet$b;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x8825

    invoke-static {}, Ljavax/imageio/plugins/tiff/ExifGPSTagSet;->getInstance()Ljavax/imageio/plugins/tiff/ExifGPSTagSet;

    move-result-object v1

    const-string v2, "GPSInfoIFDPointer"

    invoke-direct {p0, v2, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;ILjavax/imageio/plugins/tiff/TIFFTagSet;)V

    return-void
.end method
