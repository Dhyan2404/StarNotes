.class public Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet$f1;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "SubfileType"

    const/16 v1, 0xff

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    const-string v0, "FullResolution"

    invoke-virtual {p0, v3, v0}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "ReducedResolution"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "SinglePage"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    return-void
.end method
