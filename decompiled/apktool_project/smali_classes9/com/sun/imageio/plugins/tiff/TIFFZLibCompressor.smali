.class public Lcom/sun/imageio/plugins/tiff/TIFFZLibCompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFDeflater;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/imageio/ImageWriteParam;I)V
    .locals 2

    const-string v0, "ZLib"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFDeflater;-><init>(Ljava/lang/String;ILjavax/imageio/ImageWriteParam;I)V

    return-void
.end method
