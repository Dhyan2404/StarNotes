.class public Lorg/beyka/tiffbitmapfactory/TiffConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "tiff"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "tiffconverter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convertJpgTiff(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
.end method

.method public static native convertPngTiff(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
.end method

.method public static native convertTiffJpg(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
.end method

.method public static native convertTiffPng(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
.end method

.method public static native getImageType(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/ImageFormat;
.end method
