.class public Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet$h1;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x10

    const/4 v1, 0x1

    const-string v2, "T6Options"

    const/16 v3, 0x125

    invoke-direct {p0, v2, v3, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    const/4 v0, 0x0

    const-string v1, "Default"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "Uncompressed"

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->addValueName(ILjava/lang/String;)V

    return-void
.end method
