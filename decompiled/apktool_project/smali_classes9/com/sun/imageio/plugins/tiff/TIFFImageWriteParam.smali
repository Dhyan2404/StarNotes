.class public Lcom/sun/imageio/plugins/tiff/TIFFImageWriteParam;
.super Ljavax/imageio/ImageWriteParam;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriteParam;-><init>(Ljava/util/Locale;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljavax/imageio/ImageWriteParam;->canWriteCompressed:Z

    iput-boolean p1, p0, Ljavax/imageio/ImageWriteParam;->canWriteTiles:Z

    sget-object p1, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->TIFFCompressionTypes:[Ljava/lang/String;

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    return-void
.end method
