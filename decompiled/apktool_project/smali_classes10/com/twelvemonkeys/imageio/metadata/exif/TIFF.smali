.class public interface abstract Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BYTE_ORDER_MARK_BIG_ENDIAN:S = 0x4d4ds

.field public static final BYTE_ORDER_MARK_LITTLE_ENDIAN:S = 0x4949s

.field public static final TAG_ARTIST:I = 0x13b

.field public static final TAG_BITS_PER_SAMPLE:I = 0x102

.field public static final TAG_COLOR_MAP:I = 0x140

.field public static final TAG_COMPRESSION:I = 0x103

.field public static final TAG_COPYRIGHT:I = 0x8298

.field public static final TAG_DATE_TIME:I = 0x132

.field public static final TAG_DOCUMENT_NAME:I = 0x10d

.field public static final TAG_EXIF_IFD:I = 0x8769

.field public static final TAG_EXTRA_SAMPLES:I = 0x152

.field public static final TAG_FILL_ORDER:I = 0x10a

.field public static final TAG_FREE_OFFSETS:I = 0x120

.field public static final TAG_GPS_IFD:I = 0x8825

.field public static final TAG_GROUP3OPTIONS:I = 0x124

.field public static final TAG_GROUP4OPTIONS:I = 0x125

.field public static final TAG_HOST_COMPUTER:I = 0x13c

.field public static final TAG_ICC_PROFILE:I = 0x8773

.field public static final TAG_IMAGE_DESCRIPTION:I = 0x10e

.field public static final TAG_IMAGE_HEIGHT:I = 0x101

.field public static final TAG_IMAGE_WIDTH:I = 0x100

.field public static final TAG_INK_NAMES:I = 0x14d

.field public static final TAG_INK_SET:I = 0x14c

.field public static final TAG_INTEROP_IFD:I = 0xa005

.field public static final TAG_IPTC:I = 0x83bb

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I = 0x201

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I = 0x202

.field public static final TAG_JPEG_TABLES:I = 0x15b

.field public static final TAG_MAKE:I = 0x10f

.field public static final TAG_MODEL:I = 0x110

.field public static final TAG_MODI_BLC:I = 0x879e

.field public static final TAG_MODI_OLE_PROPERTY_SET:I = 0x9330

.field public static final TAG_MODI_PLAIN_TEXT:I = 0x932f

.field public static final TAG_MODI_PTC:I = 0x87a0

.field public static final TAG_MODI_TEXT_POS_INFO:I = 0x9331

.field public static final TAG_MODI_VECTOR:I = 0x879f

.field public static final TAG_NUMBER_OF_INKS:I = 0x14e

.field public static final TAG_OLD_JPEG_AC_TABLES:I = 0x209

.field public static final TAG_OLD_JPEG_DC_TABLES:I = 0x208

.field public static final TAG_OLD_JPEG_PROC:I = 0x200

.field public static final TAG_OLD_JPEG_Q_TABLES:I = 0x207

.field public static final TAG_OLD_SUBFILE_TYPE:I = 0xff

.field public static final TAG_ORIENTATION:I = 0x112

.field public static final TAG_PAGE_NAME:I = 0x11d

.field public static final TAG_PAGE_NUMBER:I = 0x129

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I = 0x106

.field public static final TAG_PHOTOSHOP:I = 0x8649

.field public static final TAG_PHOTOSHOP_ANNOTATIONS:I = 0xc44f

.field public static final TAG_PHOTOSHOP_IMAGE_SOURCE_DATA:I = 0x935c

.field public static final TAG_PLANAR_CONFIGURATION:I = 0x11c

.field public static final TAG_PREDICTOR:I = 0x13d

.field public static final TAG_PRIMARY_CHROMATICITIES:I = 0x13f

.field public static final TAG_REFERENCE_BLACK_WHITE:I = 0x214

.field public static final TAG_RESOLUTION_UNIT:I = 0x128

.field public static final TAG_ROWS_PER_STRIP:I = 0x116

.field public static final TAG_SAMPLES_PER_PIXEL:I = 0x115

.field public static final TAG_SAMPLE_FORMAT:I = 0x153

.field public static final TAG_SOFTWARE:I = 0x131

.field public static final TAG_STRIP_BYTE_COUNTS:I = 0x117

.field public static final TAG_STRIP_OFFSETS:I = 0x111

.field public static final TAG_SUBFILE_TYPE:I = 0xfe

.field public static final TAG_SUB_IFD:I = 0x14a

.field public static final TAG_TILE_BYTE_COUNTS:I = 0x145

.field public static final TAG_TILE_HEIGTH:I = 0x143

.field public static final TAG_TILE_OFFSETS:I = 0x144

.field public static final TAG_TILE_WIDTH:I = 0x142

.field public static final TAG_TRANSFER_FUNCTION:I = 0x12d

.field public static final TAG_TRANSFER_RANGE:I = 0x156

.field public static final TAG_WHITE_POINT:I = 0x13e

.field public static final TAG_XMP:I = 0x2bc

.field public static final TAG_X_POSITION:I = 0x11e

.field public static final TAG_X_RESOLUTION:I = 0x11a

.field public static final TAG_YCBCR_COEFFICIENTS:I = 0x211

.field public static final TAG_YCBCR_POSITIONING:I = 0x213

.field public static final TAG_YCBCR_SUB_SAMPLING:I = 0x212

.field public static final TAG_Y_POSITION:I = 0x11f

.field public static final TAG_Y_RESOLUTION:I = 0x11b

.field public static final TIFF_MAGIC:I = 0x2a

.field public static final TYPE_ASCII:S = 0x2s

.field public static final TYPE_BYTE:S = 0x1s

.field public static final TYPE_DOUBLE:S = 0xcs

.field public static final TYPE_FLOAT:S = 0xbs

.field public static final TYPE_IFD:S = 0xds

.field public static final TYPE_LENGTHS:[I

.field public static final TYPE_LONG:S = 0x4s

.field public static final TYPE_NAMES:[Ljava/lang/String;

.field public static final TYPE_RATIONAL:S = 0x5s

.field public static final TYPE_SBYTE:S = 0x6s

.field public static final TYPE_SHORT:S = 0x3s

.field public static final TYPE_SLONG:S = 0x9s

.field public static final TYPE_SRATIONAL:S = 0xas

.field public static final TYPE_SSHORT:S = 0x8s

.field public static final TYPE_UNDEFINED:S = 0x7s


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const/4 v0, 0x0

    const-string v1, "BYTE"

    const-string v2, "ASCII"

    const-string v3, "SHORT"

    const-string v4, "LONG"

    const-string v5, "RATIONAL"

    const-string v6, "SBYTE"

    const-string v7, "UNDEFINED"

    const-string v8, "SSHORT"

    const-string v9, "SLONG"

    const-string v10, "SRATIONAL"

    const-string v11, "FLOAT"

    const-string v12, "DOUBLE"

    const-string v13, "IFD"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "LONG8"

    const-string v17, "SLONG8"

    const-string v18, "IFD8"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;->TYPE_NAMES:[Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;->TYPE_LENGTHS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x4
        -0x1
        -0x1
        0x8
        0x8
        0x8
    .end array-data
.end method
