.class public Ljavax/imageio/plugins/tiff/ExifTIFFTagSet$u0;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/ExifTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0xa20c

    const/16 v1, 0x80

    const-string v2, "SpatialFrequencyResponse"

    invoke-direct {p0, v2, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;II)V

    return-void
.end method
