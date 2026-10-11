package javax.imageio.plugins.tiff;

import androidx.exifinterface.media.ExifInterface;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.utils.ColorUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class BaselineTIFFTagSet extends TIFFTagSet {
    public static final int COMPRESSION_CCITT_RLE = 2;
    public static final int COMPRESSION_CCITT_T_4 = 3;
    public static final int COMPRESSION_CCITT_T_6 = 4;
    public static final int COMPRESSION_DEFLATE = 32946;
    public static final int COMPRESSION_JPEG = 7;
    public static final int COMPRESSION_LZW = 5;
    public static final int COMPRESSION_NONE = 1;
    public static final int COMPRESSION_OLD_JPEG = 6;
    public static final int COMPRESSION_PACKBITS = 32773;
    public static final int COMPRESSION_ZLIB = 8;
    public static final int EXTRA_SAMPLES_ASSOCIATED_ALPHA = 1;
    public static final int EXTRA_SAMPLES_UNASSOCIATED_ALPHA = 2;
    public static final int EXTRA_SAMPLES_UNSPECIFIED = 0;
    public static final int FILL_ORDER_LEFT_TO_RIGHT = 1;
    public static final int FILL_ORDER_RIGHT_TO_LEFT = 2;
    public static final int GRAY_RESPONSE_UNIT_HUNDREDTHS = 2;
    public static final int GRAY_RESPONSE_UNIT_HUNDRED_THOUSANDTHS = 5;
    public static final int GRAY_RESPONSE_UNIT_TENTHS = 1;
    public static final int GRAY_RESPONSE_UNIT_TEN_THOUSANDTHS = 4;
    public static final int GRAY_RESPONSE_UNIT_THOUSANDTHS = 3;
    public static final int INK_SET_CMYK = 1;
    public static final int INK_SET_NOT_CMYK = 2;
    public static final int JPEG_PROC_BASELINE = 1;
    public static final int JPEG_PROC_LOSSLESS = 14;
    public static final int NEW_SUBFILE_TYPE_REDUCED_RESOLUTION = 1;
    public static final int NEW_SUBFILE_TYPE_SINGLE_PAGE = 2;
    public static final int NEW_SUBFILE_TYPE_TRANSPARENCY = 4;
    public static final int ORIENTATION_ROW_0_BOTTOM_COLUMN_0_LEFT = 4;
    public static final int ORIENTATION_ROW_0_BOTTOM_COLUMN_0_RIGHT = 3;
    public static final int ORIENTATION_ROW_0_LEFT_COLUMN_0_BOTTOM = 8;
    public static final int ORIENTATION_ROW_0_LEFT_COLUMN_0_TOP = 5;
    public static final int ORIENTATION_ROW_0_RIGHT_COLUMN_0_BOTTOM = 7;
    public static final int ORIENTATION_ROW_0_RIGHT_COLUMN_0_TOP = 6;
    public static final int ORIENTATION_ROW_0_TOP_COLUMN_0_LEFT = 1;
    public static final int ORIENTATION_ROW_0_TOP_COLUMN_0_RIGHT = 2;
    public static final int PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO = 1;
    public static final int PHOTOMETRIC_INTERPRETATION_CIELAB = 8;
    public static final int PHOTOMETRIC_INTERPRETATION_CMYK = 5;
    public static final int PHOTOMETRIC_INTERPRETATION_ICCLAB = 9;
    public static final int PHOTOMETRIC_INTERPRETATION_PALETTE_COLOR = 3;
    public static final int PHOTOMETRIC_INTERPRETATION_RGB = 2;
    public static final int PHOTOMETRIC_INTERPRETATION_TRANSPARENCY_MASK = 4;
    public static final int PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO = 0;
    public static final int PHOTOMETRIC_INTERPRETATION_Y_CB_CR = 6;
    public static final int PLANAR_CONFIGURATION_CHUNKY = 1;
    public static final int PLANAR_CONFIGURATION_PLANAR = 2;
    public static final int PREDICTOR_HORIZONTAL_DIFFERENCING = 2;
    public static final int PREDICTOR_NONE = 1;
    public static final int RESOLUTION_UNIT_CENTIMETER = 3;
    public static final int RESOLUTION_UNIT_INCH = 2;
    public static final int RESOLUTION_UNIT_NONE = 1;
    public static final int SAMPLE_FORMAT_FLOATING_POINT = 3;
    public static final int SAMPLE_FORMAT_SIGNED_INTEGER = 2;
    public static final int SAMPLE_FORMAT_UNDEFINED = 4;
    public static final int SAMPLE_FORMAT_UNSIGNED_INTEGER = 1;
    public static final int SUBFILE_TYPE_FULL_RESOLUTION = 1;
    public static final int SUBFILE_TYPE_REDUCED_RESOLUTION = 2;
    public static final int SUBFILE_TYPE_SINGLE_PAGE = 3;
    public static final int T4_OPTIONS_2D_CODING = 1;
    public static final int T4_OPTIONS_EOL_BYTE_ALIGNED = 4;
    public static final int T4_OPTIONS_UNCOMPRESSED = 2;
    public static final int T6_OPTIONS_UNCOMPRESSED = 2;
    public static final int TAG_ARTIST = 315;
    public static final int TAG_BITS_PER_SAMPLE = 258;
    public static final int TAG_CELL_LENGTH = 265;
    public static final int TAG_CELL_WIDTH = 264;
    public static final int TAG_COLOR_MAP = 320;
    public static final int TAG_COMPRESSION = 259;
    public static final int TAG_COPYRIGHT = 33432;
    public static final int TAG_DATE_TIME = 306;
    public static final int TAG_DOCUMENT_NAME = 269;
    public static final int TAG_DOT_RANGE = 336;
    public static final int TAG_EXTRA_SAMPLES = 338;
    public static final int TAG_FILL_ORDER = 266;
    public static final int TAG_FREE_BYTE_COUNTS = 289;
    public static final int TAG_FREE_OFFSETS = 288;
    public static final int TAG_GRAY_RESPONSE_CURVE = 291;
    public static final int TAG_GRAY_RESPONSE_UNIT = 290;
    public static final int TAG_HALFTONE_HINTS = 321;
    public static final int TAG_HOST_COMPUTER = 316;
    public static final int TAG_ICC_PROFILE = 34675;
    public static final int TAG_IMAGE_DESCRIPTION = 270;
    public static final int TAG_IMAGE_LENGTH = 257;
    public static final int TAG_IMAGE_WIDTH = 256;
    public static final int TAG_INK_NAMES = 333;
    public static final int TAG_INK_SET = 332;
    public static final int TAG_JPEG_AC_TABLES = 521;
    public static final int TAG_JPEG_DC_TABLES = 520;
    public static final int TAG_JPEG_INTERCHANGE_FORMAT = 513;
    public static final int TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = 514;
    public static final int TAG_JPEG_LOSSLESS_PREDICTORS = 517;
    public static final int TAG_JPEG_POINT_TRANSFORMS = 518;
    public static final int TAG_JPEG_PROC = 512;
    public static final int TAG_JPEG_Q_TABLES = 519;
    public static final int TAG_JPEG_RESTART_INTERVAL = 515;
    public static final int TAG_JPEG_TABLES = 347;
    public static final int TAG_MAKE = 271;
    public static final int TAG_MAX_SAMPLE_VALUE = 281;
    public static final int TAG_MIN_SAMPLE_VALUE = 280;
    public static final int TAG_MODEL = 272;
    public static final int TAG_NEW_SUBFILE_TYPE = 254;
    public static final int TAG_NUMBER_OF_INKS = 334;
    public static final int TAG_ORIENTATION = 274;
    public static final int TAG_PAGE_NAME = 285;
    public static final int TAG_PAGE_NUMBER = 297;
    public static final int TAG_PHOTOMETRIC_INTERPRETATION = 262;
    public static final int TAG_PLANAR_CONFIGURATION = 284;
    public static final int TAG_PREDICTOR = 317;
    public static final int TAG_PRIMARY_CHROMATICITES = 319;
    public static final int TAG_REFERENCE_BLACK_WHITE = 532;
    public static final int TAG_RESOLUTION_UNIT = 296;
    public static final int TAG_ROWS_PER_STRIP = 278;
    public static final int TAG_SAMPLES_PER_PIXEL = 277;
    public static final int TAG_SAMPLE_FORMAT = 339;
    public static final int TAG_SOFTWARE = 305;
    public static final int TAG_STRIP_BYTE_COUNTS = 279;
    public static final int TAG_STRIP_OFFSETS = 273;
    public static final int TAG_SUBFILE_TYPE = 255;
    public static final int TAG_S_MAX_SAMPLE_VALUE = 341;
    public static final int TAG_S_MIN_SAMPLE_VALUE = 340;
    public static final int TAG_T4_OPTIONS = 292;
    public static final int TAG_T6_OPTIONS = 293;
    public static final int TAG_TARGET_PRINTER = 337;
    public static final int TAG_THRESHHOLDING = 263;
    public static final int TAG_TILE_BYTE_COUNTS = 325;
    public static final int TAG_TILE_LENGTH = 323;
    public static final int TAG_TILE_OFFSETS = 324;
    public static final int TAG_TILE_WIDTH = 322;
    public static final int TAG_TRANSFER_FUNCTION = 301;
    public static final int TAG_TRANSFER_RANGE = 342;
    public static final int TAG_WHITE_POINT = 318;
    public static final int TAG_X_POSITION = 286;
    public static final int TAG_X_RESOLUTION = 282;
    public static final int TAG_Y_CB_CR_COEFFICIENTS = 529;
    public static final int TAG_Y_CB_CR_POSITIONING = 531;
    public static final int TAG_Y_CB_CR_SUBSAMPLING = 530;
    public static final int TAG_Y_POSITION = 287;
    public static final int TAG_Y_RESOLUTION = 283;
    public static final int THRESHHOLDING_NONE = 1;
    public static final int THRESHHOLDING_ORDERED_DITHER = 2;
    public static final int THRESHHOLDING_RANDOMIZED_DITHER = 3;
    public static final int Y_CB_CR_POSITIONING_CENTERED = 1;
    public static final int Y_CB_CR_POSITIONING_COSITED = 2;

    /* renamed from: c */
    public static BaselineTIFFTagSet f97922c;

    /* renamed from: d */
    public static List<TIFFTag> f97923d;

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$a */
    /* loaded from: classes5.dex */
    public static class C17706a extends TIFFTag {
        public C17706a() {
            super(ExifInterface.TAG_ARTIST, 315, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$a0 */
    /* loaded from: classes5.dex */
    public static class C17707a0 extends TIFFTag {
        public C17707a0() {
            super(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT, 513, 16, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$a1 */
    /* loaded from: classes5.dex */
    public static class C17708a1 extends TIFFTag {
        public C17708a1() {
            super("SampleFormat", 339, 8);
            addValueName(1, "Unsigned Integer");
            addValueName(2, "Signed Integer");
            addValueName(3, "Floating Point");
            addValueName(4, BaseError.UNDEFINED);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$b */
    /* loaded from: classes5.dex */
    public static class C17709b extends TIFFTag {
        public C17709b() {
            super(ExifInterface.TAG_BITS_PER_SAMPLE, 258, 8);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$b0 */
    /* loaded from: classes5.dex */
    public static class C17710b0 extends TIFFTag {
        public C17710b0() {
            super(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 514, 16, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$b1 */
    /* loaded from: classes5.dex */
    public static class C17711b1 extends TIFFTag {
        public C17711b1() {
            super(ExifInterface.TAG_SAMPLES_PER_PIXEL, 277, 8, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$c */
    /* loaded from: classes5.dex */
    public static class C17712c extends TIFFTag {
        public C17712c() {
            super("CellLength", 265, 8, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$c0 */
    /* loaded from: classes5.dex */
    public static class C17713c0 extends TIFFTag {
        public C17713c0() {
            super("JPEGLosslessPredictors", 517, 8);
            addValueName(1, "A");
            addValueName(2, "B");
            addValueName(3, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY);
            addValueName(4, "A+B-C");
            addValueName(5, "A+((B-C)/2)");
            addValueName(6, "B+((A-C)/2)");
            addValueName(7, "(A+B)/2");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$c1 */
    /* loaded from: classes5.dex */
    public static class C17714c1 extends TIFFTag {
        public C17714c1() {
            super(ExifInterface.TAG_SOFTWARE, 305, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$d */
    /* loaded from: classes5.dex */
    public static class C17715d extends TIFFTag {
        public C17715d() {
            super("CellWidth", 264, 8, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$d0 */
    /* loaded from: classes5.dex */
    public static class C17716d0 extends TIFFTag {
        public C17716d0() {
            super("JPEGPointTransforms", 518, 8);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$d1 */
    /* loaded from: classes5.dex */
    public static class C17717d1 extends TIFFTag {
        public C17717d1() {
            super(ExifInterface.TAG_STRIP_BYTE_COUNTS, 279, 24);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$e */
    /* loaded from: classes5.dex */
    public static class C17718e extends TIFFTag {
        public C17718e() {
            super("ColorMap", 320, 8);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$e0 */
    /* loaded from: classes5.dex */
    public static class C17719e0 extends TIFFTag {
        public C17719e0() {
            super("JPEGProc", 512, 8, 1);
            addValueName(1, "Baseline sequential process");
            addValueName(14, "Lossless process with Huffman coding");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$e1 */
    /* loaded from: classes5.dex */
    public static class C17720e1 extends TIFFTag {
        public C17720e1() {
            super(ExifInterface.TAG_STRIP_OFFSETS, 273, 24);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$f */
    /* loaded from: classes5.dex */
    public static class C17721f extends TIFFTag {
        public C17721f() {
            super(ExifInterface.TAG_COMPRESSION, 259, 8, 1);
            addValueName(1, "Uncompressed");
            addValueName(2, "CCITT RLE");
            addValueName(3, "CCITT T.4");
            addValueName(4, "CCITT T.6");
            addValueName(5, "LZW");
            addValueName(6, "Old JPEG");
            addValueName(7, "JPEG");
            addValueName(8, "ZLib");
            addValueName(32773, "PackBits");
            addValueName(32946, "Deflate");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$f0 */
    /* loaded from: classes5.dex */
    public static class C17722f0 extends TIFFTag {
        public C17722f0() {
            super("JPEGQTables", 519, 16);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$f1 */
    /* loaded from: classes5.dex */
    public static class C17723f1 extends TIFFTag {
        public C17723f1() {
            super(ExifInterface.TAG_SUBFILE_TYPE, 255, 8, 1);
            addValueName(1, "FullResolution");
            addValueName(2, "ReducedResolution");
            addValueName(3, "SinglePage");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$g */
    /* loaded from: classes5.dex */
    public static class C17724g extends TIFFTag {
        public C17724g() {
            super(ExifInterface.TAG_COPYRIGHT, 33432, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$g0 */
    /* loaded from: classes5.dex */
    public static class C17725g0 extends TIFFTag {
        public C17725g0() {
            super("JPEGRestartInterval", 515, 8, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$g1 */
    /* loaded from: classes5.dex */
    public static class C17726g1 extends TIFFTag {
        public C17726g1() {
            super("T4Options", 292, 16, 1);
            addValueName(0, "Default 1DCoding");
            addValueName(1, "2DCoding");
            addValueName(2, "Uncompressed");
            addValueName(3, "2DCoding+Uncompressed");
            addValueName(4, "EOLByteAligned");
            addValueName(5, "2DCoding+EOLByteAligned");
            addValueName(6, "Uncompressed+EOLByteAligned");
            addValueName(7, "2DCoding+Uncompressed+EOLByteAligned");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$h */
    /* loaded from: classes5.dex */
    public static class C17727h extends TIFFTag {
        public C17727h() {
            super(ExifInterface.TAG_DATETIME, 306, 4, 20);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$h0 */
    /* loaded from: classes5.dex */
    public static class C17728h0 extends TIFFTag {
        public C17728h0() {
            super("JPEGTables", 347, 128);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$h1 */
    /* loaded from: classes5.dex */
    public static class C17729h1 extends TIFFTag {
        public C17729h1() {
            super("T6Options", 293, 16, 1);
            addValueName(0, "Default");
            addValueName(2, "Uncompressed");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$i */
    /* loaded from: classes5.dex */
    public static class C17730i extends TIFFTag {
        public C17730i() {
            super("DocumentName", 269, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$i0 */
    /* loaded from: classes5.dex */
    public static class C17731i0 extends TIFFTag {
        public C17731i0() {
            super(ExifInterface.TAG_MAKE, 271, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$i1 */
    /* loaded from: classes5.dex */
    public static class C17732i1 extends TIFFTag {
        public C17732i1() {
            super("TargetPrinter", 337, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$j */
    /* loaded from: classes5.dex */
    public static class C17733j extends TIFFTag {
        public C17733j() {
            super("DotRange", 336, 10);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$j0 */
    /* loaded from: classes5.dex */
    public static class C17734j0 extends TIFFTag {
        public C17734j0() {
            super("MaxSampleValue", 281, 8);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$j1 */
    /* loaded from: classes5.dex */
    public static class C17735j1 extends TIFFTag {
        public C17735j1() {
            super("Threshholding", 263, 8, 1);
            addValueName(1, "None");
            addValueName(2, "OrderedDither");
            addValueName(3, "RandomizedDither");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$k */
    /* loaded from: classes5.dex */
    public static class C17736k extends TIFFTag {
        public C17736k() {
            super("ExtraSamples", 338, 8);
            addValueName(0, "Unspecified");
            addValueName(1, "Associated Alpha");
            addValueName(2, "Unassociated Alpha");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$k0 */
    /* loaded from: classes5.dex */
    public static class C17737k0 extends TIFFTag {
        public C17737k0() {
            super("MinSampleValue", 280, 8);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$k1 */
    /* loaded from: classes5.dex */
    public static class C17738k1 extends TIFFTag {
        public C17738k1() {
            super("TileByteCounts", 325, 24);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$l */
    /* loaded from: classes5.dex */
    public static class C17739l extends TIFFTag {
        public C17739l() {
            super("FillOrder", 266, 8, 1);
            addValueName(1, "LeftToRight");
            addValueName(2, "RightToLeft");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$l0 */
    /* loaded from: classes5.dex */
    public static class C17740l0 extends TIFFTag {
        public C17740l0() {
            super("Model", 272, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$l1 */
    /* loaded from: classes5.dex */
    public static class C17741l1 extends TIFFTag {
        public C17741l1() {
            super("TileLength", 323, 24, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$m */
    /* loaded from: classes5.dex */
    public static class C17742m extends TIFFTag {
        public C17742m() {
            super("FreeByteCounts", 289, 16);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$m0 */
    /* loaded from: classes5.dex */
    public static class C17743m0 extends TIFFTag {
        public C17743m0() {
            super(ExifInterface.TAG_NEW_SUBFILE_TYPE, 254, 16, 1);
            addValueName(0, "Default");
            addValueName(1, "ReducedResolution");
            addValueName(2, "SinglePage");
            addValueName(3, "SinglePage+ReducedResolution");
            addValueName(4, "Transparency");
            addValueName(5, "Transparency+ReducedResolution");
            addValueName(6, "Transparency+SinglePage");
            addValueName(7, "Transparency+SinglePage+ReducedResolution");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$m1 */
    /* loaded from: classes5.dex */
    public static class C17744m1 extends TIFFTag {
        public C17744m1() {
            super("TileOffsets", 324, 16);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$n */
    /* loaded from: classes5.dex */
    public static class C17745n extends TIFFTag {
        public C17745n() {
            super("FreeOffsets", 288, 16);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$n0 */
    /* loaded from: classes5.dex */
    public static class C17746n0 extends TIFFTag {
        public C17746n0() {
            super("NumberOfInks", 334, 8, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$n1 */
    /* loaded from: classes5.dex */
    public static class C17747n1 extends TIFFTag {
        public C17747n1() {
            super("TileWidth", 322, 24, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$o */
    /* loaded from: classes5.dex */
    public static class C17748o extends TIFFTag {
        public C17748o() {
            super("GrayResponseCurve", 291, 8);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$o0 */
    /* loaded from: classes5.dex */
    public static class C17749o0 extends TIFFTag {
        public C17749o0() {
            super(ExifInterface.TAG_ORIENTATION, 274, 8, 1);
            addValueName(1, "Row 0=Top, Column 0=Left");
            addValueName(2, "Row 0=Top, Column 0=Right");
            addValueName(3, "Row 0=Bottom, Column 0=Right");
            addValueName(4, "Row 0=Bottom, Column 0=Left");
            addValueName(5, "Row 0=Left, Column 0=Top");
            addValueName(6, "Row 0=Right, Column 0=Top");
            addValueName(7, "Row 0=Right, Column 0=Bottom");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$o1 */
    /* loaded from: classes5.dex */
    public static class C17750o1 extends TIFFTag {
        public C17750o1() {
            super(ExifInterface.TAG_TRANSFER_FUNCTION, 301, 8);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$p */
    /* loaded from: classes5.dex */
    public static class C17751p extends TIFFTag {
        public C17751p() {
            super("GrayResponseUnit", 290, 8, 1);
            addValueName(1, "Tenths");
            addValueName(2, "Hundredths");
            addValueName(3, "Thousandths");
            addValueName(4, "Ten-Thousandths");
            addValueName(5, "Hundred-Thousandths");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$p0 */
    /* loaded from: classes5.dex */
    public static class C17752p0 extends TIFFTag {
        public C17752p0() {
            super("PageName", 285, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$p1 */
    /* loaded from: classes5.dex */
    public static class C17753p1 extends TIFFTag {
        public C17753p1() {
            super("TransferRange", 342, 8, 6);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$q */
    /* loaded from: classes5.dex */
    public static class C17754q extends TIFFTag {
        public C17754q() {
            super("HalftoneHints", 321, 8, 2);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$q0 */
    /* loaded from: classes5.dex */
    public static class C17755q0 extends TIFFTag {
        public C17755q0() {
            super("PageNumber", 297, 8);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$q1 */
    /* loaded from: classes5.dex */
    public static class C17756q1 extends TIFFTag {
        public C17756q1() {
            super(ExifInterface.TAG_WHITE_POINT, 318, 32, 2);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$r */
    /* loaded from: classes5.dex */
    public static class C17757r extends TIFFTag {
        public C17757r() {
            super("HostComputer", 316, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$r0 */
    /* loaded from: classes5.dex */
    public static class C17758r0 extends TIFFTag {
        public C17758r0() {
            super(ExifInterface.TAG_PHOTOMETRIC_INTERPRETATION, 262, 8, 1);
            addValueName(0, "WhiteIsZero");
            addValueName(1, "BlackIsZero");
            addValueName(2, ColorUtils.RGB_COLOR_START);
            addValueName(3, "Palette Color");
            addValueName(4, "Transparency Mask");
            addValueName(5, "CMYK");
            addValueName(6, "YCbCr");
            addValueName(8, "CIELAB");
            addValueName(9, "ICCLAB");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$r1 */
    /* loaded from: classes5.dex */
    public static class C17759r1 extends TIFFTag {
        public C17759r1() {
            super("XPosition", 286, 32, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$s */
    /* loaded from: classes5.dex */
    public static class C17760s extends TIFFTag {
        public C17760s() {
            super("ICC Profile", 34675, 128);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$s0 */
    /* loaded from: classes5.dex */
    public static class C17761s0 extends TIFFTag {
        public C17761s0() {
            super(ExifInterface.TAG_PLANAR_CONFIGURATION, 284, 8, 1);
            addValueName(1, "Chunky");
            addValueName(2, "Planar");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$s1 */
    /* loaded from: classes5.dex */
    public static class C17762s1 extends TIFFTag {
        public C17762s1() {
            super(ExifInterface.TAG_X_RESOLUTION, 282, 32, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$t */
    /* loaded from: classes5.dex */
    public static class C17763t extends TIFFTag {
        public C17763t() {
            super(ExifInterface.TAG_IMAGE_DESCRIPTION, 270, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$t0 */
    /* loaded from: classes5.dex */
    public static class C17764t0 extends TIFFTag {
        public C17764t0() {
            super("Predictor", 317, 8, 1);
            addValueName(1, "None");
            addValueName(2, "Horizontal Differencing");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$t1 */
    /* loaded from: classes5.dex */
    public static class C17765t1 extends TIFFTag {
        public C17765t1() {
            super(ExifInterface.TAG_Y_CB_CR_COEFFICIENTS, 529, 32, 3);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$u */
    /* loaded from: classes5.dex */
    public static class C17766u extends TIFFTag {
        public C17766u() {
            super(ExifInterface.TAG_IMAGE_LENGTH, 257, 24, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$u0 */
    /* loaded from: classes5.dex */
    public static class C17767u0 extends TIFFTag {
        public C17767u0() {
            super(ExifInterface.TAG_PRIMARY_CHROMATICITIES, 319, 32, 6);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$u1 */
    /* loaded from: classes5.dex */
    public static class C17768u1 extends TIFFTag {
        public C17768u1() {
            super(ExifInterface.TAG_Y_CB_CR_POSITIONING, 531, 8, 1);
            addValueName(1, "Centered");
            addValueName(2, "Cosited");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$v */
    /* loaded from: classes5.dex */
    public static class C17769v extends TIFFTag {
        public C17769v() {
            super(ExifInterface.TAG_IMAGE_WIDTH, 256, 24, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$v0 */
    /* loaded from: classes5.dex */
    public static class C17770v0 extends TIFFTag {
        public C17770v0() {
            super(ExifInterface.TAG_REFERENCE_BLACK_WHITE, 532, 32);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$v1 */
    /* loaded from: classes5.dex */
    public static class C17771v1 extends TIFFTag {
        public C17771v1() {
            super(ExifInterface.TAG_Y_CB_CR_SUB_SAMPLING, 530, 8, 2);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$w */
    /* loaded from: classes5.dex */
    public static class C17772w extends TIFFTag {
        public C17772w() {
            super("InkNames", 333, 4);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$w0 */
    /* loaded from: classes5.dex */
    public static class C17773w0 extends TIFFTag {
        public C17773w0() {
            super(ExifInterface.TAG_RESOLUTION_UNIT, 296, 8, 1);
            addValueName(1, "None");
            addValueName(2, "Inch");
            addValueName(3, "Centimeter");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$w1 */
    /* loaded from: classes5.dex */
    public static class C17774w1 extends TIFFTag {
        public C17774w1() {
            super("YPosition", 287, 32, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$x */
    /* loaded from: classes5.dex */
    public static class C17775x extends TIFFTag {
        public C17775x() {
            super("InkSet", 332, 8, 1);
            addValueName(1, "CMYK");
            addValueName(2, "Not CMYK");
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$x0 */
    /* loaded from: classes5.dex */
    public static class C17776x0 extends TIFFTag {
        public C17776x0() {
            super(ExifInterface.TAG_ROWS_PER_STRIP, 278, 24, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$x1 */
    /* loaded from: classes5.dex */
    public static class C17777x1 extends TIFFTag {
        public C17777x1() {
            super(ExifInterface.TAG_Y_RESOLUTION, 283, 32, 1);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$y */
    /* loaded from: classes5.dex */
    public static class C17778y extends TIFFTag {
        public C17778y() {
            super("JPEGACTables", 521, 16);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$y0 */
    /* loaded from: classes5.dex */
    public static class C17779y0 extends TIFFTag {
        public C17779y0() {
            super("SMaxSampleValue", 341, 8058);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$z */
    /* loaded from: classes5.dex */
    public static class C17780z extends TIFFTag {
        public C17780z() {
            super("JPEGDCTables", 520, 16);
        }
    }

    /* renamed from: javax.imageio.plugins.tiff.BaselineTIFFTagSet$z0 */
    /* loaded from: classes5.dex */
    public static class C17781z0 extends TIFFTag {
        public C17781z0() {
            super("SMinSampleValue", 340, 8058);
        }
    }

    private BaselineTIFFTagSet() {
        super(f97923d);
    }

    /* renamed from: a */
    public static void m61477a() {
        ArrayList arrayList = new ArrayList(76);
        f97923d = arrayList;
        arrayList.add(new C17706a());
        f97923d.add(new C17709b());
        f97923d.add(new C17712c());
        f97923d.add(new C17715d());
        f97923d.add(new C17718e());
        f97923d.add(new C17721f());
        f97923d.add(new C17724g());
        f97923d.add(new C17727h());
        f97923d.add(new C17730i());
        f97923d.add(new C17733j());
        f97923d.add(new C17736k());
        f97923d.add(new C17739l());
        f97923d.add(new C17742m());
        f97923d.add(new C17745n());
        f97923d.add(new C17748o());
        f97923d.add(new C17751p());
        f97923d.add(new C17754q());
        f97923d.add(new C17757r());
        f97923d.add(new C17763t());
        f97923d.add(new C17760s());
        f97923d.add(new C17766u());
        f97923d.add(new C17769v());
        f97923d.add(new C17772w());
        f97923d.add(new C17775x());
        f97923d.add(new C17778y());
        f97923d.add(new C17780z());
        f97923d.add(new C17707a0());
        f97923d.add(new C17710b0());
        f97923d.add(new C17713c0());
        f97923d.add(new C17716d0());
        f97923d.add(new C17719e0());
        f97923d.add(new C17722f0());
        f97923d.add(new C17725g0());
        f97923d.add(new C17728h0());
        f97923d.add(new C17731i0());
        f97923d.add(new C17734j0());
        f97923d.add(new C17737k0());
        f97923d.add(new C17740l0());
        f97923d.add(new C17743m0());
        f97923d.add(new C17746n0());
        f97923d.add(new C17749o0());
        f97923d.add(new C17752p0());
        f97923d.add(new C17755q0());
        f97923d.add(new C17758r0());
        f97923d.add(new C17761s0());
        f97923d.add(new C17764t0());
        f97923d.add(new C17767u0());
        f97923d.add(new C17770v0());
        f97923d.add(new C17773w0());
        f97923d.add(new C17776x0());
        f97923d.add(new C17708a1());
        f97923d.add(new C17711b1());
        f97923d.add(new C17779y0());
        f97923d.add(new C17781z0());
        f97923d.add(new C17714c1());
        f97923d.add(new C17717d1());
        f97923d.add(new C17720e1());
        f97923d.add(new C17723f1());
        f97923d.add(new C17726g1());
        f97923d.add(new C17729h1());
        f97923d.add(new C17732i1());
        f97923d.add(new C17735j1());
        f97923d.add(new C17738k1());
        f97923d.add(new C17744m1());
        f97923d.add(new C17741l1());
        f97923d.add(new C17747n1());
        f97923d.add(new C17750o1());
        f97923d.add(new C17753p1());
        f97923d.add(new C17756q1());
        f97923d.add(new C17759r1());
        f97923d.add(new C17762s1());
        f97923d.add(new C17765t1());
        f97923d.add(new C17768u1());
        f97923d.add(new C17771v1());
        f97923d.add(new C17774w1());
        f97923d.add(new C17777x1());
    }

    public static synchronized BaselineTIFFTagSet getInstance() {
        BaselineTIFFTagSet baselineTIFFTagSet;
        synchronized (BaselineTIFFTagSet.class) {
            if (f97922c == null) {
                m61477a();
                f97922c = new BaselineTIFFTagSet();
                f97923d = null;
            }
            baselineTIFFTagSet = f97922c;
        }
        return baselineTIFFTagSet;
    }
}
