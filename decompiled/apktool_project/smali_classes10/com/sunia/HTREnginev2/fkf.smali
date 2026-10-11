.class public final Lcom/sunia/HTREnginev2/fkf;
.super Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;
.source "SourceFile"


# instance fields
.field public final c:S


# direct methods
.method public constructor <init>(ILjava/lang/Object;S)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-lt p3, p1, :cond_0

    sget-object p1, Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;->TYPE_NAMES:[Ljava/lang/String;

    array-length p1, p1

    if-ge p3, p1, :cond_0

    iput-short p3, p0, Lcom/sunia/HTREnginev2/fkf;->c:S

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Illegal TIFF type: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public d()S
    .locals 0

    iget-short p0, p0, Lcom/sunia/HTREnginev2/fkf;->c:S

    return p0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;->getIdentifier()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    const-string p0, "ImageUniqueID"

    return-object p0

    :sswitch_1
    const-string p0, "Sharpness"

    return-object p0

    :sswitch_2
    const-string p0, "Saturation"

    return-object p0

    :sswitch_3
    const-string p0, "Contrast"

    return-object p0

    :sswitch_4
    const-string p0, "GainControl"

    return-object p0

    :sswitch_5
    const-string p0, "SceneCaptureType"

    return-object p0

    :sswitch_6
    const-string p0, "FocalLengthIn35mmFilm"

    return-object p0

    :sswitch_7
    const-string p0, "DigitalZoomRatio"

    return-object p0

    :sswitch_8
    const-string p0, "WhiteBalance"

    return-object p0

    :sswitch_9
    const-string p0, "ExposureMode"

    return-object p0

    :sswitch_a
    const-string p0, "CustomRendered"

    return-object p0

    :sswitch_b
    const-string p0, "CFAPattern"

    return-object p0

    :sswitch_c
    const-string p0, "SceneType"

    return-object p0

    :sswitch_d
    const-string p0, "FileSource"

    return-object p0

    :sswitch_e
    const-string p0, "SensingMethod"

    return-object p0

    :sswitch_f
    const-string p0, "Interoperability"

    return-object p0

    :sswitch_10
    const-string p0, "PixelYDimension"

    return-object p0

    :sswitch_11
    const-string p0, "PixelXDimension"

    return-object p0

    :sswitch_12
    const-string p0, "ColorSpace"

    return-object p0

    :sswitch_13
    const-string p0, "FlashpixVersion"

    return-object p0

    :sswitch_14
    const-string p0, "ImageSourceData"

    return-object p0

    :sswitch_15
    const-string p0, "UserComment"

    return-object p0

    :sswitch_16
    const-string p0, "MakerNote"

    return-object p0

    :sswitch_17
    const-string p0, "ImageNumber"

    return-object p0

    :sswitch_18
    const-string p0, "FocalLength"

    return-object p0

    :sswitch_19
    const-string p0, "Flash"

    return-object p0

    :sswitch_1a
    const-string p0, "LightSource"

    return-object p0

    :sswitch_1b
    const-string p0, "MeteringMode"

    return-object p0

    :sswitch_1c
    const-string p0, "SubjectDistance"

    return-object p0

    :sswitch_1d
    const-string p0, "MaxApertureValue"

    return-object p0

    :sswitch_1e
    const-string p0, "ExposureBiasValue"

    return-object p0

    :sswitch_1f
    const-string p0, "BrightnessValue"

    return-object p0

    :sswitch_20
    const-string p0, "ApertureValue"

    return-object p0

    :sswitch_21
    const-string p0, "ShutterSpeedValue"

    return-object p0

    :sswitch_22
    const-string p0, "CompressedBitsPerPixel"

    return-object p0

    :sswitch_23
    const-string p0, "ComponentsConfiguration"

    return-object p0

    :sswitch_24
    const-string p0, "DateTimeDigitized"

    return-object p0

    :sswitch_25
    const-string p0, "DateTimeOriginal"

    return-object p0

    :sswitch_26
    const-string p0, "ExifVersion"

    return-object p0

    :sswitch_27
    const-string p0, "ISOSpeedRatings"

    return-object p0

    :sswitch_28
    const-string p0, "GPS"

    return-object p0

    :sswitch_29
    const-string p0, "ExposureProgram"

    return-object p0

    :sswitch_2a
    const-string p0, "ICCProfile"

    return-object p0

    :sswitch_2b
    const-string p0, "EXIF"

    return-object p0

    :sswitch_2c
    const-string p0, "Adobe"

    return-object p0

    :sswitch_2d
    const-string p0, "IPTC"

    return-object p0

    :sswitch_2e
    const-string p0, "FNUmber"

    return-object p0

    :sswitch_2f
    const-string p0, "ExposureTime"

    return-object p0

    :sswitch_30
    const-string p0, "Copyright"

    return-object p0

    :sswitch_31
    const-string p0, "XMP"

    return-object p0

    :sswitch_32
    const-string p0, "YCbCrPositioning"

    return-object p0

    :sswitch_33
    const-string p0, "YCbCrSubSampling"

    return-object p0

    :sswitch_34
    const-string p0, "JPEGInterchangeFormatLength"

    return-object p0

    :sswitch_35
    const-string p0, "JPEGInterchangeFormat"

    return-object p0

    :sswitch_36
    const-string p0, "JPEGTables"

    return-object p0

    :sswitch_37
    const-string p0, "SampleFormat"

    return-object p0

    :sswitch_38
    const-string p0, "ExtraSamples"

    return-object p0

    :sswitch_39
    const-string p0, "InkNames"

    return-object p0

    :sswitch_3a
    const-string p0, "InkSet"

    return-object p0

    :sswitch_3b
    const-string p0, "SubIFD"

    return-object p0

    :sswitch_3c
    const-string p0, "TileByteCounts"

    return-object p0

    :sswitch_3d
    const-string p0, "TileOffsets"

    return-object p0

    :sswitch_3e
    const-string p0, "TileHeight"

    return-object p0

    :sswitch_3f
    const-string p0, "TileWidth"

    return-object p0

    :sswitch_40
    const-string p0, "ColorMap"

    return-object p0

    :sswitch_41
    const-string p0, "Predictor"

    return-object p0

    :sswitch_42
    const-string p0, "HostComputer"

    return-object p0

    :sswitch_43
    const-string p0, "Artist"

    return-object p0

    :sswitch_44
    const-string p0, "DateTime"

    return-object p0

    :sswitch_45
    const-string p0, "Software"

    return-object p0

    :sswitch_46
    const-string p0, "PageNumber"

    return-object p0

    :sswitch_47
    const-string p0, "ResolutionUnit"

    return-object p0

    :sswitch_48
    const-string p0, "PageName"

    return-object p0

    :sswitch_49
    const-string p0, "PlanarConfiguration"

    return-object p0

    :sswitch_4a
    const-string p0, "YResolution"

    return-object p0

    :sswitch_4b
    const-string p0, "XResolution"

    return-object p0

    :sswitch_4c
    const-string p0, "StripByteCounts"

    return-object p0

    :sswitch_4d
    const-string p0, "RowsPerStrip"

    return-object p0

    :sswitch_4e
    const-string p0, "SamplesPerPixel"

    return-object p0

    :sswitch_4f
    const-string p0, "Orientation"

    return-object p0

    :sswitch_50
    const-string p0, "StripOffsets"

    return-object p0

    :sswitch_51
    const-string p0, "Model"

    return-object p0

    :sswitch_52
    const-string p0, "Make"

    return-object p0

    :sswitch_53
    const-string p0, "ImageDescription"

    return-object p0

    :sswitch_54
    const-string p0, "DocumentName"

    return-object p0

    :sswitch_55
    const-string p0, "FillOrder"

    return-object p0

    :sswitch_56
    const-string p0, "PhotometricInterpretation"

    return-object p0

    :sswitch_57
    const-string p0, "Compression"

    return-object p0

    :sswitch_58
    const-string p0, "BitsPerSample"

    return-object p0

    :sswitch_59
    const-string p0, "ImageHeight"

    return-object p0

    :sswitch_5a
    const-string p0, "ImageWidth"

    return-object p0

    :sswitch_5b
    const-string p0, "SubfileType"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfe -> :sswitch_5b
        0x100 -> :sswitch_5a
        0x101 -> :sswitch_59
        0x102 -> :sswitch_58
        0x103 -> :sswitch_57
        0x106 -> :sswitch_56
        0x10a -> :sswitch_55
        0x10d -> :sswitch_54
        0x10e -> :sswitch_53
        0x10f -> :sswitch_52
        0x110 -> :sswitch_51
        0x111 -> :sswitch_50
        0x112 -> :sswitch_4f
        0x115 -> :sswitch_4e
        0x116 -> :sswitch_4d
        0x117 -> :sswitch_4c
        0x11a -> :sswitch_4b
        0x11b -> :sswitch_4a
        0x11c -> :sswitch_49
        0x11d -> :sswitch_48
        0x128 -> :sswitch_47
        0x129 -> :sswitch_46
        0x131 -> :sswitch_45
        0x132 -> :sswitch_44
        0x13b -> :sswitch_43
        0x13c -> :sswitch_42
        0x13d -> :sswitch_41
        0x140 -> :sswitch_40
        0x142 -> :sswitch_3f
        0x143 -> :sswitch_3e
        0x144 -> :sswitch_3d
        0x145 -> :sswitch_3c
        0x14a -> :sswitch_3b
        0x14c -> :sswitch_3a
        0x14d -> :sswitch_39
        0x152 -> :sswitch_38
        0x153 -> :sswitch_37
        0x15b -> :sswitch_36
        0x201 -> :sswitch_35
        0x202 -> :sswitch_34
        0x212 -> :sswitch_33
        0x213 -> :sswitch_32
        0x2bc -> :sswitch_31
        0x8298 -> :sswitch_30
        0x829a -> :sswitch_2f
        0x829d -> :sswitch_2e
        0x83bb -> :sswitch_2d
        0x8649 -> :sswitch_2c
        0x8769 -> :sswitch_2b
        0x8773 -> :sswitch_2a
        0x8822 -> :sswitch_29
        0x8825 -> :sswitch_28
        0x8827 -> :sswitch_27
        0x9000 -> :sswitch_26
        0x9003 -> :sswitch_25
        0x9004 -> :sswitch_24
        0x9101 -> :sswitch_23
        0x9102 -> :sswitch_22
        0x9201 -> :sswitch_21
        0x9202 -> :sswitch_20
        0x9203 -> :sswitch_1f
        0x9204 -> :sswitch_1e
        0x9205 -> :sswitch_1d
        0x9206 -> :sswitch_1c
        0x9207 -> :sswitch_1b
        0x9208 -> :sswitch_1a
        0x9209 -> :sswitch_19
        0x920a -> :sswitch_18
        0x9211 -> :sswitch_17
        0x927c -> :sswitch_16
        0x9286 -> :sswitch_15
        0x935c -> :sswitch_14
        0xa000 -> :sswitch_13
        0xa001 -> :sswitch_12
        0xa002 -> :sswitch_11
        0xa003 -> :sswitch_10
        0xa005 -> :sswitch_f
        0xa217 -> :sswitch_e
        0xa300 -> :sswitch_d
        0xa301 -> :sswitch_c
        0xa302 -> :sswitch_b
        0xa401 -> :sswitch_a
        0xa402 -> :sswitch_9
        0xa403 -> :sswitch_8
        0xa404 -> :sswitch_7
        0xa405 -> :sswitch_6
        0xa406 -> :sswitch_5
        0xa407 -> :sswitch_4
        0xa408 -> :sswitch_3
        0xa409 -> :sswitch_2
        0xa40a -> :sswitch_1
        0xa420 -> :sswitch_0
    .end sparse-switch
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;->TYPE_NAMES:[Ljava/lang/String;

    iget-short p0, p0, Lcom/sunia/HTREnginev2/fkf;->c:S

    aget-object p0, v0, p0

    return-object p0
.end method
