.class public Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet$z;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "z"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x208

    const/16 v1, 0x10

    const-string v2, "JPEGDCTables"

    invoke-direct {p0, v2, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;II)V

    return-void
.end method
