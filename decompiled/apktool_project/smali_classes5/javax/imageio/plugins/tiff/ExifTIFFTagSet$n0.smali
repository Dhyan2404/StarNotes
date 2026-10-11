.class public Ljavax/imageio/plugins/tiff/ExifTIFFTagSet$n0;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/ExifTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x4

    const/16 v1, 0xd

    const-string v2, "RelatedSoundFile"

    const v3, 0xa004

    invoke-direct {p0, v2, v3, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    return-void
.end method
