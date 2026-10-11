.class public Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet$z0;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "z0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x154

    const/16 v1, 0x1f7a

    const-string v2, "SMinSampleValue"

    invoke-direct {p0, v2, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;II)V

    return-void
.end method
