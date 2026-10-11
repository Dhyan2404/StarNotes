.class public Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$a;
.super Ljavax/imageio/plugins/tiff/TIFFTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x18

    const/4 v1, 0x1

    const-string v2, "BadFaxLines"

    const/16 v3, 0x146

    invoke-direct {p0, v2, v3, v0, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    return-void
.end method
