.class public Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet$p1;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x6

    const-string v2, "TransferRange"

    const/16 v3, 0x156

    invoke-direct {p0, v2, v3, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    return-void
.end method
